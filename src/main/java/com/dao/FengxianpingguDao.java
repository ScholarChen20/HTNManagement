package com.dao;

import com.entity.FengxianpingguEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.FengxianpingguVO;
import com.entity.view.FengxianpingguView;


/**
 * 风险评估
 * 
 * @author 
 * @email 
 * @date 2024-04-01 11:53:27
 */
public interface FengxianpingguDao extends BaseMapper<FengxianpingguEntity> {
	
	List<FengxianpingguVO> selectListVO(@Param("ew") Wrapper<FengxianpingguEntity> wrapper);
	
	FengxianpingguVO selectVO(@Param("ew") Wrapper<FengxianpingguEntity> wrapper);
	
	List<FengxianpingguView> selectListView(@Param("ew") Wrapper<FengxianpingguEntity> wrapper);

	List<FengxianpingguView> selectListView(Pagination page,@Param("ew") Wrapper<FengxianpingguEntity> wrapper);

	
	FengxianpingguView selectView(@Param("ew") Wrapper<FengxianpingguEntity> wrapper);
	

}
