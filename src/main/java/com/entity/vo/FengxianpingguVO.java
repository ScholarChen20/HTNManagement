package com.entity.vo;

import com.entity.FengxianpingguEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 风险评估
 * @author 
 * @email 
 * @date 2024-04-01 11:53:27
 */
public class FengxianpingguVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 患者姓名
	 */
	
	private String huanzhexingming;

	/**
	 * 风险结果
	 */
	private String result;
	public void setResult(String result) {
		this.result = result;
	}
	public String getResult() {
		return result;
	}
	/**
	 * 性别
	 */

	private String xingbie;
		
	/**
	 * 年龄
	 */
	
	private Integer nianling;
		
	/**
	 * 收缩压
	 */
	
	private Double shousuoya;
		
	/**
	 * 身高(m)
	 */
	
	private Double shengao;
		
	/**
	 * 体重(kg)
	 */
	
	private Double tizhong;
		
	/**
	 * bmi
	 */
	
	private Double bmi;
		
	/**
	 * 血清胆固醇
	 */
	
	private Double xueqingdanguchun;
		
	/**
	 * 是否吸烟
	 */
	
	private String shifouxiyan;
		
	/**
	 * 是否喝酒
	 */
	
	private String shifouhejiu;
		
	/**
	 * 登记日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date dengjiriqi;
				
	
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
	 * 设置：性别
	 */
	 
	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}
	
	/**
	 * 获取：性别
	 */
	public String getXingbie() {
		return xingbie;
	}
				
	
	/**
	 * 设置：年龄
	 */
	 
	public void setNianling(Integer nianling) {
		this.nianling = nianling;
	}
	
	/**
	 * 获取：年龄
	 */
	public Integer getNianling() {
		return nianling;
	}
				
	
	/**
	 * 设置：收缩压
	 */
	 
	public void setShousuoya(Double shousuoya) {
		this.shousuoya = shousuoya;
	}
	
	/**
	 * 获取：收缩压
	 */
	public Double getShousuoya() {
		return shousuoya;
	}
				
	
	/**
	 * 设置：身高(m)
	 */
	 
	public void setShengao(Double shengao) {
		this.shengao = shengao;
	}
	
	/**
	 * 获取：身高(m)
	 */
	public Double getShengao() {
		return shengao;
	}
				
	
	/**
	 * 设置：体重(kg)
	 */
	 
	public void setTizhong(Double tizhong) {
		this.tizhong = tizhong;
	}
	
	/**
	 * 获取：体重(kg)
	 */
	public Double getTizhong() {
		return tizhong;
	}
				
	
	/**
	 * 设置：bmi
	 */
	 
	public void setBmi(Double bmi) {
		this.bmi = bmi;
	}
	
	/**
	 * 获取：bmi
	 */
	public Double getBmi() {
		return bmi;
	}
				
	
	/**
	 * 设置：血清胆固醇
	 */
	 
	public void setXueqingdanguchun(Double xueqingdanguchun) {
		this.xueqingdanguchun = xueqingdanguchun;
	}
	
	/**
	 * 获取：血清胆固醇
	 */
	public Double getXueqingdanguchun() {
		return xueqingdanguchun;
	}
				
	
	/**
	 * 设置：是否吸烟
	 */
	 
	public void setShifouxiyan(String shifouxiyan) {
		this.shifouxiyan = shifouxiyan;
	}
	
	/**
	 * 获取：是否吸烟
	 */
	public String getShifouxiyan() {
		return shifouxiyan;
	}
				
	
	/**
	 * 设置：是否喝酒
	 */
	 
	public void setShifouhejiu(String shifouhejiu) {
		this.shifouhejiu = shifouhejiu;
	}
	
	/**
	 * 获取：是否喝酒
	 */
	public String getShifouhejiu() {
		return shifouhejiu;
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
			
}
