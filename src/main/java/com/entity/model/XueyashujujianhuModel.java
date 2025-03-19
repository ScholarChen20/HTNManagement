package com.entity.model;

import com.entity.XueyashujujianhuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 血压数据监护
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2024-04-01 11:53:27
 */
public class XueyashujujianhuModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 医生姓名
	 */
	
	private String yishengxingming;
		
	/**
	 * 科室
	 */
	
	private String keshi;
		
	/**
	 * 职称
	 */
	
	private String zhicheng;
		
	/**
	 * 患者账号
	 */
	
	private String huanzhezhanghao;
		
	/**
	 * 患者姓名
	 */
	
	private String huanzhexingming;
		
	/**
	 * 患者手机
	 */
	
	private String huanzheshouji;
		
	/**
	 * 血压(mmHg)
	 */
	
	private Double xueya;
		
	/**
	 * 备注
	 */
	
	private String beizhu;
		
	/**
	 * 收缩压(kpa)
	 */
	
	private Double shousuoya;
		
	/**
	 * 舒张压(kpa)
	 */
	
	private Double shuzhangya;
		
	/**
	 * 心率(次/分钟)
	 */
	
	private Integer xinlv;
		
	/**
	 * 登记日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date dengjiriqi;
				
	
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
	 * 设置：科室
	 */
	 
	public void setKeshi(String keshi) {
		this.keshi = keshi;
	}
	
	/**
	 * 获取：科室
	 */
	public String getKeshi() {
		return keshi;
	}
				
	
	/**
	 * 设置：职称
	 */
	 
	public void setZhicheng(String zhicheng) {
		this.zhicheng = zhicheng;
	}
	
	/**
	 * 获取：职称
	 */
	public String getZhicheng() {
		return zhicheng;
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
	 * 设置：患者手机
	 */
	 
	public void setHuanzheshouji(String huanzheshouji) {
		this.huanzheshouji = huanzheshouji;
	}
	
	/**
	 * 获取：患者手机
	 */
	public String getHuanzheshouji() {
		return huanzheshouji;
	}
				
	
	/**
	 * 设置：血压(mmHg)
	 */
	 
	public void setXueya(Double xueya) {
		this.xueya = xueya;
	}
	
	/**
	 * 获取：血压(mmHg)
	 */
	public Double getXueya() {
		return xueya;
	}
				
	
	/**
	 * 设置：备注
	 */
	 
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	
	/**
	 * 获取：备注
	 */
	public String getBeizhu() {
		return beizhu;
	}
				
	
	/**
	 * 设置：收缩压(kpa)
	 */
	 
	public void setShousuoya(Double shousuoya) {
		this.shousuoya = shousuoya;
	}
	
	/**
	 * 获取：收缩压(kpa)
	 */
	public Double getShousuoya() {
		return shousuoya;
	}
				
	
	/**
	 * 设置：舒张压(kpa)
	 */
	 
	public void setShuzhangya(Double shuzhangya) {
		this.shuzhangya = shuzhangya;
	}
	
	/**
	 * 获取：舒张压(kpa)
	 */
	public Double getShuzhangya() {
		return shuzhangya;
	}
				
	
	/**
	 * 设置：心率(次/分钟)
	 */
	 
	public void setXinlv(Integer xinlv) {
		this.xinlv = xinlv;
	}
	
	/**
	 * 获取：心率(次/分钟)
	 */
	public Integer getXinlv() {
		return xinlv;
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
