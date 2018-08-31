package com.gjh.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.gjh.model.Car;
import com.gjh.model.Modal;
import com.gjh.model.Order;
import com.gjh.model.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.gjh.mapper.CarMapper;
import com.gjh.mapper.ModalMapper;
import com.gjh.mapper.OrderMapper;

@Controller
public class CarsController {
	
	@Autowired
	CarMapper carMapper;
	
	@Autowired
	ModalMapper modalMapper;
	
	@Autowired
	OrderMapper orderMapper;
	
	@GetMapping("/managecar")
	public String manageuser(Model model){
		List<Car> listcar = carMapper.findAllCarfordamin();
		model.addAttribute("listcar", listcar);
		return "managecar";
	}
	
	@GetMapping("/updcar/{id}")
	public String updcarbyid(@PathVariable int id, Model model){
		Car car = carMapper.findOneCarbyid(id);
		model.addAttribute("car", car);
		model.addAttribute("id", id);
		List<Modal> listmodal = modalMapper.findAllModal();
		model.addAttribute("listmodal", listmodal);
		return "updcar";
	}
	
	@PostMapping("/doupdcar")
	public String doupd(@RequestParam int id, @RequestParam String modal, @RequestParam int registeryear,
		@RequestParam int mileage, @RequestParam int power,@RequestParam int seat,@RequestParam String color,
		@RequestParam int airbags,@RequestParam String damage,@RequestParam String picture,
		@RequestParam int price, @RequestParam String area,@RequestParam String pic,
		@RequestParam int stock, Model model){
		picture = picture==""?pic:picture;
		Car car = new Car(id, modal, registeryear, mileage, power, seat, color, airbags, damage, picture, price, area,stock,0);
		System.out.println(car);
		int i = carMapper.updOneCar(car);
		List<Car> listcar = carMapper.findAllCar();
		model.addAttribute("listcar", listcar);
		model.addAttribute("tip", "修改成功！");
		return "managecar";
	}
	
	@GetMapping("/delcar/{id}")
	public String delcarbyid(@PathVariable int id, Model model){
		int i = carMapper.delOneCar(id);
		List<Car> listcar = carMapper.findAllCar();
		model.addAttribute("listcar", listcar);
		model.addAttribute("tip", "删除成功！");
		return "./managecar";
	}
	
	@GetMapping("/addcar")
	public String addcar(Model model){
		List<Modal> listmodal = modalMapper.findAllModal();
		model.addAttribute("listmodal", listmodal);
		return "addcar";
	}
	
	@PostMapping("/doaddcar")
	public String doaddcar( @RequestParam String modal, @RequestParam int registeryear,
@RequestParam int mileage, @RequestParam int power,@RequestParam int seat,@RequestParam String color,
@RequestParam int airbags,@RequestParam String damage,@RequestParam String picture,@RequestParam int price,
@RequestParam String area,@RequestParam int stock, Model model){
		Car car = new Car(0, modal, registeryear, mileage, power, seat, color, airbags, damage, picture, price, area, stock, 0);
		System.out.println(car);
		int i = carMapper.addOneCar(car);
		List<Car> listcar = carMapper.findAllCar();
		model.addAttribute("listcar", listcar);
		model.addAttribute("tip", "添加成功！");
		return "managecar";
	}
	
	@GetMapping("/managemodal")
	public String managemodal(Model model){
		List<Modal> listmodal = modalMapper.findAllModal();
		model.addAttribute("listmodal", listmodal);
		return "managemodal";
	}
	
	@GetMapping("/addmodal")
	public String addmodal(){
		return "addmodal";
	}
	
	@PostMapping("/doaddmodal")
	public String doaddmodal(@RequestParam String modalname,Model model){
		Modal modal = new Modal(0,modalname);
		int i = modalMapper.insertOneModal(modal);
		List<Modal> listmodal = modalMapper.findAllModal();
		model.addAttribute("listmodal", listmodal);
		return "managemodal";
	}
	
	@PostMapping("/showcars")
	public String showcars(@RequestParam String modal, @RequestParam String price, Model model,
							HttpServletRequest request){
		HttpSession session = request.getSession();
		List<Car> carlist = null;
		List<Modal> modallist = modalMapper.findAllModal();
		session.setAttribute("modallist", modallist);
		if("--ALL--".equals(price)){
			model.addAttribute("mx", "0");
			if("--ALL--".equals(modal)){
				carlist = carMapper.findAllCar();
			}
			else{
				carlist = carMapper.findAllCarbymodal(modal);
			}
		}else{
			int mn=0,mx=0,i=0;
			while(price.charAt(i)!='~'){
				mn *= 10;
				mn += Integer.parseInt(""+price.charAt(i));
				i++;
			}
			i++;
			while(i < price.length() && price.charAt(i)!='∞'){
				mx *= 10;
				mx += Integer.parseInt(""+price.charAt(i));
				i++;
			}
			System.out.println(mn+" "+mx);
			if("--ALL--".equals(modal)){
				if(mn==100000){
					carlist = carMapper.findAllCarbymxprice();
				}else {
					carlist = carMapper.findAllCarbyprice(mn,mx);
				}
			}
			else{
				if(mn==100000){
					carlist = carMapper.findAllCarbymxboth(modal);
				}else {
					carlist = carMapper.findAllCarbyboth(modal, mn, mx);
				}
			}
			if(mn==100000)
				mx = 1000000;
			session.setAttribute("mx", ""+mx);
		}
		session.setAttribute("carlist", carlist);
		session.setAttribute("nowmodal", modal);
		model.addAttribute("page", 1);
		return "showcars";
	}
	
	@GetMapping("/showcars/{page}")
	public String showcarsbypage(@PathVariable int page,Model model){
		model.addAttribute("page", page);
		return "./showcars";
	}
	
	@GetMapping("/single/{id}")
	public String buycar(@PathVariable int id,Model model){
		Car car = carMapper.findOneCarbyid(id);
		model.addAttribute("showcar", car);
		return "single";
	}
	
	@PostMapping("/buycar")
	public String buycar(@RequestParam int carid,@RequestParam String carmodal,@RequestParam int price,HttpServletRequest request,Model model){
		HttpSession session = request.getSession();
		User nowUser = (User)session.getAttribute("nowuser");
		if(nowUser==null){
			model.addAttribute("tip", "请先登录!");
			return "join";
		}else{
			Order order = new Order(0,nowUser.getId(),nowUser.getUsername(),carid,carmodal,1,price,1);
			int i =orderMapper.addOrder(order);
			i = carMapper.desstock(carid);
			return "Tip";
		}
	}
}
