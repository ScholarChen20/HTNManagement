package com.entity.view;

import com.entity.YongyaoqingkuangjianhuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.utils.EncryptUtil;
 

/**
 * 用药情况监护
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-04-01 11:53:27
 */
@TableName("yongyaoqingkuangjianhu")
public class YongyaoqingkuangjianhuView  extends YongyaoqingkuangjianhuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YongyaoqingkuangjianhuView(){
	}
 
 	public YongyaoqingkuangjianhuView(YongyaoqingkuangjianhuEntity yongyaoqingkuangjianhuEntity){
 	try {
			BeanUtils.copyProperties(this, yongyaoqingkuangjianhuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
