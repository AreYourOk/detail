package com.gjh.model;

public class Order {

	private int id,userid,carid,number,price,station;
	private String carmodal,username;
	
	public Order(int id, int userid, String username,int carid, String carmodal, int number, int price,
			int station) {
		super();
		this.id = id;
		this.userid = userid;
		this.carid = carid;
		this.username = username;
		this.carmodal = carmodal;
		this.number = number;
		this.price = price;
		this.station = station;
	}

	public Order() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public int getCarid() {
		return carid;
	}

	public void setCarid(int carid) {
		this.carid = carid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getCarmodal() {
		return carmodal;
	}

	public void setCarmodal(String carmodal) {
		this.carmodal = carmodal;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getStation() {
		return station;
	}

	public void setStation(int station) {
		this.station = station;
	}

	@Override
	public String toString() {
		return "Order [id=" + id + ", userid=" + userid + ", carid=" + carid
				+ ", number=" + number + ", price=" + price + ", station="
				+ station + "]";
	}
	
}
