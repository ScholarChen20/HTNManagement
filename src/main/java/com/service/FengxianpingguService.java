package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.FengxianpingguEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.FengxianpingguVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.FengxianpingguView;


/**
 * 风险评估
 *
 * @author 
 * @email 
 * @date 2024-04-01 11:53:27
 */
public interface FengxianpingguService extends IService<FengxianpingguEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<FengxianpingguVO> selectListVO(Wrapper<FengxianpingguEntity> wrapper);
   	
   	FengxianpingguVO selectVO(@Param("ew") Wrapper<FengxianpingguEntity> wrapper);
   	
   	List<FengxianpingguView> selectListView(Wrapper<FengxianpingguEntity> wrapper);
   	
   	FengxianpingguView selectView(@Param("ew") Wrapper<FengxianpingguEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<FengxianpingguEntity> wrapper);

   	

}

