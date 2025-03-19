package com.entity.view;

import com.entity.JiankangzhidaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.utils.EncryptUtil;
 

/**
 * 健康指导
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
@TableName("jiankangzhidao")
public class JiankangzhidaoView  extends JiankangzhidaoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JiankangzhidaoView(){
	}
 
 	public JiankangzhidaoView(JiankangzhidaoEntity jiankangzhidaoEntity){
 	try {
			BeanUtils.copyProperties(this, jiankangzhidaoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
