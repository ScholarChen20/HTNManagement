package com.entity.view;

import com.entity.KepuwenzhangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.utils.EncryptUtil;
 

/**
 * 科普文章
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
@TableName("kepuwenzhang")
public class KepuwenzhangView  extends KepuwenzhangEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public KepuwenzhangView(){
	}
 
 	public KepuwenzhangView(KepuwenzhangEntity kepuwenzhangEntity){
 	try {
			BeanUtils.copyProperties(this, kepuwenzhangEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
