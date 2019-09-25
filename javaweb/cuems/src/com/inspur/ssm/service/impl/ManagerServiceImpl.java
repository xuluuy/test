package com.inspur.ssm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inspur.ssm.mapper.ManagerMapper;
import com.inspur.ssm.pojo.Managerinfo;
import com.inspur.ssm.service.ManagerService;

@Service("managerService")
public class ManagerServiceImpl implements ManagerService {
	@Autowired
	private ManagerMapper managerMapper;

	@Override
	/**
	 * 查询所有管理员信息
	 */
	public List<Managerinfo> getManagersList(Map<String, Object> params) throws Exception {
		// TODO Auto-generated method stub
		List<Managerinfo> list = managerMapper.getManagersList(params);
		return list;
	}

	@Override
	/**
	 * 按条件查询管理员信息
	 */
	public List<Managerinfo> getqueryManagersList(Managerinfo managers) throws Exception {
		// TODO Auto-generated method stub
		List<Managerinfo> list = managerMapper.selectByNamePrimaryKey(managers);
		return list;
	}

	@Override
	/**
	 * 修改密码
	 */
	public Managerinfo changePassword(Managerinfo manager) throws Exception {
		Managerinfo man = managerMapper.findManager(manager);
		if (man == null) {
			return null;
		} else {
			managerMapper.updatePassword(manager);
			return man;
		}
	}

	@Override
	/**
	 * 增加管理员用户
	 */
	public int insertManager(Managerinfo manager) throws Exception {
		// TODO Auto-generated method stub

		int man = managerMapper.insert(manager);
		return man;
	}

	@Override
	/**
	 * 删除管理员信息
	 */
	public int deleteManager(String managerid) throws Exception {
		// TODO Auto-generated method stub
		int m = managerMapper.deleteByPrimaryKey(managerid);
		return m;
	}

	@Override
	/**
	 * 获取当前所编辑的用户信息
	 */
	public Managerinfo queryManager(String managerid) throws Exception {
		// TODO Auto-generated method stub
		Managerinfo man = managerMapper.selectByManagerKey(managerid);
		return man;
	}

	@Override
	/**
	 * 更新管理员信息
	 */
	public int updateManager(Managerinfo manager) throws Exception {
		// TODO Auto-generated method stub
		int man = managerMapper.updateByPrimaryKey(manager);
		return man;
	}

}
