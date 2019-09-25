package com.inspur.ssm.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import com.inspur.ssm.pojo.Classinfo;

@Resource
public interface ClassService {
	// 查询所有课表信息
	public List<Classinfo> getClassList(Map<String, Object> params) throws Exception;

	// 查询当前学生的课表信息
	public List<Classinfo> queryClassea(String stuid) throws Exception;

	// 模糊查询课表信息
	public List<Classinfo> getClasses(Classinfo classinfo) throws Exception;

	// 删除课表信息
	public int deleteClass(String classid) throws Exception;

	// 获取待编辑课表信息
	public Classinfo geteditclass(String classid) throws Exception;

	// 更新课表信息
	public int updateClass(Classinfo classinfo) throws Exception;
}
