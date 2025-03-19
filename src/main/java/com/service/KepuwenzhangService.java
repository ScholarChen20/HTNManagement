package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.KepuwenzhangEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.KepuwenzhangVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.KepuwenzhangView;


/**
 * 科普文章
 *
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
public interface KepuwenzhangService extends IService<KepuwenzhangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<KepuwenzhangVO> selectListVO(Wrapper<KepuwenzhangEntity> wrapper);
   	
   	KepuwenzhangVO selectVO(@Param("ew") Wrapper<KepuwenzhangEntity> wrapper);
   	
   	List<KepuwenzhangView> selectListView(Wrapper<KepuwenzhangEntity> wrapper);
   	
   	KepuwenzhangView selectView(@Param("ew") Wrapper<KepuwenzhangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<KepuwenzhangEntity> wrapper);

   	

}

