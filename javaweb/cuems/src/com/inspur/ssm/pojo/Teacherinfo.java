package com.inspur.ssm.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Teacherinfo {
	private String teacherid;
	private String teapassword;
	private String resetpassword;// 新密码
	private String teachername;
	private String sex;
	private String teacher_idcard;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birthday;
	private String birthdays;
	private String teadepartname;
	private String teamajorname;
	private String teadegree;
	private String teaposition;
	private String teatel;
	private String teaaddress;
	private String usertype;// 用户类型 老师：T

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

	public String getTeacherid() {
		return teacherid;
	}

	public void setTeacherid(String teacherid) {
		this.teacherid = teacherid;
	}

	public String getTeapassword() {
		return teapassword;
	}

	public void setTeapassword(String teapassword) {
		this.teapassword = teapassword;
	}

	public String getTeachername() {
		return teachername;
	}

	public void setTeachername(String teachername) {
		this.teachername = teachername;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getTeacher_idcard() {
		return teacher_idcard;
	}

	public void setTeacher_idcard(String teacher_idcard) {
		this.teacher_idcard = teacher_idcard;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getTeadepartname() {
		return teadepartname;
	}

	public void setTeadepartname(String teadepartname) {
		this.teadepartname = teadepartname;
	}

	public String getTeamajorname() {
		return teamajorname;
	}

	public void setTeamajorname(String teamajorname) {
		this.teamajorname = teamajorname;
	}

	public String getTeadegree() {
		return teadegree;
	}

	public void setTeadegree(String teadegree) {
		this.teadegree = teadegree;
	}

	public String getTeaposition() {
		return teaposition;
	}

	public void setTeaposition(String teaposition) {
		this.teaposition = teaposition;
	}

	public String getTeatel() {
		return teatel;
	}

	public void setTeatel(String teatel) {
		this.teatel = teatel;
	}

	public String getTeaaddress() {
		return teaaddress;
	}

	public void setTeaaddress(String teaaddress) {
		this.teaaddress = teaaddress;
	}

}
