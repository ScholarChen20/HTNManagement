package com.dao;

import com.entity.JiankangzhidaojianhuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiankangzhidaojianhuVO;
import com.entity.view.JiankangzhidaojianhuView;


/**
 * 健康指导监护
 * 
 * @author 
 * @email 
 * @date 2024-04-01 11:53:27
 */
public interface JiankangzhidaojianhuDao extends BaseMapper<JiankangzhidaojianhuEntity> {
	
	List<JiankangzhidaojianhuVO> selectListVO(@Param("ew") Wrapper<JiankangzhidaojianhuEntity> wrapper);
	
	JiankangzhidaojianhuVO selectVO(@Param("ew") Wrapper<JiankangzhidaojianhuEntity> wrapper);
	
	List<JiankangzhidaojianhuView> selectListView(@Param("ew") Wrapper<JiankangzhidaojianhuEntity> wrapper);

	List<JiankangzhidaojianhuView> selectListView(Pagination page,@Param("ew") Wrapper<JiankangzhidaojianhuEntity> wrapper);

	
	JiankangzhidaojianhuView selectView(@Param("ew") Wrapper<JiankangzhidaojianhuEntity> wrapper);
	

}
