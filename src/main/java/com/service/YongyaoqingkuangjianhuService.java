package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YongyaoqingkuangjianhuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YongyaoqingkuangjianhuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YongyaoqingkuangjianhuView;


/**
 * 用药情况监护
 *
 * @author 
 * @email 
 * @date 2024-04-01 11:53:27
 */
public interface YongyaoqingkuangjianhuService extends IService<YongyaoqingkuangjianhuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YongyaoqingkuangjianhuVO> selectListVO(Wrapper<YongyaoqingkuangjianhuEntity> wrapper);
   	
   	YongyaoqingkuangjianhuVO selectVO(@Param("ew") Wrapper<YongyaoqingkuangjianhuEntity> wrapper);
   	
   	List<YongyaoqingkuangjianhuView> selectListView(Wrapper<YongyaoqingkuangjianhuEntity> wrapper);
   	
   	YongyaoqingkuangjianhuView selectView(@Param("ew") Wrapper<YongyaoqingkuangjianhuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YongyaoqingkuangjianhuEntity> wrapper);

   	

}

