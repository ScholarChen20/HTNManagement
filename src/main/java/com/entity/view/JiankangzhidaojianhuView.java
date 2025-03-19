package com.entity.view;

import com.entity.JiankangzhidaojianhuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.utils.EncryptUtil;
 

/**
 * 健康指导监护
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-04-01 11:53:27
 */
@TableName("jiankangzhidaojianhu")
public class JiankangzhidaojianhuView  extends JiankangzhidaojianhuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JiankangzhidaojianhuView(){
	}
 
 	public JiankangzhidaojianhuView(JiankangzhidaojianhuEntity jiankangzhidaojianhuEntity){
 	try {
			BeanUtils.copyProperties(this, jiankangzhidaojianhuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
