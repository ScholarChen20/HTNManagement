package com.dao;

import com.entity.KepuwenzhangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.KepuwenzhangVO;
import com.entity.view.KepuwenzhangView;


/**
 * 科普文章
 * 
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
public interface KepuwenzhangDao extends BaseMapper<KepuwenzhangEntity> {
	
	List<KepuwenzhangVO> selectListVO(@Param("ew") Wrapper<KepuwenzhangEntity> wrapper);
	
	KepuwenzhangVO selectVO(@Param("ew") Wrapper<KepuwenzhangEntity> wrapper);
	
	List<KepuwenzhangView> selectListView(@Param("ew") Wrapper<KepuwenzhangEntity> wrapper);

	List<KepuwenzhangView> selectListView(Pagination page,@Param("ew") Wrapper<KepuwenzhangEntity> wrapper);

	
	KepuwenzhangView selectView(@Param("ew") Wrapper<KepuwenzhangEntity> wrapper);
	

}
