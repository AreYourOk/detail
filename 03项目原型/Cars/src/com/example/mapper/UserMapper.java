package com.example.mapper;

import java.util.List;

import com.google.common.collect.Lists;

import model.City;
import model.User;

public interface UserMapper {
	public User findOneUser(String username,String password);
	
	public List<User> findAllUser();
	
	public User checkOneUser(String username);
	
	public int insertOneUser(User user);
	
	public int deleteOneUser(int id);
	
	public int updateOneUser(User user);
	
	public int updatePwdbyid(int id,String password);
}
