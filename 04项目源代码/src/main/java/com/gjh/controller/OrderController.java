package com.gjh.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.gjh.model.Order;
import com.gjh.model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.gjh.mapper.CarMapper;
import com.gjh.mapper.OrderMapper;

@Controller
public class OrderController {
	
	@Autowired
	OrderMapper orderMapper;
	
	@Autowired
	CarMapper carMapper;
	
	@PostMapping("/dealoneorder")
	public String dealonerder(HttpServletRequest request,@RequestParam int id,@RequestParam int price,Model model){
		int i = orderMapper.dealOneOrder(id);
		HttpSession session = request.getSession();
		User nowuser = (User)session.getAttribute("nowuser");
		List<Order> orderlist = orderMapper.findAllOrderbyuserids0(nowuser.getId());
		model.addAttribute("orderlist", orderlist);
		int sumn=0,sump=0;
		for(Order order:orderlist){
			sumn += order.getNumber();
			sump += order.getPrice();
		}
		model.addAttribute("sumn", sumn);
		model.addAttribute("sump", sump);
		model.addAttribute("tip", "结算成功,付款"+price+"美元");
		return "shopcar";
	}
	
	@PostMapping("/dealallorder")
	public String dealallrder(HttpServletRequest request,@RequestParam int sumprice,Model model){
		HttpSession session = request.getSession();
		User nowuser = (User)session.getAttribute("nowuser");
		int i = orderMapper.dealAllOrder(nowuser.getId());
		model.addAttribute("tip", "结算成功,付款"+sumprice+"美元");
		model.addAttribute("sumn", 0);
		return "shopcar";
	}
	
	@PostMapping("/addshopcar")
	public String addshopcar(@RequestParam int carid2,@RequestParam String carmodal2,@RequestParam int price2,HttpServletRequest request,Model model){
		int i;
		HttpSession session = request.getSession();
		User nowUser = (User)session.getAttribute("nowuser");
		if(nowUser==null){
			model.addAttribute("tip", "请先登录!");
			return "join";
		}else{
			Order order = orderMapper.findAllOrderbybothids0(nowUser.getId(), carid2);
			if(order==null){
				order = new Order(0,nowUser.getId(),nowUser.getUsername(),carid2,carmodal2,1,price2,0);
				i =orderMapper.addOrder(order);	
			}else{
				order.setNumber(order.getNumber()+1);
				order.setPrice(order.getPrice()+price2);
				i = orderMapper.updOrder(order);
			}
					
			i = carMapper.desstock(carid2);
			return "Tip";
		}
	}
	
	@GetMapping("/manageorder")
	public String manageorder(Model model){
		List<Order> orderlist = orderMapper.findAllOrders1();
		model.addAttribute("orderlist", orderlist);
		return "manageorder";
	}
}
