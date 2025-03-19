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

import com.entity.PingguliangbiaoEntity;
import com.entity.view.PingguliangbiaoView;

import com.service.PingguliangbiaoService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;
import java.io.IOException;

/**
 * 评估量表
 * 后端接口
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
@RestController
@RequestMapping("/pingguliangbiao")
public class PingguliangbiaoController {
    @Autowired
    private PingguliangbiaoService pingguliangbiaoService;




    



    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,PingguliangbiaoEntity pingguliangbiao,
		HttpServletRequest request){
        EntityWrapper<PingguliangbiaoEntity> ew = new EntityWrapper<PingguliangbiaoEntity>();

		PageUtils page = pingguliangbiaoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, pingguliangbiao), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,PingguliangbiaoEntity pingguliangbiao, 
		HttpServletRequest request){
        EntityWrapper<PingguliangbiaoEntity> ew = new EntityWrapper<PingguliangbiaoEntity>();

		PageUtils page = pingguliangbiaoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, pingguliangbiao), params), params));
        return R.ok().put("data", page);
    }



	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( PingguliangbiaoEntity pingguliangbiao){
       	EntityWrapper<PingguliangbiaoEntity> ew = new EntityWrapper<PingguliangbiaoEntity>();
      	ew.allEq(MPUtil.allEQMapPre( pingguliangbiao, "pingguliangbiao")); 
        return R.ok().put("data", pingguliangbiaoService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(PingguliangbiaoEntity pingguliangbiao){
        EntityWrapper< PingguliangbiaoEntity> ew = new EntityWrapper< PingguliangbiaoEntity>();
 		ew.allEq(MPUtil.allEQMapPre( pingguliangbiao, "pingguliangbiao")); 
		PingguliangbiaoView pingguliangbiaoView =  pingguliangbiaoService.selectView(ew);
		return R.ok("查询评估量表成功").put("data", pingguliangbiaoView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        PingguliangbiaoEntity pingguliangbiao = pingguliangbiaoService.selectById(id);
        return R.ok().put("data", pingguliangbiao);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        PingguliangbiaoEntity pingguliangbiao = pingguliangbiaoService.selectById(id);
        return R.ok().put("data", pingguliangbiao);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody PingguliangbiaoEntity pingguliangbiao, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(pingguliangbiao);
        pingguliangbiaoService.insert(pingguliangbiao);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody PingguliangbiaoEntity pingguliangbiao, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(pingguliangbiao);
        pingguliangbiaoService.insert(pingguliangbiao);
        return R.ok();
    }





    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody PingguliangbiaoEntity pingguliangbiao, HttpServletRequest request){
        //ValidatorUtils.validateEntity(pingguliangbiao);
        pingguliangbiaoService.updateById(pingguliangbiao);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        pingguliangbiaoService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	










}
