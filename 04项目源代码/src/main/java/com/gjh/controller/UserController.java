package com.gjh.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gjh.model.Car;
import com.gjh.model.Message;
import com.gjh.model.Modal;
import com.gjh.model.Order;
import com.gjh.model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.gjh.mapper.CarMapper;
import com.gjh.mapper.MessageMapper;
import com.gjh.mapper.ModalMapper;
import com.gjh.mapper.OrderMapper;
import com.gjh.mapper.UserMapper;

@Controller
public class UserController {

	@Autowired
	UserMapper userMapper;
	
	@Autowired
	ModalMapper modalMapper;
	
	@Autowired
	CarMapper carMapper;
	
	@Autowired
	OrderMapper orderMapper;
	
	@Autowired
	MessageMapper messageMapper;
	
	@RequestMapping("/index")
	public String index(Model model){
		List<Modal> modallist = modalMapper.findAllModal();
		model.addAttribute("modallist", modallist);
		List<Car> carlist = carMapper.findSixCar();
		model.addAttribute("carlist", carlist);
		return "index";
	}
	
	@GetMapping("/single")
	public String single(){
		return "single";
	}
	
	@GetMapping("/contact")
	public String contact(){
		return "contact";
	}
	
	@GetMapping("/join")
	public String login(){
		return "join";
	}
	
	@GetMapping("/centre")
	public String centre(){
		return "hindex";
	}
	
	@GetMapping("/manageuser")
	public String manageuser(Model model){
		List<User> listuser = userMapper.findAllUser();
		model.addAttribute("listuser", listuser);
		return "manageuser";
	}
	
	@GetMapping("/managemessage")
	public String managemessage(Model model){
		List<Message> messagelist = messageMapper.findAllMessage();
		model.addAttribute("messagelist", messagelist);
		return "managemessage";
	}
	
	@GetMapping("/showmessage/{id}")
	public String showmessage(@PathVariable int id, Model model){
		Message showmessage = messageMapper.findOneMessagebyid(id);
		model.addAttribute("showmessage", showmessage);
		return "showmessage";
	}
	
	@GetMapping("/myuser")
	public String myuser(){
		return "myuser";
	}
	
	@GetMapping("/userinfo")
	public String userinfo(){
		return "userinfo";
	}
	
	@GetMapping("/shopcar")
	public String shopcar(HttpServletRequest request, Model model){
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
		return "shopcar";
	}
	
	@GetMapping("/purchased")
	public String purchased(HttpServletRequest request, Model model){
		HttpSession session = request.getSession();
		User nowuser = (User)session.getAttribute("nowuser");
		List<Order> orderlist = orderMapper.findAllOrderbyuserids1(nowuser.getId());
		model.addAttribute("orderlist", orderlist);
		int sumn=0,sump=0;
		for(Order order:orderlist){
			sumn += order.getNumber();
			sump += order.getPrice();
		}
		model.addAttribute("sumn", sumn);
		model.addAttribute("sump", sump);
		return "purchased";
	}
	
	@PostMapping("/userdoupdinfo")
	public String userdoupdinfo(@RequestParam String name ,@RequestParam String phone,
			@RequestParam String address,HttpServletRequest request,Model model){
		HttpSession session = request.getSession();
		User nowUser = (User)session.getAttribute("nowuser");
		int[] checkint = new int[]{131,132,133,139,137,158,159,171,189};
		int i;
		int head = Integer.parseInt(phone.substring(0, 3));
		System.out.println(head);
		for(i = 0; i < checkint.length; i++){
			if(head == checkint[i])
				break;
		}
		if(!(i < checkint.length && phone.length() == 11)){
			model.addAttribute("tip","联系方式不合法！");
			return "userinfo";
		}
		nowUser.setAddress(address);nowUser.setName(name);nowUser.setPhone(phone);
		int index = userMapper.updateOneUser(nowUser);
		session.setAttribute("nowuser", nowUser);
		model.addAttribute("tip","信息修改成功！");
		return "userinfo";
	}
	
