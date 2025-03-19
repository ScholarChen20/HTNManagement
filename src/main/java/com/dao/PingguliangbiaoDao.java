package com.dao;

import com.entity.PingguliangbiaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.PingguliangbiaoVO;
import com.entity.view.PingguliangbiaoView;


/**
 * 评估量表
 * 
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
public interface PingguliangbiaoDao extends BaseMapper<PingguliangbiaoEntity> {
	
	List<PingguliangbiaoVO> selectListVO(@Param("ew") Wrapper<PingguliangbiaoEntity> wrapper);
	
	PingguliangbiaoVO selectVO(@Param("ew") Wrapper<PingguliangbiaoEntity> wrapper);
	
	List<PingguliangbiaoView> selectListView(@Param("ew") Wrapper<PingguliangbiaoEntity> wrapper);

	List<PingguliangbiaoView> selectListView(Pagination page,@Param("ew") Wrapper<PingguliangbiaoEntity> wrapper);

	
	PingguliangbiaoView selectView(@Param("ew") Wrapper<PingguliangbiaoEntity> wrapper);
	

}
