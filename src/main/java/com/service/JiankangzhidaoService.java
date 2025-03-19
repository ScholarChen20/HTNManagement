package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JiankangzhidaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JiankangzhidaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JiankangzhidaoView;


/**
 * 健康指导
 *
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
public interface JiankangzhidaoService extends IService<JiankangzhidaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiankangzhidaoVO> selectListVO(Wrapper<JiankangzhidaoEntity> wrapper);
   	
   	JiankangzhidaoVO selectVO(@Param("ew") Wrapper<JiankangzhidaoEntity> wrapper);
   	
   	List<JiankangzhidaoView> selectListView(Wrapper<JiankangzhidaoEntity> wrapper);
   	
   	JiankangzhidaoView selectView(@Param("ew") Wrapper<JiankangzhidaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiankangzhidaoEntity> wrapper);

   	

}

