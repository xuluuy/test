package com.inspur.ssm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.ssm.mapper.ClassMapper;
import com.inspur.ssm.pojo.Classinfo;
import com.inspur.ssm.service.ClassService;

@Service("classService")
public class ClassServiceImpl implements ClassService {
	@Autowired
	private ClassMapper classMapper;

	@Override
	/**
	 * 查询所有课表信息
	 */
	public List<Classinfo> getClassList(Map<String, Object> params) throws Exception {
		// TODO Auto-generated method stub
		List<Classinfo> list = classMapper.getClassList(params);

		return list;
	}

	@Override
	/**
	 * 查询当前学生课表信息
	 */
	public List<Classinfo> queryClassea(String stuid) throws Exception {
		// TODO Auto-generated method stub
		List<Classinfo> list = classMapper.queryClasses(stuid);
		return list;
	}

	@Override
	/**
	 * 模糊查询课表信息
	 */
	public List<Classinfo> getClasses(Classinfo classinfo) throws Exception {
		// TODO Auto-generated method stub
		List<Classinfo> list = classMapper.getClasses(classinfo);
		return list;
	}

	@Override
	/**
	 * 删除课表信息
	 */
	public int deleteClass(String classid) throws Exception {
		// TODO Auto-generated method stub
		int count = classMapper.deleteclass(classid);
		return count;
	}

	@Override
	/**
	 * 获取待编辑课表信息
	 */
	public Classinfo geteditclass(String classid) throws Exception {
		// TODO Auto-generated method stub
		Classinfo classinfo = classMapper.geteditclass(classid);
		return classinfo;
	}

	@Override
	/**
	 * 更新课表信息
	 */
	public int updateClass(Classinfo classinfo) throws Exception {
		// TODO Auto-generated method stub
		int count = classMapper.updateClass(classinfo);
		return count;
	}

}
