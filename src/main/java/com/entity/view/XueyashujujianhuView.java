package com.entity.view;

import com.entity.XueyashujujianhuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.utils.EncryptUtil;
 

/**
 * 血压数据监护
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-04-01 11:53:27
 */
@TableName("xueyashujujianhu")
public class XueyashujujianhuView  extends XueyashujujianhuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XueyashujujianhuView(){
	}
 
 	public XueyashujujianhuView(XueyashujujianhuEntity xueyashujujianhuEntity){
 	try {
			BeanUtils.copyProperties(this, xueyashujujianhuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
