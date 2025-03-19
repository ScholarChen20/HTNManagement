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


import com.dao.DiscusskepuwenzhangDao;
import com.entity.DiscusskepuwenzhangEntity;
import com.service.DiscusskepuwenzhangService;
import com.entity.vo.DiscusskepuwenzhangVO;
import com.entity.view.DiscusskepuwenzhangView;

@Service("discusskepuwenzhangService")
public class DiscusskepuwenzhangServiceImpl extends ServiceImpl<DiscusskepuwenzhangDao, DiscusskepuwenzhangEntity> implements DiscusskepuwenzhangService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusskepuwenzhangEntity> page = this.selectPage(
                new Query<DiscusskepuwenzhangEntity>(params).getPage(),
                new EntityWrapper<DiscusskepuwenzhangEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusskepuwenzhangEntity> wrapper) {
		  Page<DiscusskepuwenzhangView> page =new Query<DiscusskepuwenzhangView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

    
    @Override
	public List<DiscusskepuwenzhangVO> selectListVO(Wrapper<DiscusskepuwenzhangEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusskepuwenzhangVO selectVO(Wrapper<DiscusskepuwenzhangEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusskepuwenzhangView> selectListView(Wrapper<DiscusskepuwenzhangEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusskepuwenzhangView selectView(Wrapper<DiscusskepuwenzhangEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
