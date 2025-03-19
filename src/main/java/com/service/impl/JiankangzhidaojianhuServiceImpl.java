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


import com.dao.JiankangzhidaojianhuDao;
import com.entity.JiankangzhidaojianhuEntity;
import com.service.JiankangzhidaojianhuService;
import com.entity.vo.JiankangzhidaojianhuVO;
import com.entity.view.JiankangzhidaojianhuView;

@Service("jiankangzhidaojianhuService")
public class JiankangzhidaojianhuServiceImpl extends ServiceImpl<JiankangzhidaojianhuDao, JiankangzhidaojianhuEntity> implements JiankangzhidaojianhuService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiankangzhidaojianhuEntity> page = this.selectPage(
                new Query<JiankangzhidaojianhuEntity>(params).getPage(),
                new EntityWrapper<JiankangzhidaojianhuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiankangzhidaojianhuEntity> wrapper) {
		  Page<JiankangzhidaojianhuView> page =new Query<JiankangzhidaojianhuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

    
    @Override
	public List<JiankangzhidaojianhuVO> selectListVO(Wrapper<JiankangzhidaojianhuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JiankangzhidaojianhuVO selectVO(Wrapper<JiankangzhidaojianhuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JiankangzhidaojianhuView> selectListView(Wrapper<JiankangzhidaojianhuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiankangzhidaojianhuView selectView(Wrapper<JiankangzhidaojianhuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
