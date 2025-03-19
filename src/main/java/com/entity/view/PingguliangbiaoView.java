package com.entity.view;

import com.entity.PingguliangbiaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.utils.EncryptUtil;
 

/**
 * 评估量表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
@TableName("pingguliangbiao")
public class PingguliangbiaoView  extends PingguliangbiaoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public PingguliangbiaoView(){
	}
 
 	public PingguliangbiaoView(PingguliangbiaoEntity pingguliangbiaoEntity){
 	try {
			BeanUtils.copyProperties(this, pingguliangbiaoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
