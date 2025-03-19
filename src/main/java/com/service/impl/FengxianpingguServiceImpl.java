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


import com.dao.FengxianpingguDao;
import com.entity.FengxianpingguEntity;
import com.service.FengxianpingguService;
import com.entity.vo.FengxianpingguVO;
import com.entity.view.FengxianpingguView;

@Service("fengxianpingguService")
public class FengxianpingguServiceImpl extends ServiceImpl<FengxianpingguDao, FengxianpingguEntity> implements FengxianpingguService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<FengxianpingguEntity> page = this.selectPage(
                new Query<FengxianpingguEntity>(params).getPage(),
                new EntityWrapper<FengxianpingguEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<FengxianpingguEntity> wrapper) {
		  Page<FengxianpingguView> page =new Query<FengxianpingguView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

    
    @Override
	public List<FengxianpingguVO> selectListVO(Wrapper<FengxianpingguEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public FengxianpingguVO selectVO(Wrapper<FengxianpingguEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<FengxianpingguView> selectListView(Wrapper<FengxianpingguEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public FengxianpingguView selectView(Wrapper<FengxianpingguEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
