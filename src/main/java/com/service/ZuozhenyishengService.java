package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZuozhenyishengEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZuozhenyishengVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZuozhenyishengView;


/**
 * 坐诊医生
 *
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
public interface ZuozhenyishengService extends IService<ZuozhenyishengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZuozhenyishengVO> selectListVO(Wrapper<ZuozhenyishengEntity> wrapper);
   	
   	ZuozhenyishengVO selectVO(@Param("ew") Wrapper<ZuozhenyishengEntity> wrapper);
   	
   	List<ZuozhenyishengView> selectListView(Wrapper<ZuozhenyishengEntity> wrapper);
   	
   	ZuozhenyishengView selectView(@Param("ew") Wrapper<ZuozhenyishengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZuozhenyishengEntity> wrapper);

   	

}

