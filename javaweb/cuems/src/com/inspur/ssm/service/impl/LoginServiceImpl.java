package com.inspur.ssm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.ssm.mapper.ManagerMapper;
import com.inspur.ssm.mapper.StudentMapper;
import com.inspur.ssm.mapper.TeacherMapper;
import com.inspur.ssm.pojo.Managerinfo;
import com.inspur.ssm.pojo.Studentinfo;
import com.inspur.ssm.pojo.Teacherinfo;
import com.inspur.ssm.service.LoginService;

@Service("loginService")
public class LoginServiceImpl implements LoginService {

	@Autowired
	private StudentMapper studentMapper;
	@Autowired
	private TeacherMapper teacherMapper;
	@Autowired
	private ManagerMapper managerMapper;

	@Override
	public Studentinfo findUser(Studentinfo studentQuery) throws Exception {
		Studentinfo student = studentMapper.findUser(studentQuery);
		if (student == null) {
			throw new Exception("用户信息错误");
		} else {
			return student;
		}
	}

	@Override
	public Teacherinfo findTeacher(Teacherinfo teacherQuery) throws Exception {
		Teacherinfo teacher = teacherMapper.findTeacher(teacherQuery);
		if (teacher == null) {
			throw new Exception("用户信息错误");
		} else {
			return teacher;
		}
	}

	@Override
	public Managerinfo findManager(Managerinfo managerQuery) throws Exception {
		Managerinfo manager = managerMapper.findManager(managerQuery);
		if (manager == null) {
			throw new Exception("用户信息错误");
		} else {
			return manager;
		}
	}

}
