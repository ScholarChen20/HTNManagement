package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.YongyaoqingkuangjianhuDao;
import com.entity.YongyaoqingkuangjianhuEntity;
import com.service.YongyaoqingkuangjianhuService;
import com.entity.vo.YongyaoqingkuangjianhuVO;
import com.entity.view.YongyaoqingkuangjianhuView;

@Service("yongyaoqingkuangjianhuService")
public class YongyaoqingkuangjianhuServiceImpl extends ServiceImpl<YongyaoqingkuangjianhuDao, YongyaoqingkuangjianhuEntity> implements YongyaoqingkuangjianhuService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YongyaoqingkuangjianhuEntity> page = this.selectPage(
                new Query<YongyaoqingkuangjianhuEntity>(params).getPage(),
                new EntityWrapper<YongyaoqingkuangjianhuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YongyaoqingkuangjianhuEntity> wrapper) {
		  Page<YongyaoqingkuangjianhuView> page =new Query<YongyaoqingkuangjianhuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

    
    @Override
	public List<YongyaoqingkuangjianhuVO> selectListVO(Wrapper<YongyaoqingkuangjianhuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YongyaoqingkuangjianhuVO selectVO(Wrapper<YongyaoqingkuangjianhuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YongyaoqingkuangjianhuView> selectListView(Wrapper<YongyaoqingkuangjianhuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YongyaoqingkuangjianhuView selectView(Wrapper<YongyaoqingkuangjianhuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
