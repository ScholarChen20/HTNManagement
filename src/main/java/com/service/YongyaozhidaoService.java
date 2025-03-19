package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YongyaozhidaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YongyaozhidaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YongyaozhidaoView;


/**
 * 用药指导
 *
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
public interface YongyaozhidaoService extends IService<YongyaozhidaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YongyaozhidaoVO> selectListVO(Wrapper<YongyaozhidaoEntity> wrapper);
   	
   	YongyaozhidaoVO selectVO(@Param("ew") Wrapper<YongyaozhidaoEntity> wrapper);
   	
   	List<YongyaozhidaoView> selectListView(Wrapper<YongyaozhidaoEntity> wrapper);
   	
   	YongyaozhidaoView selectView(@Param("ew") Wrapper<YongyaozhidaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YongyaozhidaoEntity> wrapper);

   	

}

