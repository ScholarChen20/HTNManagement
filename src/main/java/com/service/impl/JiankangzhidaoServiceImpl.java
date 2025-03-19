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


import com.dao.JiankangzhidaoDao;
import com.entity.JiankangzhidaoEntity;
import com.service.JiankangzhidaoService;
import com.entity.vo.JiankangzhidaoVO;
import com.entity.view.JiankangzhidaoView;

@Service("jiankangzhidaoService")
public class JiankangzhidaoServiceImpl extends ServiceImpl<JiankangzhidaoDao, JiankangzhidaoEntity> implements JiankangzhidaoService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiankangzhidaoEntity> page = this.selectPage(
                new Query<JiankangzhidaoEntity>(params).getPage(),
                new EntityWrapper<JiankangzhidaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiankangzhidaoEntity> wrapper) {
		  Page<JiankangzhidaoView> page =new Query<JiankangzhidaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

    
    @Override
	public List<JiankangzhidaoVO> selectListVO(Wrapper<JiankangzhidaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JiankangzhidaoVO selectVO(Wrapper<JiankangzhidaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JiankangzhidaoView> selectListView(Wrapper<JiankangzhidaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiankangzhidaoView selectView(Wrapper<JiankangzhidaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
