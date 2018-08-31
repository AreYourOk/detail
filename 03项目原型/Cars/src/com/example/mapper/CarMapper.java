package com.example.mapper;

import java.util.List;

import model.Car;
import model.City;

public interface CarMapper {
	public List<Car> findAllCar();
	
	public List<Car> findAllCarfordamin();
	
	public List<Car> findSixCar();
	
	public Car findOneCarbyid(int id);
	
	public List<Car> findAllCarbymxprice();

	public List<Car> findAllCarbymxboth(String modal);
	
	public List<Car> findAllCarbymodal(String modal);
	
	public List<Car> findAllCarbyprice(int mnprice,int mxprice);
	
	public List<Car> findAllCarbyboth(String modal,int mnprice,int mxprice);
	
	public int updOneCar(Car car);
	
	public int delOneCar(int id);
	
	public int addOneCar(Car car);
	
	public int desstock(int id);

}
