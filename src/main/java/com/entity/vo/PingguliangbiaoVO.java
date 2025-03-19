package com.entity.vo;

import com.entity.PingguliangbiaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 评估量表
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
public class PingguliangbiaoVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 量表内容
	 */
	
	private String liangbiaoneirong;
		
	/**
	 * 参考备注
	 */
	
	private String cankaobeizhu;
				
	
	/**
	 * 设置：量表内容
	 */
	 
	public void setLiangbiaoneirong(String liangbiaoneirong) {
		this.liangbiaoneirong = liangbiaoneirong;
	}
	
	/**
	 * 获取：量表内容
	 */
	public String getLiangbiaoneirong() {
		return liangbiaoneirong;
	}
				
	
	/**
	 * 设置：参考备注
	 */
	 
	public void setCankaobeizhu(String cankaobeizhu) {
		this.cankaobeizhu = cankaobeizhu;
	}
	
	/**
	 * 获取：参考备注
	 */
	public String getCankaobeizhu() {
		return cankaobeizhu;
	}
			
}
