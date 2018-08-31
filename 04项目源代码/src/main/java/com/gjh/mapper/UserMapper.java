package com.gjh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gjh.model.User;
@Mapper
public interface UserMapper {
	public User findOneUser(String username,String password);
	
	public List<User> findAllUser();
	
	public User checkOneUser(String username);
	
	public int insertOneUser(User user);
	
	public int deleteOneUser(int id);
	
	public int updateOneUser(User user);
	
	public int updatePwdbyid(int id,String password);
}
