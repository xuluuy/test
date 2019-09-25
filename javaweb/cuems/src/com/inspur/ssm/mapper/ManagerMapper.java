package com.inspur.ssm.mapper;

import java.util.List;
import java.util.Map;

import com.inspur.ssm.pojo.Managerinfo;

public interface ManagerMapper {

	Managerinfo findManager(Managerinfo managerQuery);

	// 查询所有管理员信息
	List<Managerinfo> getManagersList(Map<String, Object> params);

	// 更新管理员信息
	int updateByPrimaryKey(Managerinfo record);

	Managerinfo selectByManager(Managerinfo record);

	// 获取当前所编辑的用户信息
	Managerinfo selectByManagerKey(String managerid);

	// 按条件查询管理员信息
	List<Managerinfo> selectByNamePrimaryKey(Managerinfo managers);

	Managerinfo selectByManageridcardKey(String manageridcard);

	int managerExistCheck(Managerinfo manager);

	int managerCheckIdcard(Managerinfo manager);

	// 添加管理员用户
	int insert(Managerinfo record);

	// 删除管理员用户
	int deleteByPrimaryKey(String managerid);

	void updateManager(Managerinfo manager);

	// 修改密码
	void updatePassword(Managerinfo manager);

}
