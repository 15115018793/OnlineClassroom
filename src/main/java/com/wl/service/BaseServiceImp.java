package com.wl.service;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mysql.fabric.xmlrpc.base.Array;
import com.mysql.jdbc.Field;
import com.wl.dao.UserDao;
import com.wl.dao.UserRoleDao;
import com.wl.model.User;

@Service("BaseService")
public class BaseServiceImp implements BaseService{
	// 获取basedao对象
	@Autowired()
	private UserDao UserDao;
	@Autowired
	private UserRoleDao UserRoleDao;
	
	@Override
	public User selectUserByID(int id) {
		User user=UserDao.selectUserByID(id);
		return user;
	}

	@Override
	public List<User> selectUsers() {
		List<User> listuser=UserDao.selectUsers();
		return listuser;
	}

	@Override
	public void addUser(User user) {
		UserDao.addUser(user);
	}


	@Override
	public void deleteUser(int id) {
		UserDao.deleteUser(id);
	}
	@Override
	public void addUserAndRoleId(User user, Integer roleId) {
		//完成添加用户的功能
		user.setEnable(1);
		this.addUser(user);
		//查询刚添加的用户纪录
		System.out.println("id"+roleId);
		User u=UserDao.getUserByName(user.getUsername());
		//添加到关系表中
		UserRoleDao.addUserRole(user.getId(),roleId);
		
	}
	@Override
	public List<User> selectRelUsers() {
		return UserDao.selectRelUsers();
	}
	@Override
	public PageInfo<User> selectUsersByPager(int pageNum, int pageSize) {
		com.github.pagehelper.Page<User> page=PageHelper.startPage(pageNum, pageSize);
		List<User> userList=UserDao.selectRelUsers();
		PageInfo<User> pageInfo=new PageInfo<>(userList);
		return pageInfo;
	}
	@Override
	public User selectRelUserByUid(Integer id) {
		User user=UserDao.getUserByUid(id);
		return user;
	}
	//修改用户
	@Override
	public void updateUser(User user){
		if("".equals(user.getPassword().trim())){
			user.setPassword(null);
		}
		UserDao.updateUser(user);
	} 
}
