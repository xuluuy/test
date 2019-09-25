package com.inspur.ssm.pojo;

public class Classinfo {
	private String classid;
	private String stuid;
	private String classdate; // 时间
	private String classplace;
	private String teacherid;
	private String classname;
	private String classjieci; // 节次

	public String getClassjieci() {
		return classjieci;
	}

	public void setClassjieci(String classjieci) {
		this.classjieci = classjieci;
	}

	public String getClassname() {
		return classname;
	}

	public void setClassname(String classname) {
		this.classname = classname;
	}

	public String getClassid() {
		return classid;
	}

	public void setClassid(String classid) {
		this.classid = classid;
	}

	public String getStuid() {
		return stuid;
	}

	public void setStuid(String stuid) {
		this.stuid = stuid;
	}

	public String getClassdate() {
		return classdate;
	}

	public void setClassdate(String classdate) {
		this.classdate = classdate;
	}

	public String getClassplace() {
		return classplace;
	}

	public void setClassplace(String classplace) {
		this.classplace = classplace;
	}

	public String getTeacherid() {
		return teacherid;
	}

	public void setTeacherid(String teacherid) {
		this.teacherid = teacherid;
	}

}
