package com.inspur.ssm.mapper;

import java.util.List;
import java.util.Map;

import com.inspur.ssm.pojo.Classinfo;

public interface ClassMapper {
	// 查询所有课表信息
	List<Classinfo> getClassList(Map<String, Object> params);

	// 查询当前学生课表信息
	List<Classinfo> queryClasses(String stuid);

	// 模糊查询课表信息
	List<Classinfo> getClasses(Classinfo classinfo);

	// 删除课表信息
	int deleteclass(String classid);

	// 获取待编辑课表信息
	Classinfo geteditclass(String classid);

	// 更新课表信息
	int updateClass(Classinfo classinfo);

}
