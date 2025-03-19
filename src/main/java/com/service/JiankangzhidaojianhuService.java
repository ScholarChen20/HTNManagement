package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JiankangzhidaojianhuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JiankangzhidaojianhuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JiankangzhidaojianhuView;


/**
 * 健康指导监护
 *
 * @author 
 * @email 
 * @date 2024-04-01 11:53:27
 */
public interface JiankangzhidaojianhuService extends IService<JiankangzhidaojianhuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JiankangzhidaojianhuVO> selectListVO(Wrapper<JiankangzhidaojianhuEntity> wrapper);
   	
   	JiankangzhidaojianhuVO selectVO(@Param("ew") Wrapper<JiankangzhidaojianhuEntity> wrapper);
   	
   	List<JiankangzhidaojianhuView> selectListView(Wrapper<JiankangzhidaojianhuEntity> wrapper);
   	
   	JiankangzhidaojianhuView selectView(@Param("ew") Wrapper<JiankangzhidaojianhuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JiankangzhidaojianhuEntity> wrapper);

   	

}

