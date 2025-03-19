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

import com.entity.FengxianjieguoEntity;
import com.entity.view.FengxianjieguoView;

import com.service.FengxianjieguoService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;
import java.io.IOException;

/**
 * 风险结果
 * 后端接口
 * @author 
 * @email 
 * @date 2024-04-01 11:53:27
 */
@RestController
@RequestMapping("/fengxianjieguo")
public class FengxianjieguoController {
    @Autowired
    private FengxianjieguoService fengxianjieguoService;




    



    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,FengxianjieguoEntity fengxianjieguo,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("huanzhe")) {
			fengxianjieguo.setHuanzhezhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<FengxianjieguoEntity> ew = new EntityWrapper<FengxianjieguoEntity>();

		PageUtils page = fengxianjieguoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, fengxianjieguo), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,FengxianjieguoEntity fengxianjieguo, 
		HttpServletRequest request){
        EntityWrapper<FengxianjieguoEntity> ew = new EntityWrapper<FengxianjieguoEntity>();

		PageUtils page = fengxianjieguoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, fengxianjieguo), params), params));
        return R.ok().put("data", page);
    }



	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( FengxianjieguoEntity fengxianjieguo){
       	EntityWrapper<FengxianjieguoEntity> ew = new EntityWrapper<FengxianjieguoEntity>();
      	ew.allEq(MPUtil.allEQMapPre( fengxianjieguo, "fengxianjieguo")); 
        return R.ok().put("data", fengxianjieguoService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(FengxianjieguoEntity fengxianjieguo){
        EntityWrapper< FengxianjieguoEntity> ew = new EntityWrapper< FengxianjieguoEntity>();
 		ew.allEq(MPUtil.allEQMapPre( fengxianjieguo, "fengxianjieguo")); 
		FengxianjieguoView fengxianjieguoView =  fengxianjieguoService.selectView(ew);
		return R.ok("查询风险结果成功").put("data", fengxianjieguoView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        FengxianjieguoEntity fengxianjieguo = fengxianjieguoService.selectById(id);
        return R.ok().put("data", fengxianjieguo);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        FengxianjieguoEntity fengxianjieguo = fengxianjieguoService.selectById(id);
        return R.ok().put("data", fengxianjieguo);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody FengxianjieguoEntity fengxianjieguo, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(fengxianjieguo);
        fengxianjieguoService.insert(fengxianjieguo);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody FengxianjieguoEntity fengxianjieguo, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(fengxianjieguo);
        fengxianjieguoService.insert(fengxianjieguo);
        return R.ok();
    }





    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody FengxianjieguoEntity fengxianjieguo, HttpServletRequest request){
        //ValidatorUtils.validateEntity(fengxianjieguo);
        fengxianjieguoService.updateById(fengxianjieguo);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        fengxianjieguoService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	










}
