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

import com.entity.JiankangzhidaoEntity;
import com.entity.view.JiankangzhidaoView;

import com.service.JiankangzhidaoService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;
import java.io.IOException;

/**
 * 健康指导
 * 后端接口
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
@RestController
@RequestMapping("/jiankangzhidao")
public class JiankangzhidaoController {
    @Autowired
    private JiankangzhidaoService jiankangzhidaoService;




    



    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,JiankangzhidaoEntity jiankangzhidao,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("huanzhe")) {
			jiankangzhidao.setHuanzhezhanghao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("yisheng")) {
			jiankangzhidao.setYishenggonghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<JiankangzhidaoEntity> ew = new EntityWrapper<JiankangzhidaoEntity>();

		PageUtils page = jiankangzhidaoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, jiankangzhidao), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,JiankangzhidaoEntity jiankangzhidao, 
		HttpServletRequest request){
        EntityWrapper<JiankangzhidaoEntity> ew = new EntityWrapper<JiankangzhidaoEntity>();

		PageUtils page = jiankangzhidaoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, jiankangzhidao), params), params));
        return R.ok().put("data", page);
    }



	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( JiankangzhidaoEntity jiankangzhidao){
       	EntityWrapper<JiankangzhidaoEntity> ew = new EntityWrapper<JiankangzhidaoEntity>();
      	ew.allEq(MPUtil.allEQMapPre( jiankangzhidao, "jiankangzhidao")); 
        return R.ok().put("data", jiankangzhidaoService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(JiankangzhidaoEntity jiankangzhidao){
        EntityWrapper< JiankangzhidaoEntity> ew = new EntityWrapper< JiankangzhidaoEntity>();
 		ew.allEq(MPUtil.allEQMapPre( jiankangzhidao, "jiankangzhidao")); 
		JiankangzhidaoView jiankangzhidaoView =  jiankangzhidaoService.selectView(ew);
		return R.ok("查询健康指导成功").put("data", jiankangzhidaoView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        JiankangzhidaoEntity jiankangzhidao = jiankangzhidaoService.selectById(id);
        return R.ok().put("data", jiankangzhidao);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        JiankangzhidaoEntity jiankangzhidao = jiankangzhidaoService.selectById(id);
        return R.ok().put("data", jiankangzhidao);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody JiankangzhidaoEntity jiankangzhidao, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(jiankangzhidao);
        jiankangzhidaoService.insert(jiankangzhidao);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody JiankangzhidaoEntity jiankangzhidao, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(jiankangzhidao);
        jiankangzhidaoService.insert(jiankangzhidao);
        return R.ok();
    }





    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody JiankangzhidaoEntity jiankangzhidao, HttpServletRequest request){
        //ValidatorUtils.validateEntity(jiankangzhidao);
        jiankangzhidaoService.updateById(jiankangzhidao);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        jiankangzhidaoService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	










}
