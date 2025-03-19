package com.entity.vo;

import com.entity.JiankangzhidaojianhuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 健康指导监护
 * @author 
 * @email 
 * @date 2024-04-01 11:53:27
 */
public class JiankangzhidaojianhuVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 患者姓名
	 */
	
	private String huanzhexingming;
		
	/**
	 * 医生工号
	 */
	
	private String yishenggonghao;
		
	/**
	 * 医生姓名
	 */
	
	private String yishengxingming;
		
	/**
	 * 饮食习惯
	 */
	
	private String yinshixiguan;
		
	/**
	 * 运动健康
	 */
	
	private String yundongjiankang;
		
	/**
	 * 作息习惯
	 */
	
	private String zuoxixiguan;
		
	/**
	 * 情绪
	 */
	
	private String qingxu;
		
	/**
	 * 登记日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date dengjiriqi;
		
	/**
	 * 最近图片
	 */
	
	private String zuijintupian;
				
	
	/**
	 * 设置：患者姓名
	 */
	 
	public void setHuanzhexingming(String huanzhexingming) {
		this.huanzhexingming = huanzhexingming;
	}
	
	/**
	 * 获取：患者姓名
	 */
	public String getHuanzhexingming() {
		return huanzhexingming;
	}
				
	
	/**
	 * 设置：医生工号
	 */
	 
	public void setYishenggonghao(String yishenggonghao) {
		this.yishenggonghao = yishenggonghao;
	}
	
	/**
	 * 获取：医生工号
	 */
	public String getYishenggonghao() {
		return yishenggonghao;
	}
				
	
	/**
	 * 设置：医生姓名
	 */
	 
	public void setYishengxingming(String yishengxingming) {
		this.yishengxingming = yishengxingming;
	}
	
	/**
	 * 获取：医生姓名
	 */
	public String getYishengxingming() {
		return yishengxingming;
	}
				
	
	/**
	 * 设置：饮食习惯
	 */
	 
	public void setYinshixiguan(String yinshixiguan) {
		this.yinshixiguan = yinshixiguan;
	}
	
	/**
	 * 获取：饮食习惯
	 */
	public String getYinshixiguan() {
		return yinshixiguan;
	}
				
	
	/**
	 * 设置：运动健康
	 */
	 
	public void setYundongjiankang(String yundongjiankang) {
		this.yundongjiankang = yundongjiankang;
	}
	
	/**
	 * 获取：运动健康
	 */
	public String getYundongjiankang() {
		return yundongjiankang;
	}
				
	
	/**
	 * 设置：作息习惯
	 */
	 
	public void setZuoxixiguan(String zuoxixiguan) {
		this.zuoxixiguan = zuoxixiguan;
	}
	
	/**
	 * 获取：作息习惯
	 */
	public String getZuoxixiguan() {
		return zuoxixiguan;
	}
				
	
	/**
	 * 设置：情绪
	 */
	 
	public void setQingxu(String qingxu) {
		this.qingxu = qingxu;
	}
	
	/**
	 * 获取：情绪
	 */
	public String getQingxu() {
		return qingxu;
	}
				
	
	/**
	 * 设置：登记日期
	 */
	 
	public void setDengjiriqi(Date dengjiriqi) {
		this.dengjiriqi = dengjiriqi;
	}
	
	/**
	 * 获取：登记日期
	 */
	public Date getDengjiriqi() {
		return dengjiriqi;
	}
				
	
	/**
	 * 设置：最近图片
	 */
	 
	public void setZuijintupian(String zuijintupian) {
		this.zuijintupian = zuijintupian;
	}
	
	/**
	 * 获取：最近图片
	 */
	public String getZuijintupian() {
		return zuijintupian;
	}
			
}
