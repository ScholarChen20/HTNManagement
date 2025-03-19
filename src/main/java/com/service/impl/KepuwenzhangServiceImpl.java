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


import com.dao.KepuwenzhangDao;
import com.entity.KepuwenzhangEntity;
import com.service.KepuwenzhangService;
import com.entity.vo.KepuwenzhangVO;
import com.entity.view.KepuwenzhangView;

@Service("kepuwenzhangService")
public class KepuwenzhangServiceImpl extends ServiceImpl<KepuwenzhangDao, KepuwenzhangEntity> implements KepuwenzhangService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<KepuwenzhangEntity> page = this.selectPage(
                new Query<KepuwenzhangEntity>(params).getPage(),
                new EntityWrapper<KepuwenzhangEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<KepuwenzhangEntity> wrapper) {
		  Page<KepuwenzhangView> page =new Query<KepuwenzhangView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

    
    @Override
	public List<KepuwenzhangVO> selectListVO(Wrapper<KepuwenzhangEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public KepuwenzhangVO selectVO(Wrapper<KepuwenzhangEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<KepuwenzhangView> selectListView(Wrapper<KepuwenzhangEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public KepuwenzhangView selectView(Wrapper<KepuwenzhangEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
