package com.wl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wl.dao.RoleDao;
import com.wl.model.Role;
@Service("RoleService")
public class RoleServiceImp implements RoleService{

	@Autowired
	private RoleDao roleDao;
	@Override
	public Role selectRoleByID(int id) {
		Role role=roleDao.selectRoleByID(id);
		return role;
	}

	@Override
	public List<Role> selectRoles() {
		List<Role> list=roleDao.selectRoles();
		return list;
	}

	@Override
	public void addRole(Role role) {
		roleDao.addRole(role);
	}

	@Override
	public void updateRole(Role role) {
		roleDao.updateRole(role);
	}

	@Override
	public void deleteRole(int id) {
		roleDao.deleteRole(id);
	}

}
