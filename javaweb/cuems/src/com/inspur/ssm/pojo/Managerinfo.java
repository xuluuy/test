package com.inspur.ssm.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Managerinfo {
	private String managerid;
	private String manpassword;
	private String resetpassword;// 新密码
	private String managername;
	private String sex;
	private String manager_idcard;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birthday;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private String birthdays;
	private String mandepartname;
	private String manposition;
	private String mantel;
	private String manaddress;
	private String usertype;// 用户类型 管理员：M

	public String getResetpassword() {
		return resetpassword;
	}

	public void setResetpassword(String resetpassword) {
		this.resetpassword = resetpassword;
	}

	public String getUsertype() {
		return usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}

	public String getBirthdays() {
		return birthdays;
	}

	public void setBirthdays(String birthdays) {
		this.birthdays = birthdays;
	}

	public String getManagerid() {
		return managerid;
	}

	public void setManagerid(String managerid) {
		this.managerid = managerid;
	}

	public String getManpassword() {
		return manpassword;
	}

	public void setManpassword(String manpassword) {
		this.manpassword = manpassword;
	}

	public String getManagername() {
		return managername;
	}

	public void setManagername(String managername) {
		this.managername = managername;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getManager_idcard() {
		return manager_idcard;
	}

	public void setManager_idcard(String manager_idcard) {
		this.manager_idcard = manager_idcard;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getMandepartname() {
		return mandepartname;
	}

	public void setMandepartname(String mandepartname) {
		this.mandepartname = mandepartname;
	}

	public String getManposition() {
		return manposition;
	}

	public void setManposition(String manposition) {
		this.manposition = manposition;
	}

	public String getMantel() {
		return mantel;
	}

	public void setMantel(String mantel) {
		this.mantel = mantel;
	}

	public String getManaddress() {
		return manaddress;
	}

	public void setManaddress(String manaddress) {
		this.manaddress = manaddress;
	}

}
