package com.inspur.ssm.service;

import javax.annotation.Resource;

import com.inspur.ssm.pojo.Managerinfo;
import com.inspur.ssm.pojo.Studentinfo;
import com.inspur.ssm.pojo.Teacherinfo;

/**
 * 登录服务类
 * 
 * @author administrator
 *
 */
@Resource
public interface LoginService {
	// 学生查询列表
	public Studentinfo findUser(Studentinfo studentinfo) throws Exception;

	// 教师查询列表
	public Teacherinfo findTeacher(Teacherinfo teacherinfo) throws Exception;

	// 管理员查询列表
	public Managerinfo findManager(Managerinfo managerinfo) throws Exception;

}
