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

import com.entity.KepuwenzhangEntity;
import com.entity.view.KepuwenzhangView;

import com.service.KepuwenzhangService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;
import java.io.IOException;
import com.service.StoreupService;
import com.entity.StoreupEntity;

/**
 * 科普文章
 * 后端接口
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
@RestController
@RequestMapping("/kepuwenzhang")
public class KepuwenzhangController {
    @Autowired
    private KepuwenzhangService kepuwenzhangService;

    @Autowired
    private StoreupService storeupService;



    



    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,KepuwenzhangEntity kepuwenzhang,
		HttpServletRequest request){
        EntityWrapper<KepuwenzhangEntity> ew = new EntityWrapper<KepuwenzhangEntity>();

		PageUtils page = kepuwenzhangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, kepuwenzhang), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,KepuwenzhangEntity kepuwenzhang, 
		HttpServletRequest request){
        EntityWrapper<KepuwenzhangEntity> ew = new EntityWrapper<KepuwenzhangEntity>();

		PageUtils page = kepuwenzhangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, kepuwenzhang), params), params));
        return R.ok().put("data", page);
    }



	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( KepuwenzhangEntity kepuwenzhang){
       	EntityWrapper<KepuwenzhangEntity> ew = new EntityWrapper<KepuwenzhangEntity>();
      	ew.allEq(MPUtil.allEQMapPre( kepuwenzhang, "kepuwenzhang")); 
        return R.ok().put("data", kepuwenzhangService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(KepuwenzhangEntity kepuwenzhang){
        EntityWrapper< KepuwenzhangEntity> ew = new EntityWrapper< KepuwenzhangEntity>();
 		ew.allEq(MPUtil.allEQMapPre( kepuwenzhang, "kepuwenzhang")); 
		KepuwenzhangView kepuwenzhangView =  kepuwenzhangService.selectView(ew);
		return R.ok("查询科普文章成功").put("data", kepuwenzhangView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        KepuwenzhangEntity kepuwenzhang = kepuwenzhangService.selectById(id);
        return R.ok().put("data", kepuwenzhang);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        KepuwenzhangEntity kepuwenzhang = kepuwenzhangService.selectById(id);
        return R.ok().put("data", kepuwenzhang);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody KepuwenzhangEntity kepuwenzhang, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(kepuwenzhang);
        kepuwenzhangService.insert(kepuwenzhang);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody KepuwenzhangEntity kepuwenzhang, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(kepuwenzhang);
        kepuwenzhangService.insert(kepuwenzhang);
        return R.ok();
    }





    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody KepuwenzhangEntity kepuwenzhang, HttpServletRequest request){
        //ValidatorUtils.validateEntity(kepuwenzhang);
        kepuwenzhangService.updateById(kepuwenzhang);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        kepuwenzhangService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	










}
