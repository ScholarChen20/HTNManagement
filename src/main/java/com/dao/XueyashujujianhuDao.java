package com.dao;

import com.entity.XueyashujujianhuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XueyashujujianhuVO;
import com.entity.view.XueyashujujianhuView;


/**
 * 血压数据监护
 * 
 * @author 
 * @email 
 * @date 2024-04-01 11:53:27
 */
public interface XueyashujujianhuDao extends BaseMapper<XueyashujujianhuEntity> {
	
	List<XueyashujujianhuVO> selectListVO(@Param("ew") Wrapper<XueyashujujianhuEntity> wrapper);
	
	XueyashujujianhuVO selectVO(@Param("ew") Wrapper<XueyashujujianhuEntity> wrapper);
	
	List<XueyashujujianhuView> selectListView(@Param("ew") Wrapper<XueyashujujianhuEntity> wrapper);

	List<XueyashujujianhuView> selectListView(Pagination page,@Param("ew") Wrapper<XueyashujujianhuEntity> wrapper);

	
	XueyashujujianhuView selectView(@Param("ew") Wrapper<XueyashujujianhuEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<XueyashujujianhuEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<XueyashujujianhuEntity> wrapper);

    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<XueyashujujianhuEntity> wrapper);



}
