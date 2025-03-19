package com.entity.view;

import com.entity.YongyaozhidaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.utils.EncryptUtil;
 

/**
 * 用药指导
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
@TableName("yongyaozhidao")
public class YongyaozhidaoView  extends YongyaozhidaoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YongyaozhidaoView(){
	}
 
 	public YongyaozhidaoView(YongyaozhidaoEntity yongyaozhidaoEntity){
 	try {
			BeanUtils.copyProperties(this, yongyaozhidaoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
