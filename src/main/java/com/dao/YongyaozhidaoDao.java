package com.dao;

import com.entity.YongyaozhidaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YongyaozhidaoVO;
import com.entity.view.YongyaozhidaoView;


/**
 * 用药指导
 * 
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
public interface YongyaozhidaoDao extends BaseMapper<YongyaozhidaoEntity> {
	
	List<YongyaozhidaoVO> selectListVO(@Param("ew") Wrapper<YongyaozhidaoEntity> wrapper);
	
	YongyaozhidaoVO selectVO(@Param("ew") Wrapper<YongyaozhidaoEntity> wrapper);
	
	List<YongyaozhidaoView> selectListView(@Param("ew") Wrapper<YongyaozhidaoEntity> wrapper);

	List<YongyaozhidaoView> selectListView(Pagination page,@Param("ew") Wrapper<YongyaozhidaoEntity> wrapper);

	
	YongyaozhidaoView selectView(@Param("ew") Wrapper<YongyaozhidaoEntity> wrapper);
	

}
