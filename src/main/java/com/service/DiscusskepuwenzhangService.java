package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusskepuwenzhangEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusskepuwenzhangVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusskepuwenzhangView;


/**
 * 科普文章评论表
 *
 * @author 
 * @email 
 * @date 2024-04-01 11:53:28
 */
public interface DiscusskepuwenzhangService extends IService<DiscusskepuwenzhangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusskepuwenzhangVO> selectListVO(Wrapper<DiscusskepuwenzhangEntity> wrapper);
   	
   	DiscusskepuwenzhangVO selectVO(@Param("ew") Wrapper<DiscusskepuwenzhangEntity> wrapper);
   	
   	List<DiscusskepuwenzhangView> selectListView(Wrapper<DiscusskepuwenzhangEntity> wrapper);
   	
   	DiscusskepuwenzhangView selectView(@Param("ew") Wrapper<DiscusskepuwenzhangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusskepuwenzhangEntity> wrapper);

   	

}

