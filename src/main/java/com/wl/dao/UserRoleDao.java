package com.wl.dao;

import org.apache.ibatis.annotations.Param;

public interface UserRoleDao{

	public void addUserRole(@Param("uid") Integer uid,@Param("roleId") Integer roleId);
	
}
