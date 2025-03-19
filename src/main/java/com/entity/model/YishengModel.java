package com.entity.model;

import com.entity.YishengEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 医生
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2024-04-01 11:53:26
 */
public class YishengModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 密码
	 */
	
	private String mima;
		
	/**
	 * 医生姓名
	 */
	
	private String yishengxingming;
		
	/**
	 * 性别
	 */
	
	private String xingbie;
		
	/**
	 * 医龄
	 */
	
	private String yiling;
		
	/**
	 * 医生电话
	 */
	
	private String yishengdianhua;
		
	/**
	 * 头像
	 */
	
	private String touxiang;
		
	/**
	 * 医生简介
	 */
	
	private String yishengjianjie;
		
	/**
	 * 医师资格证
	 */
	
	private String yishizigezheng;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
		
	/**
	 * 微信openid
	 */
	
	private String openid;
		
	/**
	 * 微信昵称
	 */
	
	private String nickname;
		
	/**
	 * 微信头像
	 */
	
	private String avatarurl;
				
	
	/**
	 * 设置：密码
	 */
	 
	public void setMima(String mima) {
		this.mima = mima;
	}
	
	/**
	 * 获取：密码
	 */
	public String getMima() {
		return mima;
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
	 * 设置：医龄
	 */
	 
	public void setYiling(String yiling) {
		this.yiling = yiling;
	}
	
	/**
	 * 获取：医龄
	 */
	public String getYiling() {
		return yiling;
	}
				
	
	/**
	 * 设置：医生电话
	 */
	 
	public void setYishengdianhua(String yishengdianhua) {
		this.yishengdianhua = yishengdianhua;
	}
	
	/**
	 * 获取：医生电话
	 */
	public String getYishengdianhua() {
		return yishengdianhua;
	}
				
	
	/**
	 * 设置：头像
	 */
	 
	public void setTouxiang(String touxiang) {
		this.touxiang = touxiang;
	}
	
	/**
	 * 获取：头像
	 */
	public String getTouxiang() {
		return touxiang;
	}
				
	
	/**
	 * 设置：医生简介
	 */
	 
	public void setYishengjianjie(String yishengjianjie) {
		this.yishengjianjie = yishengjianjie;
	}
	
	/**
	 * 获取：医生简介
	 */
	public String getYishengjianjie() {
		return yishengjianjie;
	}
				
	
	/**
	 * 设置：医师资格证
	 */
	 
	public void setYishizigezheng(String yishizigezheng) {
		this.yishizigezheng = yishizigezheng;
	}
	
	/**
	 * 获取：医师资格证
	 */
	public String getYishizigezheng() {
		return yishizigezheng;
	}
				
	
	/**
	 * 设置：是否审核
	 */
	 
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
				
	
	/**
	 * 设置：审核回复
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
				
	
	/**
	 * 设置：微信openid
	 */
	 
	public void setOpenid(String openid) {
		this.openid = openid;
	}
	
	/**
	 * 获取：微信openid
	 */
	public String getOpenid() {
		return openid;
	}
				
	
	/**
	 * 设置：微信昵称
	 */
	 
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	/**
	 * 获取：微信昵称
	 */
	public String getNickname() {
		return nickname;
	}
				
	
	/**
	 * 设置：微信头像
	 */
	 
	public void setAvatarurl(String avatarurl) {
		this.avatarurl = avatarurl;
	}
	
	/**
	 * 获取：微信头像
	 */
	public String getAvatarurl() {
		return avatarurl;
	}
			
}
