package com.wl.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.wl.model.User;

public interface UserDao{

	public User selectUserByID(int id);
    
    public List<User> selectUsers();
    
    public void addUser(User user);
    
    public void updateUser(User user);
    
    public void deleteUser(int id);
    //根据用户名获取记录
    public User getUserByName(@Param("username") String username);
    
    public List<User> selectRelUsers();
    
    //通过用户id来查询user和role
    public User getUserByUid(Integer id);
    

}
