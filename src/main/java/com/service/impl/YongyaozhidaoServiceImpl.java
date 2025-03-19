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


import com.dao.YongyaozhidaoDao;
import com.entity.YongyaozhidaoEntity;
import com.service.YongyaozhidaoService;
import com.entity.vo.YongyaozhidaoVO;
import com.entity.view.YongyaozhidaoView;

@Service("yongyaozhidaoService")
public class YongyaozhidaoServiceImpl extends ServiceImpl<YongyaozhidaoDao, YongyaozhidaoEntity> implements YongyaozhidaoService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YongyaozhidaoEntity> page = this.selectPage(
                new Query<YongyaozhidaoEntity>(params).getPage(),
                new EntityWrapper<YongyaozhidaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YongyaozhidaoEntity> wrapper) {
		  Page<YongyaozhidaoView> page =new Query<YongyaozhidaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

    
    @Override
	public List<YongyaozhidaoVO> selectListVO(Wrapper<YongyaozhidaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YongyaozhidaoVO selectVO(Wrapper<YongyaozhidaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YongyaozhidaoView> selectListView(Wrapper<YongyaozhidaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YongyaozhidaoView selectView(Wrapper<YongyaozhidaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
