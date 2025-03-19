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

import com.entity.FengxianpingguEntity;
import com.entity.view.FengxianpingguView;

import com.service.FengxianpingguService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;
import java.io.IOException;

/**
 * 风险评估
 * 后端接口
 * @author 
 * @email 
 * @date 2024-04-01 11:53:27
 */
@RestController
@RequestMapping("/fengxianpinggu")
public class FengxianpingguController {
    @Autowired
    private FengxianpingguService fengxianpingguService;




    



    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,FengxianpingguEntity fengxianpinggu,
                @RequestParam(required = false) Double shousuoyastart,
                @RequestParam(required = false) Double shousuoyaend,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("huanzhe")) {
			fengxianpinggu.setHuanzhezhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<FengxianpingguEntity> ew = new EntityWrapper<FengxianpingguEntity>();
                if(shousuoyastart!=null) ew.ge("shousuoya", shousuoyastart);
                if(shousuoyaend!=null) ew.le("shousuoya", shousuoyaend);

		PageUtils page = fengxianpingguService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, fengxianpinggu), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,FengxianpingguEntity fengxianpinggu, 
                @RequestParam(required = false) Double shousuoyastart,
                @RequestParam(required = false) Double shousuoyaend,
		HttpServletRequest request){
        EntityWrapper<FengxianpingguEntity> ew = new EntityWrapper<FengxianpingguEntity>();
                if(shousuoyastart!=null) ew.ge("shousuoya", shousuoyastart);
                if(shousuoyaend!=null) ew.le("shousuoya", shousuoyaend);

		PageUtils page = fengxianpingguService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, fengxianpinggu), params), params));
        return R.ok().put("data", page);
    }



	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( FengxianpingguEntity fengxianpinggu){
       	EntityWrapper<FengxianpingguEntity> ew = new EntityWrapper<FengxianpingguEntity>();
      	ew.allEq(MPUtil.allEQMapPre( fengxianpinggu, "fengxianpinggu")); 
        return R.ok().put("data", fengxianpingguService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(FengxianpingguEntity fengxianpinggu){
        EntityWrapper< FengxianpingguEntity> ew = new EntityWrapper< FengxianpingguEntity>();
 		ew.allEq(MPUtil.allEQMapPre( fengxianpinggu, "fengxianpinggu")); 
		FengxianpingguView fengxianpingguView =  fengxianpingguService.selectView(ew);
		return R.ok("查询风险评估成功").put("data", fengxianpingguView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        FengxianpingguEntity fengxianpinggu = fengxianpingguService.selectById(id);
        return R.ok().put("data", fengxianpinggu);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        FengxianpingguEntity fengxianpinggu = fengxianpingguService.selectById(id);
        return R.ok().put("data", fengxianpinggu);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody FengxianpingguEntity fengxianpinggu, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(fengxianpinggu);
        fengxianpingguService.insert(fengxianpinggu);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody FengxianpingguEntity fengxianpinggu, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(fengxianpinggu);
        fengxianpingguService.insert(fengxianpinggu);
        return R.ok();
    }





    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody FengxianpingguEntity fengxianpinggu, HttpServletRequest request){
        //ValidatorUtils.validateEntity(fengxianpinggu);
        fengxianpingguService.updateById(fengxianpinggu);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        fengxianpingguService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	










}
