package com.dao;

import com.entity.FengxianjieguoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.FengxianjieguoVO;
import com.entity.view.FengxianjieguoView;


/**
 * 风险结果
 * 
 * @author 
 * @email 
 * @date 2024-04-01 11:53:27
 */
public interface FengxianjieguoDao extends BaseMapper<FengxianjieguoEntity> {
	
	List<FengxianjieguoVO> selectListVO(@Param("ew") Wrapper<FengxianjieguoEntity> wrapper);
	
	FengxianjieguoVO selectVO(@Param("ew") Wrapper<FengxianjieguoEntity> wrapper);
	
	List<FengxianjieguoView> selectListView(@Param("ew") Wrapper<FengxianjieguoEntity> wrapper);

	List<FengxianjieguoView> selectListView(Pagination page,@Param("ew") Wrapper<FengxianjieguoEntity> wrapper);

	
	FengxianjieguoView selectView(@Param("ew") Wrapper<FengxianjieguoEntity> wrapper);
	

}
