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


import com.dao.PingguliangbiaoDao;
import com.entity.PingguliangbiaoEntity;
import com.service.PingguliangbiaoService;
import com.entity.vo.PingguliangbiaoVO;
import com.entity.view.PingguliangbiaoView;

@Service("pingguliangbiaoService")
public class PingguliangbiaoServiceImpl extends ServiceImpl<PingguliangbiaoDao, PingguliangbiaoEntity> implements PingguliangbiaoService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<PingguliangbiaoEntity> page = this.selectPage(
                new Query<PingguliangbiaoEntity>(params).getPage(),
                new EntityWrapper<PingguliangbiaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<PingguliangbiaoEntity> wrapper) {
		  Page<PingguliangbiaoView> page =new Query<PingguliangbiaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

    
    @Override
	public List<PingguliangbiaoVO> selectListVO(Wrapper<PingguliangbiaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public PingguliangbiaoVO selectVO(Wrapper<PingguliangbiaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<PingguliangbiaoView> selectListView(Wrapper<PingguliangbiaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public PingguliangbiaoView selectView(Wrapper<PingguliangbiaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
