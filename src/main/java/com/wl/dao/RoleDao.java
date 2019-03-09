package com.wl.dao;

import java.util.List;

import com.wl.model.Role;


public interface RoleDao {


	public Role selectRoleByID(int id);
    
    public List<Role> selectRoles();
    
    public void addRole(Role role);
    
    public void updateRole(Role role);
    
    public void deleteRole(int id);
	
}
