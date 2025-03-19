package com.dao;

import com.entity.DiscusskepuwenzhangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusskepuwenzhangVO;
import com.entity.view.DiscusskepuwenzhangView;


/**
 * 科普文章评论表
 * 
 * @author 
 * @email 
 * @date 2024-04-01 11:53:28
 */
public interface DiscusskepuwenzhangDao extends BaseMapper<DiscusskepuwenzhangEntity> {
	
	List<DiscusskepuwenzhangVO> selectListVO(@Param("ew") Wrapper<DiscusskepuwenzhangEntity> wrapper);
	
	DiscusskepuwenzhangVO selectVO(@Param("ew") Wrapper<DiscusskepuwenzhangEntity> wrapper);
	
	List<DiscusskepuwenzhangView> selectListView(@Param("ew") Wrapper<DiscusskepuwenzhangEntity> wrapper);

	List<DiscusskepuwenzhangView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusskepuwenzhangEntity> wrapper);

	
	DiscusskepuwenzhangView selectView(@Param("ew") Wrapper<DiscusskepuwenzhangEntity> wrapper);
	

}
