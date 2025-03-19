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

import com.entity.YongyaoqingkuangjianhuEntity;
import com.entity.view.YongyaoqingkuangjianhuView;

import com.service.YongyaoqingkuangjianhuService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;
import java.io.IOException;

/**
 * 用药情况监护
 * 后端接口
 * @author 
 * @email 
 * @date 2024-04-01 11:53:27
 */
@RestController
@RequestMapping("/yongyaoqingkuangjianhu")
public class YongyaoqingkuangjianhuController {
    @Autowired
    private YongyaoqingkuangjianhuService yongyaoqingkuangjianhuService;




    



    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,YongyaoqingkuangjianhuEntity yongyaoqingkuangjianhu,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yisheng")) {
			yongyaoqingkuangjianhu.setYishenggonghao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("huanzhe")) {
			yongyaoqingkuangjianhu.setHuanzhezhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<YongyaoqingkuangjianhuEntity> ew = new EntityWrapper<YongyaoqingkuangjianhuEntity>();

		PageUtils page = yongyaoqingkuangjianhuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, yongyaoqingkuangjianhu), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,YongyaoqingkuangjianhuEntity yongyaoqingkuangjianhu, 
		HttpServletRequest request){
        EntityWrapper<YongyaoqingkuangjianhuEntity> ew = new EntityWrapper<YongyaoqingkuangjianhuEntity>();

		PageUtils page = yongyaoqingkuangjianhuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, yongyaoqingkuangjianhu), params), params));
        return R.ok().put("data", page);
    }



	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( YongyaoqingkuangjianhuEntity yongyaoqingkuangjianhu){
       	EntityWrapper<YongyaoqingkuangjianhuEntity> ew = new EntityWrapper<YongyaoqingkuangjianhuEntity>();
      	ew.allEq(MPUtil.allEQMapPre( yongyaoqingkuangjianhu, "yongyaoqingkuangjianhu")); 
        return R.ok().put("data", yongyaoqingkuangjianhuService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(YongyaoqingkuangjianhuEntity yongyaoqingkuangjianhu){
        EntityWrapper< YongyaoqingkuangjianhuEntity> ew = new EntityWrapper< YongyaoqingkuangjianhuEntity>();
 		ew.allEq(MPUtil.allEQMapPre( yongyaoqingkuangjianhu, "yongyaoqingkuangjianhu")); 
		YongyaoqingkuangjianhuView yongyaoqingkuangjianhuView =  yongyaoqingkuangjianhuService.selectView(ew);
		return R.ok("查询用药情况监护成功").put("data", yongyaoqingkuangjianhuView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        YongyaoqingkuangjianhuEntity yongyaoqingkuangjianhu = yongyaoqingkuangjianhuService.selectById(id);
        return R.ok().put("data", yongyaoqingkuangjianhu);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        YongyaoqingkuangjianhuEntity yongyaoqingkuangjianhu = yongyaoqingkuangjianhuService.selectById(id);
        return R.ok().put("data", yongyaoqingkuangjianhu);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody YongyaoqingkuangjianhuEntity yongyaoqingkuangjianhu, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(yongyaoqingkuangjianhu);
        yongyaoqingkuangjianhuService.insert(yongyaoqingkuangjianhu);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody YongyaoqingkuangjianhuEntity yongyaoqingkuangjianhu, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(yongyaoqingkuangjianhu);
        yongyaoqingkuangjianhuService.insert(yongyaoqingkuangjianhu);
        return R.ok();
    }





    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody YongyaoqingkuangjianhuEntity yongyaoqingkuangjianhu, HttpServletRequest request){
        //ValidatorUtils.validateEntity(yongyaoqingkuangjianhu);
        yongyaoqingkuangjianhuService.updateById(yongyaoqingkuangjianhu);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        yongyaoqingkuangjianhuService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	










}