	@GetMapping("/updpwd")
	public String updpwd(){
		return "userpwd";
	}
	
	@PostMapping("/userdoupdpwd")
	public String userdoupdpwd(@RequestParam String password,HttpServletRequest request,Model model){
		HttpSession session = request.getSession();
		User nowuser = (User)session.getAttribute("nowuser");
		int i = userMapper.updatePwdbyid(nowuser.getId(), password);
		session.removeAttribute("nowuser");
		model.addAttribute("tip", "密码修改成功，请重新登录！");
		return "join";
	}
	
	@GetMapping("/deluser/{id}")
	public String deluser(@PathVariable int id, Model model){
		int i = userMapper.deleteOneUser(id);
		List<User> listuser = userMapper.findAllUser();
		model.addAttribute("listuser", listuser);
		return "redirect:/manageuser";
	}
	
	@PostMapping("/findOneUser")
	public String findoneuser(@RequestParam String username,Model model){
		User user = userMapper.checkOneUser(username);
		System.out.println(user);
		List<User> listuser = new ArrayList<User>();
		listuser.add(user);
		model.addAttribute("listuser", listuser);
		return "manageuser";
	}
	
	@PostMapping("/dologin")
	public String dologin(Model model,HttpServletRequest request,HttpServletResponse response){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User user = userMapper.findOneUser(username, password);
		if(user == null){
			model.addAttribute("tip","用户名或密码错误");
			return "join";
		}else{
			HttpSession session = request.getSession();
			session.setAttribute("nowuser", user);
			List<Modal> modallist = modalMapper.findAllModal();
			model.addAttribute("modallist", modallist);
			List<Car> carlist = carMapper.findSixCar();
			model.addAttribute("carlist", carlist);
			return "index";
		}
		
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request,Model model){
		HttpSession session = request.getSession();
		if(session.getAttribute("nowuser")!=null){
			session.removeAttribute("nowuser");
		}
		List<Modal> modallist = modalMapper.findAllModal();
		model.addAttribute("modallist", modallist);
		List<Car> carlist = carMapper.findSixCar();
		model.addAttribute("carlist", carlist);
		return "index";
	}
	@PostMapping("/doregister")
	public String doregister(Model model,HttpServletRequest request,HttpServletResponse response){
		String username = request.getParameter("rusername");
		String password = request.getParameter("rpassword");
		String password2 = request.getParameter("rpassword2");
		String name = request.getParameter("rname");
		String phone = request.getParameter("rphone");
		String address = request.getParameter("raddress");
		if(userMapper.checkOneUser(username)!=null){
			model.addAttribute("tip","用户名已被注册！");
			return "join";
		}
		if(!password.equals(password)){
			model.addAttribute("tip","两次密码输入不一致！");
			return "join";
		}
		int[] checkint = new int[]{131,132,133,139,137,158,159,171,189};
		int i;
		int head = Integer.parseInt(phone.substring(0, 3));
		System.out.println(head);
		for(i = 0; i < checkint.length; i++){
			if(head == checkint[i])
				break;
		}
		if(!(i < checkint.length && phone.length() == 11)){
			model.addAttribute("tip","联系方式不合法！");
			return "join";
		}
		User user = new User(0, username, password, name, phone, address, 0);
		if(userMapper.insertOneUser(user) == 1){
			model.addAttribute("tip","注册成功！");
			return "join";
		}
		else{
			model.addAttribute("tip","注册失败！");
			return "join";
		}
	}

	@PostMapping("/sendcontact")
	public String sendcontact(@RequestParam String name,@RequestParam String email,@RequestParam String subject,@RequestParam String message){
		Message messageinfo = new Message(0,name,email,subject,message);
		int i = messageMapper.addOneMessage(messageinfo);
		return "Tip";
	}
	
	
}
