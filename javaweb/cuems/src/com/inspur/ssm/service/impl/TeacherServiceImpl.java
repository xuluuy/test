package com.inspur.ssm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.ssm.mapper.TeacherMapper;
import com.inspur.ssm.pojo.Studentinfo;
import com.inspur.ssm.pojo.Teacherinfo;
import com.inspur.ssm.service.TeacherService;

@Service("teacherService")
public class TeacherServiceImpl implements TeacherService {
	@Autowired
	private TeacherMapper teacherMapper;

	@Override
	/**
	 * 查找当前教师信息
	 */
	public Teacherinfo findTeainfo(String teaid) throws Exception {
		Teacherinfo teacher = teacherMapper.selectByTeacherKey(teaid);
		if (teacher == null) {
			throw new Exception("用户信息错误");
		} else {
			return teacher;
		}
	}

	@Override
	/**
	 * 修改密码
	 */
	public Teacherinfo changePassword(Teacherinfo teacher) throws Exception {
		// TODO Auto-generated method stub
		Teacherinfo tea = teacherMapper.findTeacher(teacher);
		if (tea == null) {
			return null;
		} else {
			teacherMapper.updateTeaPassword(teacher);
			return tea;
		}

	}

}
