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

import com.entity.YongyaozhidaoEntity;
import com.entity.view.YongyaozhidaoView;

import com.service.YongyaozhidaoService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;
import java.io.IOException;

/**
 * 用药指导
 * 后端接口
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
@RestController
@RequestMapping("/yongyaozhidao")
public class YongyaozhidaoController {
    @Autowired
    private YongyaozhidaoService yongyaozhidaoService;




    



    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,YongyaozhidaoEntity yongyaozhidao,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("huanzhe")) {
			yongyaozhidao.setHuanzhezhanghao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("yisheng")) {
			yongyaozhidao.setYishenggonghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<YongyaozhidaoEntity> ew = new EntityWrapper<YongyaozhidaoEntity>();

		PageUtils page = yongyaozhidaoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, yongyaozhidao), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,YongyaozhidaoEntity yongyaozhidao, 
		HttpServletRequest request){
        EntityWrapper<YongyaozhidaoEntity> ew = new EntityWrapper<YongyaozhidaoEntity>();

		PageUtils page = yongyaozhidaoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, yongyaozhidao), params), params));
        return R.ok().put("data", page);
    }



	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( YongyaozhidaoEntity yongyaozhidao){
       	EntityWrapper<YongyaozhidaoEntity> ew = new EntityWrapper<YongyaozhidaoEntity>();
      	ew.allEq(MPUtil.allEQMapPre( yongyaozhidao, "yongyaozhidao")); 
        return R.ok().put("data", yongyaozhidaoService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(YongyaozhidaoEntity yongyaozhidao){
        EntityWrapper< YongyaozhidaoEntity> ew = new EntityWrapper< YongyaozhidaoEntity>();
 		ew.allEq(MPUtil.allEQMapPre( yongyaozhidao, "yongyaozhidao")); 
		YongyaozhidaoView yongyaozhidaoView =  yongyaozhidaoService.selectView(ew);
		return R.ok("查询用药指导成功").put("data", yongyaozhidaoView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        YongyaozhidaoEntity yongyaozhidao = yongyaozhidaoService.selectById(id);
        return R.ok().put("data", yongyaozhidao);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        YongyaozhidaoEntity yongyaozhidao = yongyaozhidaoService.selectById(id);
        return R.ok().put("data", yongyaozhidao);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody YongyaozhidaoEntity yongyaozhidao, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(yongyaozhidao);
        yongyaozhidaoService.insert(yongyaozhidao);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody YongyaozhidaoEntity yongyaozhidao, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(yongyaozhidao);
        yongyaozhidaoService.insert(yongyaozhidao);
        return R.ok();
    }





    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody YongyaozhidaoEntity yongyaozhidao, HttpServletRequest request){
        //ValidatorUtils.validateEntity(yongyaozhidao);
        yongyaozhidaoService.updateById(yongyaozhidao);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        yongyaozhidaoService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	










}
