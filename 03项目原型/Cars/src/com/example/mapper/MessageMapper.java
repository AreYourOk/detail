package com.example.mapper;

import java.util.List;

import model.Message;

public interface MessageMapper {

	public int addOneMessage(Message message);
	
	public List<Message> findAllMessage();

	public Message findOneMessagebyid(int id);
}
