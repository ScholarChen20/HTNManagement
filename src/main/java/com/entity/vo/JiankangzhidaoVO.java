package com.entity.vo;

import com.entity.JiankangzhidaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 健康指导
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
public class JiankangzhidaoVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 指导类型
	 */
	
	private String zhidaoleixing;
		
	/**
	 * 指导方案
	 */
	
	private String zhidaofangan;
		
	/**
	 * 指导建议
	 */
	
	private String zhidaojianyi;
		
	/**
	 * 指导图片
	 */
	
	private String zhidaotupian;
		
	/**
	 * 患者账号
	 */
	
	private String huanzhezhanghao;
		
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
	 * 指导时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date zhidaoshijian;
		
	/**
	 * 血压目标值(mmHg)
	 */
	
	private Double xueyamubiaozhi;
				
	
	/**
	 * 设置：指导类型
	 */
	 
	public void setZhidaoleixing(String zhidaoleixing) {
		this.zhidaoleixing = zhidaoleixing;
	}
	
	/**
	 * 获取：指导类型
	 */
	public String getZhidaoleixing() {
		return zhidaoleixing;
	}
				
	
	/**
	 * 设置：指导方案
	 */
	 
	public void setZhidaofangan(String zhidaofangan) {
		this.zhidaofangan = zhidaofangan;
	}
	
	/**
	 * 获取：指导方案
	 */
	public String getZhidaofangan() {
		return zhidaofangan;
	}
				
	
	/**
	 * 设置：指导建议
	 */
	 
	public void setZhidaojianyi(String zhidaojianyi) {
		this.zhidaojianyi = zhidaojianyi;
	}
	
	/**
	 * 获取：指导建议
	 */
	public String getZhidaojianyi() {
		return zhidaojianyi;
	}
				
	
	/**
	 * 设置：指导图片
	 */
	 
	public void setZhidaotupian(String zhidaotupian) {
		this.zhidaotupian = zhidaotupian;
	}
	
	/**
	 * 获取：指导图片
	 */
	public String getZhidaotupian() {
		return zhidaotupian;
	}
				
	
	/**
	 * 设置：患者账号
	 */
	 
	public void setHuanzhezhanghao(String huanzhezhanghao) {
		this.huanzhezhanghao = huanzhezhanghao;
	}
	
	/**
	 * 获取：患者账号
	 */
	public String getHuanzhezhanghao() {
		return huanzhezhanghao;
	}
				
	
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
	 * 设置：指导时间
	 */
	 
	public void setZhidaoshijian(Date zhidaoshijian) {
		this.zhidaoshijian = zhidaoshijian;
	}
	
	/**
	 * 获取：指导时间
	 */
	public Date getZhidaoshijian() {
		return zhidaoshijian;
	}
				
	
	/**
	 * 设置：血压目标值(mmHg)
	 */
	 
	public void setXueyamubiaozhi(Double xueyamubiaozhi) {
		this.xueyamubiaozhi = xueyamubiaozhi;
	}
	
	/**
	 * 获取：血压目标值(mmHg)
	 */
	public Double getXueyamubiaozhi() {
		return xueyamubiaozhi;
	}
			
}
