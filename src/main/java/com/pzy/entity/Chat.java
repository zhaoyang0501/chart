package com.pzy.entity;

import java.util.Date;

public class Chat {
	private Long userid;
	private User user;
	
	private Long fromuserid;
	
	private User formuser;
	
	private String remark;
	private String sessionid;
	
	private Date chatDate;
	
	public Long getFromuserid() {
		return fromuserid;
	}

	public void setFromuserid(Long fromuserid) {
		this.fromuserid = fromuserid;
	}

	public User getFormuser() {
		return formuser;
	}

	public void setFormuser(User formuser) {
		this.formuser = formuser;
	}

	public Long getUserid() {
		return userid;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getSessionid() {
		return sessionid;
	}

	public void setSessionid(String sessionid) {
		this.sessionid = sessionid;
	}

	public Date getChatDate() {
		return chatDate;
	}

	public void setChatDate(Date chatDate) {
		this.chatDate = chatDate;
	}
	
}
