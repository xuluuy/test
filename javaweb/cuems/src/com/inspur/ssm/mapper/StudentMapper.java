package com.inspur.ssm.mapper;

import java.util.List;
import java.util.Map;

import com.inspur.ssm.pojo.CourseListinfo;
import com.inspur.ssm.pojo.SelectCrouseinfo;
import com.inspur.ssm.pojo.Studentinfo;

public interface StudentMapper {
	// 查询学生信息
	Studentinfo findUser(Studentinfo studentQuery);

	// 获取所有学生信息
	List<Studentinfo> getStudentList(Map<String, Object> map);

	// 模糊查询学生信息
	List<Studentinfo> selectByStudent(Studentinfo student);

	// 根据学生id获取学生所有信息
	Studentinfo selectByStudentKey(String studentid);

	List<Studentinfo> selectByNamePrimaryKey(String studentname);

	Studentinfo selectByStudentidcardKey(String studentidcard);

	int studentExistCheck(Studentinfo student);

	int studentCheckIdcard(Studentinfo student);

	// 修改学生密码
	void updateByPrimaryKey(Studentinfo student);

	int studentExistCheckId(String stuid);

	// 添加学生信息
	int insert(Studentinfo record);

	// 删除学生信息
	int deleteByPrimaryKey(String studentid);

	// 更新学生信息
	int updateStudent(Studentinfo record);

	String getStudentName(String stuid);

	// 查询学生选课信息
	List<SelectCrouseinfo> selectcourses(String stuid);

	// 查询所有课程信息
	List<CourseListinfo> querycourse();

	// 查询当前要添加的课程信息
	CourseListinfo selectcourseByCid(String courseid);

	// 添加选课
	int addCourse(SelectCrouseinfo selectcourse);
}
