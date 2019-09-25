package com.inspur.ssm.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import com.inspur.ssm.pojo.CourseListinfo;
import com.inspur.ssm.pojo.SelectCrouseinfo;
import com.inspur.ssm.pojo.Studentinfo;

/**
 * 学生服务类
 * 
 * @author Administrator
 *
 */
@Resource
public interface StudentService {
	// 学生信息查询、获取当前编辑学生信息
	public Studentinfo findStuinfo(String stuid) throws Exception;

	// 学生密码修改
	public Studentinfo changePassword(Studentinfo student) throws Exception;

	// 获取所有学生信息
	public List<Studentinfo> getStudentsList(Map<String, Object> params) throws Exception;

	// 按条件获取学生信息
	public List<Studentinfo> queryStudents(Studentinfo student) throws Exception;

	// 添加学生信息
	public int addStudent(Studentinfo student) throws Exception;

	// 删除学生信息
	public int deleteStudent(String stuid) throws Exception;

	// 更新学生信息
	public int updateStudent(Studentinfo student) throws Exception;

	// 查询学生选课信息
	public List<SelectCrouseinfo> selectCourse(String stuid) throws Exception;

	// 查询所有课程信息
	public List<CourseListinfo> querycourse() throws Exception;

	// 查询当前所添加的课程信息
	public CourseListinfo selectCourseByCid(String courseid) throws Exception;

	// 添加选课
	public int addCourse(SelectCrouseinfo selectcourse) throws Exception;

}
