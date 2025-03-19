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

import com.entity.ZuozhenyishengEntity;
import com.entity.view.ZuozhenyishengView;

import com.service.ZuozhenyishengService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;
import java.io.IOException;

/**
 * 坐诊医生
 * 后端接口
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
@RestController
@RequestMapping("/zuozhenyisheng")
public class ZuozhenyishengController {
    @Autowired
    private ZuozhenyishengService zuozhenyishengService;




    



    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ZuozhenyishengEntity zuozhenyisheng,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yisheng")) {
			zuozhenyisheng.setYishenggonghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<ZuozhenyishengEntity> ew = new EntityWrapper<ZuozhenyishengEntity>();

		PageUtils page = zuozhenyishengService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, zuozhenyisheng), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ZuozhenyishengEntity zuozhenyisheng, 
		HttpServletRequest request){
        EntityWrapper<ZuozhenyishengEntity> ew = new EntityWrapper<ZuozhenyishengEntity>();

		PageUtils page = zuozhenyishengService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, zuozhenyisheng), params), params));
        return R.ok().put("data", page);
    }



	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ZuozhenyishengEntity zuozhenyisheng){
       	EntityWrapper<ZuozhenyishengEntity> ew = new EntityWrapper<ZuozhenyishengEntity>();
      	ew.allEq(MPUtil.allEQMapPre( zuozhenyisheng, "zuozhenyisheng")); 
        return R.ok().put("data", zuozhenyishengService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ZuozhenyishengEntity zuozhenyisheng){
        EntityWrapper< ZuozhenyishengEntity> ew = new EntityWrapper< ZuozhenyishengEntity>();
 		ew.allEq(MPUtil.allEQMapPre( zuozhenyisheng, "zuozhenyisheng")); 
		ZuozhenyishengView zuozhenyishengView =  zuozhenyishengService.selectView(ew);
		return R.ok("查询坐诊医生成功").put("data", zuozhenyishengView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ZuozhenyishengEntity zuozhenyisheng = zuozhenyishengService.selectById(id);
        return R.ok().put("data", zuozhenyisheng);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ZuozhenyishengEntity zuozhenyisheng = zuozhenyishengService.selectById(id);
        return R.ok().put("data", zuozhenyisheng);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ZuozhenyishengEntity zuozhenyisheng, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(zuozhenyisheng);
        zuozhenyishengService.insert(zuozhenyisheng);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ZuozhenyishengEntity zuozhenyisheng, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(zuozhenyisheng);
        zuozhenyishengService.insert(zuozhenyisheng);
        return R.ok();
    }





    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody ZuozhenyishengEntity zuozhenyisheng, HttpServletRequest request){
        //ValidatorUtils.validateEntity(zuozhenyisheng);
        zuozhenyishengService.updateById(zuozhenyisheng);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        zuozhenyishengService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	










}
