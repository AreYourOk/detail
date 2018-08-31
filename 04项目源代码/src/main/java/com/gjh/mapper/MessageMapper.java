package com.gjh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gjh.model.Message;
@Mapper
public interface MessageMapper {

	public int addOneMessage(Message message);
	
	public List<Message> findAllMessage();

	public Message findOneMessagebyid(int id);
}
