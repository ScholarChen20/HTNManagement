package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XueyashujujianhuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XueyashujujianhuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XueyashujujianhuView;


/**
 * 血压数据监护
 *
 * @author 
 * @email 
 * @date 2024-04-01 11:53:27
 */
public interface XueyashujujianhuService extends IService<XueyashujujianhuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XueyashujujianhuVO> selectListVO(Wrapper<XueyashujujianhuEntity> wrapper);
   	
   	XueyashujujianhuVO selectVO(@Param("ew") Wrapper<XueyashujujianhuEntity> wrapper);
   	
   	List<XueyashujujianhuView> selectListView(Wrapper<XueyashujujianhuEntity> wrapper);
   	
   	XueyashujujianhuView selectView(@Param("ew") Wrapper<XueyashujujianhuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XueyashujujianhuEntity> wrapper);

   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<XueyashujujianhuEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<XueyashujujianhuEntity> wrapper);

    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<XueyashujujianhuEntity> wrapper);



}

