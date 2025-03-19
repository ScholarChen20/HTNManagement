package com.dao;

import com.entity.ZuozhenyishengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZuozhenyishengVO;
import com.entity.view.ZuozhenyishengView;


/**
 * 坐诊医生
 * 
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
public interface ZuozhenyishengDao extends BaseMapper<ZuozhenyishengEntity> {
	
	List<ZuozhenyishengVO> selectListVO(@Param("ew") Wrapper<ZuozhenyishengEntity> wrapper);
	
	ZuozhenyishengVO selectVO(@Param("ew") Wrapper<ZuozhenyishengEntity> wrapper);
	
	List<ZuozhenyishengView> selectListView(@Param("ew") Wrapper<ZuozhenyishengEntity> wrapper);

	List<ZuozhenyishengView> selectListView(Pagination page,@Param("ew") Wrapper<ZuozhenyishengEntity> wrapper);

	
	ZuozhenyishengView selectView(@Param("ew") Wrapper<ZuozhenyishengEntity> wrapper);
	

}
