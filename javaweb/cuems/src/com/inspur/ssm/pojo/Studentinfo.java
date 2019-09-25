package com.inspur.ssm.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Studentinfo {
	private String stuid;
	private String stupassword;
	private String resetpassword;// 新密码
	private String stuname;
	private String sex;
	private String stu_idcard;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birthday;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private String birthdays;
	private String studepartname;
	private String stumajorname;
	private String stulevel;
	private String stutel;
	private String stuaddress;
	private String usertype;// 用户类型 学生：S

	public String getUsertype() {
		return usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}

	public String getResetpassword() {
		return resetpassword;
	}

	public void setResetpassword(String resetpassword) {
		this.resetpassword = resetpassword;
	}

	public String getBirthdays() {
		return birthdays;
	}

	public void setBirthdays(String birthdays) {
		this.birthdays = birthdays;
	}

	public String getStuid() {
		return stuid;
	}

	public void setStuid(String stuid) {
		this.stuid = stuid;
	}

	public String getStupassword() {
		return stupassword;
	}

	public void setStupassword(String stupassword) {
		this.stupassword = stupassword;
	}

	public String getStuname() {
		return stuname;
	}

	public void setStuname(String stuname) {
		this.stuname = stuname;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getStu_idcard() {
		return stu_idcard;
	}

	public void setStu_idcard(String stu_idcard) {
		this.stu_idcard = stu_idcard;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getStudepartname() {
		return studepartname;
	}

	public void setStudepartname(String studepartname) {
		this.studepartname = studepartname;
	}

	public String getStumajorname() {
		return stumajorname;
	}

	public void setStumajorname(String stumajorname) {
		this.stumajorname = stumajorname;
	}

	public String getStulevel() {
		return stulevel;
	}

	public void setStulevel(String stulevel) {
		this.stulevel = stulevel;
	}

	public String getStutel() {
		return stutel;
	}

	public void setStutel(String stutel) {
		this.stutel = stutel;
	}

	public String getStuaddress() {
		return stuaddress;
	}

	public void setStuaddress(String stuaddress) {
		this.stuaddress = stuaddress;
	}

}
