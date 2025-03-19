package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.HuanzheEntity;
import com.entity.view.HuanzheView;

import com.service.HuanzheService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;
import java.io.IOException;
import com.entity.WxLoginParam;
import com.utils.WechatUtil;
import org.apache.commons.codec.digest.DigestUtils;

/**
 * 患者
 * 后端接口
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
@RestController
@RequestMapping("/huanzhe")
public class HuanzheController {
    @Autowired
    private HuanzheService huanzheService;




    
	@Autowired
	private TokenService tokenService;
	
	/**
	 * 登录
	 */
	@IgnoreAuth
	@RequestMapping(value = "/login")
	public R login(String username, String password, String captcha, HttpServletRequest request) {
		HuanzheEntity u = huanzheService.selectOne(new EntityWrapper<HuanzheEntity>().eq("huanzhezhanghao", username));
		if(u==null || !u.getMima().equals(password)) {
			return R.error("账号或密码不正确");
		}
		
		String token = tokenService.generateToken(u.getId(), username,"huanzhe",  "患者" );
		return R.ok().put("token", token);
	}


    /**
     * 微信登录
     */
    @RequestMapping(value = "/wx/login")
    @IgnoreAuth
    public R wxLogin(@RequestBody WxLoginParam param) {
        String token = null;
        // 1.接收小程序发送的code
        // 2.开发者服务器 登录凭证校验接口 appi + appsecret + code
        com.alibaba.fastjson.JSONObject SessionKeyOpenId = WechatUtil.getSessionKeyOrOpenId(param.getCode());

        // 3.接收微信接口服务  获取返回的参数
        String openId = SessionKeyOpenId.getString("openid");
        String sessionKey = SessionKeyOpenId.getString("session_key");

        if (StringUtils.isBlank(openId) && StringUtils.isBlank(sessionKey)) {
            return R.error("接口请求失败！");
        }

        com.alibaba.fastjson.JSONObject object = WechatUtil.getUserInfo(param.getEncryptedData(), sessionKey, param.getIv());
        System.out.println(com.alibaba.fastjson.JSONObject.toJSONString(object));
        
        // 4.校验签名 小程序发送的签名signature与服务器端生成的签名signature2 = sha1(rawData + sessionKey)
        String signature2 = DigestUtils.sha1Hex(param.getRawData() + sessionKey);
        if (!param.getSignature().equals(signature2)) {
            return R.error("签名校验失败");
        }

        HuanzheEntity user = huanzheService.selectOne(new EntityWrapper<HuanzheEntity>().eq("openid", openId));
        if (user == null) {
            return R.error("请登录账号绑定微信后再进行微信登录。");
        } else {
            //已绑定，登录成功
            token = tokenService.generateToken(user.getId(), user.getHuanzhezhanghao(),"huanzhe", "患者");
        }
        
        return R.ok().put("token", token);
    }
    
    /**
     * 微信账号绑定
     */
    @RequestMapping(value = "/wx/bind")
    public R wxBind(@RequestBody WxLoginParam param , HttpServletRequest request){
        // 1.接收小程序发送的code
        // 2.开发者服务器 登录凭证校验接口 appi + appsecret + code
        com.alibaba.fastjson.JSONObject SessionKeyOpenId = WechatUtil.getSessionKeyOrOpenId(param.getCode());

        // 3.接收微信接口服务  获取返回的参数
        String openId = SessionKeyOpenId.getString("openid");
        String sessionKey = SessionKeyOpenId.getString("session_key");

        if (StringUtils.isBlank(openId) && StringUtils.isBlank(sessionKey)) {
            return R.error("接口请求失败！");
        }

        com.alibaba.fastjson.JSONObject object = WechatUtil.getUserInfo(param.getEncryptedData(), sessionKey, param.getIv());
        System.out.println(com.alibaba.fastjson.JSONObject.toJSONString(object));
        
        // 4.校验签名 小程序发送的签名signature与服务器端生成的签名signature2 = sha1(rawData + sessionKey)
        String signature2 = DigestUtils.sha1Hex(param.getRawData() + sessionKey);
        if (!param.getSignature().equals(signature2)) {
            return R.error("签名校验失败");
        }
        String rawData = param.getRawData();
        com.alibaba.fastjson.JSONObject rawDataJson = com.alibaba.fastjson.JSON.parseObject(rawData);
        HuanzheEntity user = huanzheService.selectOne(new EntityWrapper<HuanzheEntity>().eq("openid", openId));
        if (user == null) {
            Long id = (Long)request.getSession().getAttribute("userId");
            user = huanzheService.selectById(id);
            if(user!=null) {
                user.setOpenid(openId);
                user.setNickname(rawDataJson.getString("nickName"));
                user.setAvatarurl(rawDataJson.getString("avatarUrl"));
            }
            huanzheService.updateById(user);
        } else {
            return R.error("账号已被绑定");
        }
        return R.ok("绑定成功");
    }
    
    /**
     * 微信账号解绑
     */
    @RequestMapping(value = "/wx/unbind")
    public R wxUnbind(HttpServletRequest request){
        Long id = (Long)request.getSession().getAttribute("userId");
        HuanzheEntity user = huanzheService.selectById(id);
        if(StringUtils.isNotBlank(user.getOpenid())) {
            user.setOpenid("");
            user.setNickname("");
            user.setAvatarurl("");
        } else {
            return R.error("账号已解绑");
        }
        huanzheService.updateById(user);
        return R.ok("解绑成功");
    }
	
	/**
     * 注册
     */
	@IgnoreAuth
    @RequestMapping("/register")
    public R register(@RequestBody HuanzheEntity huanzhe){
    	//ValidatorUtils.validateEntity(huanzhe);
    	HuanzheEntity u = huanzheService.selectOne(new EntityWrapper<HuanzheEntity>().eq("huanzhezhanghao", huanzhe.getHuanzhezhanghao()));
		if(u!=null) {
			return R.error("注册用户已存在");
		}
		Long uId = new Date().getTime();
		huanzhe.setId(uId);
        huanzheService.insert(huanzhe);
        return R.ok();
    }

	
	/**
	 * 退出
	 */
	@RequestMapping("/logout")
	public R logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return R.ok("退出成功");
	}
	
	/**
     * 获取用户的session用户信息
     */
    @RequestMapping("/session")
    public R getCurrUser(HttpServletRequest request){
    	Long id = (Long)request.getSession().getAttribute("userId");
        HuanzheEntity u = huanzheService.selectById(id);
        return R.ok().put("data", u);
    }
    
    /**
     * 密码重置
     */
    @IgnoreAuth
	@RequestMapping(value = "/resetPass")
    public R resetPass(String username, HttpServletRequest request){
    	HuanzheEntity u = huanzheService.selectOne(new EntityWrapper<HuanzheEntity>().eq("huanzhezhanghao", username));
    	if(u==null) {
    		return R.error("账号不存在");
    	}
        u.setMima("123456");
        huanzheService.updateById(u);
        return R.ok("密码已重置为：123456");
    }



    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,HuanzheEntity huanzhe,
		HttpServletRequest request){
        EntityWrapper<HuanzheEntity> ew = new EntityWrapper<HuanzheEntity>();

		PageUtils page = huanzheService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, huanzhe), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,HuanzheEntity huanzhe, 
		HttpServletRequest request){
        EntityWrapper<HuanzheEntity> ew = new EntityWrapper<HuanzheEntity>();

		PageUtils page = huanzheService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, huanzhe), params), params));
        return R.ok().put("data", page);
    }



	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( HuanzheEntity huanzhe){
       	EntityWrapper<HuanzheEntity> ew = new EntityWrapper<HuanzheEntity>();
      	ew.allEq(MPUtil.allEQMapPre( huanzhe, "huanzhe")); 
        return R.ok().put("data", huanzheService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(HuanzheEntity huanzhe){
        EntityWrapper< HuanzheEntity> ew = new EntityWrapper< HuanzheEntity>();
 		ew.allEq(MPUtil.allEQMapPre( huanzhe, "huanzhe")); 
		HuanzheView huanzheView =  huanzheService.selectView(ew);
		return R.ok("查询患者成功").put("data", huanzheView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        HuanzheEntity huanzhe = huanzheService.selectById(id);
        return R.ok().put("data", huanzhe);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        HuanzheEntity huanzhe = huanzheService.selectById(id);
        return R.ok().put("data", huanzhe);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody HuanzheEntity huanzhe, HttpServletRequest request){
        if(huanzheService.selectCount(new EntityWrapper<HuanzheEntity>().eq("huanzhezhanghao", huanzhe.getHuanzhezhanghao()))>0) {
            return R.error("患者账号已存在");
        }
    	huanzhe.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(huanzhe);
    	HuanzheEntity u = huanzheService.selectOne(new EntityWrapper<HuanzheEntity>().eq("huanzhezhanghao", huanzhe.getHuanzhezhanghao()));
		if(u!=null) {
			return R.error("用户已存在");
		}
		huanzhe.setId(new Date().getTime());
        huanzheService.insert(huanzhe);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody HuanzheEntity huanzhe, HttpServletRequest request){
        if(huanzheService.selectCount(new EntityWrapper<HuanzheEntity>().eq("huanzhezhanghao", huanzhe.getHuanzhezhanghao()))>0) {
            return R.error("患者账号已存在");
        }
    	huanzhe.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(huanzhe);
    	HuanzheEntity u = huanzheService.selectOne(new EntityWrapper<HuanzheEntity>().eq("huanzhezhanghao", huanzhe.getHuanzhezhanghao()));
		if(u!=null) {
			return R.error("用户已存在");
		}
		huanzhe.setId(new Date().getTime());
        huanzheService.insert(huanzhe);
        return R.ok();
    }





    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody HuanzheEntity huanzhe, HttpServletRequest request){
        //ValidatorUtils.validateEntity(huanzhe);
        if(huanzheService.selectCount(new EntityWrapper<HuanzheEntity>().ne("id", huanzhe.getId()).eq("huanzhezhanghao", huanzhe.getHuanzhezhanghao()))>0) {
            return R.error("患者账号已存在");
        }
        huanzheService.updateById(huanzhe);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        huanzheService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	










}
