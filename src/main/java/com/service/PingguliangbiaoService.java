package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.PingguliangbiaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.PingguliangbiaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.PingguliangbiaoView;


/**
 * 评估量表
 *
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
public interface PingguliangbiaoService extends IService<PingguliangbiaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<PingguliangbiaoVO> selectListVO(Wrapper<PingguliangbiaoEntity> wrapper);
   	
   	PingguliangbiaoVO selectVO(@Param("ew") Wrapper<PingguliangbiaoEntity> wrapper);
   	
   	List<PingguliangbiaoView> selectListView(Wrapper<PingguliangbiaoEntity> wrapper);
   	
   	PingguliangbiaoView selectView(@Param("ew") Wrapper<PingguliangbiaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<PingguliangbiaoEntity> wrapper);

   	

}

