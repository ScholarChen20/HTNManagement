package com.dao;

import com.entity.JiankangzhidaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiankangzhidaoVO;
import com.entity.view.JiankangzhidaoView;


/**
 * 健康指导
 * 
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
public interface JiankangzhidaoDao extends BaseMapper<JiankangzhidaoEntity> {
	
	List<JiankangzhidaoVO> selectListVO(@Param("ew") Wrapper<JiankangzhidaoEntity> wrapper);
	
	JiankangzhidaoVO selectVO(@Param("ew") Wrapper<JiankangzhidaoEntity> wrapper);
	
	List<JiankangzhidaoView> selectListView(@Param("ew") Wrapper<JiankangzhidaoEntity> wrapper);

	List<JiankangzhidaoView> selectListView(Pagination page,@Param("ew") Wrapper<JiankangzhidaoEntity> wrapper);

	
	JiankangzhidaoView selectView(@Param("ew") Wrapper<JiankangzhidaoEntity> wrapper);
	

}
