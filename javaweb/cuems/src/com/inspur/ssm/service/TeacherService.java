package com.inspur.ssm.service;

import javax.annotation.Resource;

import com.inspur.ssm.pojo.Teacherinfo;

/**
 * 教师服务类
 * 
 * @author Administrator
 *
 */
@Resource
public interface TeacherService {
	// 当前教师信息查询
	public Teacherinfo findTeainfo(String teaid) throws Exception;

	// 修改当前教师的密码
	public Teacherinfo changePassword(Teacherinfo teacher) throws Exception;

}
