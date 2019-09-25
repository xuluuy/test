package com.inspur.ssm.mapper;

import java.util.List;
import java.util.Map;

import com.inspur.ssm.pojo.Teacherinfo;

public interface TeacherMapper {
	// 查询当前教师信息
	Teacherinfo findTeacher(Teacherinfo teacherQuery);

	List<Teacherinfo> getTeachersList(Map<String, Object> params);

	Teacherinfo selectByTeacherKey(String teacherid);

	Teacherinfo selectByTeacher(Teacherinfo teacher);

	List<Teacherinfo> selectByNamePrimaryKey(String teachername);

	Teacherinfo selectByTeacheridcardKey(String teacheridcard);

	int teacherExistCheck(Teacherinfo teacher);

	int teacherCheckIdcard(Teacherinfo teacher);

	int teacherExistCheckName(String teachername);

	int teacherExistId(String teacherid);

	void insert(Teacherinfo record);

	void deleteByPrimaryKey(String teacherid);

	void updateTeacher(Teacherinfo teacher);

	// 修改密码
	void updateTeaPassword(Teacherinfo teacher);

	// 获取教师姓名
	String selectteachername(String teacherid);
}
