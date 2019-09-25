package com.inspur.ssm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.ssm.mapper.StudentMapper;
import com.inspur.ssm.pojo.CourseListinfo;
import com.inspur.ssm.pojo.SelectCrouseinfo;
import com.inspur.ssm.pojo.Studentinfo;
import com.inspur.ssm.service.StudentService;

@Service("studentService")
public class StudentServiceImlp implements StudentService {
	@Autowired
	private StudentMapper studentMapper;

	@Override
	/**
	 * 查找学生信息
	 */
	public Studentinfo findStuinfo(String stuid) throws Exception {
		Studentinfo student = studentMapper.selectByStudentKey(stuid);
		if (student == null) {
			throw new Exception("用户信息错误,用户名或密码错误！");
		} else {
			return student;
		}

	}

	@Override
	/**
	 * 修改密码
	 */
	public Studentinfo changePassword(Studentinfo student) throws Exception {
		Studentinfo stu1 = studentMapper.findUser(student);
		if (stu1 == null) {
			return null;
		} else {
			studentMapper.updateByPrimaryKey(student);
			System.out.println("密码修改成功");
			return stu1;
		}

	}

	@Override
	/**
	 * 获取所有学生信息
	 */
	public List<Studentinfo> getStudentsList(Map<String, Object> params) throws Exception {
		// TODO Auto-generated method stub
		List<Studentinfo> list = studentMapper.getStudentList(params);
		return list;
	}

	@Override
	/**
	 * 按条件查询学生信息
	 */
	public List<Studentinfo> queryStudents(Studentinfo student) throws Exception {
		// TODO Auto-generated method stub
		List<Studentinfo> students = studentMapper.selectByStudent(student);
		return students;
	}

	@Override
	/**
	 * 添加学生信息
	 */
	public int addStudent(Studentinfo student) throws Exception {
		int count = studentMapper.insert(student);
		return count;
	}

	@Override
	public int deleteStudent(String stuid) throws Exception {
		// TODO Auto-generated method stub
		int count = studentMapper.deleteByPrimaryKey(stuid);
		return count;
	}

	@Override
	/**
	 * 更新学生信息
	 */
	public int updateStudent(Studentinfo student) throws Exception {
		// TODO Auto-generated method stub
		int count = studentMapper.updateStudent(student);
		return count;
	}

	@Override
	/**
	 * 查询学生选课信息
	 */
	public List<SelectCrouseinfo> selectCourse(String stuid) throws Exception {
		// TODO Auto-generated method stub
		List<SelectCrouseinfo> crouse = studentMapper.selectcourses(stuid);
		return crouse;
	}

	@Override
	/**
	 * 查询所有课程信息
	 */
	public List<CourseListinfo> querycourse() throws Exception {
		// TODO Auto-generated method stub
		List<CourseListinfo> list = studentMapper.querycourse();
		return list;
	}

	@Override
	/**
	 * 查询当前所添加的课程信息
	 */
	public CourseListinfo selectCourseByCid(String courseid) throws Exception {
		// TODO Auto-generated method stub
		CourseListinfo course = studentMapper.selectcourseByCid(courseid);

		return course;
	}

	@Override
	public int addCourse(SelectCrouseinfo selectcourse) throws Exception {
		// TODO Auto-generated method stub
		int count = studentMapper.addCourse(selectcourse);
		return count;
	}

}
