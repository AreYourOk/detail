package com.example.mapper;

import java.util.List;

import model.Order;

public interface OrderMapper {
	
	public List<Order> findAllOrders1();
	
	public List<Order> findAllOrderbyuserids0(int userid);
	
	public List<Order> findAllOrderbyuserids1(int userid);
	
	public Order findAllOrderbybothids0(int userid,int carid);
	
	public int addOrder(Order order);
	
	public int dealOneOrder(int id);
	
	public int dealAllOrder(int userid);
	
	public int updOrder(Order order);
}
