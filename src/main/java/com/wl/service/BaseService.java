package com.wl.service;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.wl.model.User;

public interface BaseService{
	
	//ÔöÉ¾¸Ä²é
	public User selectUserByID(int id);
    
    public List<User> selectUsers();
    
    public void addUser(User user);
    
    public void updateUser(User user);
    
    public void deleteUser(int id);

	public void addUserAndRoleId(User user, Integer roleId);

	public List<User> selectRelUsers();

	public PageInfo<User> selectUsersByPager(int pageNum,int pageSize);
	
	public User selectRelUserByUid(Integer id);

}
