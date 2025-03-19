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


import com.dao.FengxianjieguoDao;
import com.entity.FengxianjieguoEntity;
import com.service.FengxianjieguoService;
import com.entity.vo.FengxianjieguoVO;
import com.entity.view.FengxianjieguoView;

@Service("fengxianjieguoService")
public class FengxianjieguoServiceImpl extends ServiceImpl<FengxianjieguoDao, FengxianjieguoEntity> implements FengxianjieguoService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<FengxianjieguoEntity> page = this.selectPage(
                new Query<FengxianjieguoEntity>(params).getPage(),
                new EntityWrapper<FengxianjieguoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<FengxianjieguoEntity> wrapper) {
		  Page<FengxianjieguoView> page =new Query<FengxianjieguoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

    
    @Override
	public List<FengxianjieguoVO> selectListVO(Wrapper<FengxianjieguoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public FengxianjieguoVO selectVO(Wrapper<FengxianjieguoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<FengxianjieguoView> selectListView(Wrapper<FengxianjieguoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public FengxianjieguoView selectView(Wrapper<FengxianjieguoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
