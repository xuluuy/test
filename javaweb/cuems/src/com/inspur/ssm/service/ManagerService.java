package com.inspur.ssm.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import com.inspur.ssm.pojo.Managerinfo;

@Resource
public interface ManagerService {
	// 管理员信息查询
	public List<Managerinfo> getManagersList(Map<String, Object> params) throws Exception;

	// 按条件管理员查询
	public List<Managerinfo> getqueryManagersList(Managerinfo managers) throws Exception;

	// 密码修改
	public Managerinfo changePassword(Managerinfo manager) throws Exception;

	// 添加管理员用户
	public int insertManager(Managerinfo manager) throws Exception;

	// 删除管理员信息
	public int deleteManager(String managerid) throws Exception;

	// 获取当前所编辑用户信息
	public Managerinfo queryManager(String managerid) throws Exception;

	// 编辑更新管理员信息
	public int updateManager(Managerinfo manager) throws Exception;

}
