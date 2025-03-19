package com.dao;

import com.entity.YongyaoqingkuangjianhuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YongyaoqingkuangjianhuVO;
import com.entity.view.YongyaoqingkuangjianhuView;


/**
 * 用药情况监护
 * 
 * @author 
 * @email 
 * @date 2024-04-01 11:53:27
 */
public interface YongyaoqingkuangjianhuDao extends BaseMapper<YongyaoqingkuangjianhuEntity> {
	
	List<YongyaoqingkuangjianhuVO> selectListVO(@Param("ew") Wrapper<YongyaoqingkuangjianhuEntity> wrapper);
	
	YongyaoqingkuangjianhuVO selectVO(@Param("ew") Wrapper<YongyaoqingkuangjianhuEntity> wrapper);
	
	List<YongyaoqingkuangjianhuView> selectListView(@Param("ew") Wrapper<YongyaoqingkuangjianhuEntity> wrapper);

	List<YongyaoqingkuangjianhuView> selectListView(Pagination page,@Param("ew") Wrapper<YongyaoqingkuangjianhuEntity> wrapper);

	
	YongyaoqingkuangjianhuView selectView(@Param("ew") Wrapper<YongyaoqingkuangjianhuEntity> wrapper);
	

}
