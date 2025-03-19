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


import com.dao.ZuozhenyishengDao;
import com.entity.ZuozhenyishengEntity;
import com.service.ZuozhenyishengService;
import com.entity.vo.ZuozhenyishengVO;
import com.entity.view.ZuozhenyishengView;

@Service("zuozhenyishengService")
public class ZuozhenyishengServiceImpl extends ServiceImpl<ZuozhenyishengDao, ZuozhenyishengEntity> implements ZuozhenyishengService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZuozhenyishengEntity> page = this.selectPage(
                new Query<ZuozhenyishengEntity>(params).getPage(),
                new EntityWrapper<ZuozhenyishengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZuozhenyishengEntity> wrapper) {
		  Page<ZuozhenyishengView> page =new Query<ZuozhenyishengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

    
    @Override
	public List<ZuozhenyishengVO> selectListVO(Wrapper<ZuozhenyishengEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZuozhenyishengVO selectVO(Wrapper<ZuozhenyishengEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZuozhenyishengView> selectListView(Wrapper<ZuozhenyishengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZuozhenyishengView selectView(Wrapper<ZuozhenyishengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
