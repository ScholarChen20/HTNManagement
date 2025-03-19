package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.FengxianjieguoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.FengxianjieguoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.FengxianjieguoView;


/**
 * 风险结果
 *
 * @author 
 * @email 
 * @date 2024-04-01 11:53:27
 */
public interface FengxianjieguoService extends IService<FengxianjieguoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<FengxianjieguoVO> selectListVO(Wrapper<FengxianjieguoEntity> wrapper);
   	
   	FengxianjieguoVO selectVO(@Param("ew") Wrapper<FengxianjieguoEntity> wrapper);
   	
   	List<FengxianjieguoView> selectListView(Wrapper<FengxianjieguoEntity> wrapper);
   	
   	FengxianjieguoView selectView(@Param("ew") Wrapper<FengxianjieguoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<FengxianjieguoEntity> wrapper);

   	

}

