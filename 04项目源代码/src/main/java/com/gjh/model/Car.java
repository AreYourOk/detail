package com.gjh.model;

public class Car {

	private int id,registeryear,mileage,airbags,price,seat,power,stock,saled;
	private String modal,color,damage,picture,area;
	public Car(int id, String modal, int registeryear, int mileage, int power, int seat, String color,
			int airbags, String damage,String picture, int price, String area,int stock,int saled) {
		super();
		this.id = id;
		this.registeryear = registeryear;
		this.mileage = mileage;
		this.seat = seat;
		this.airbags = airbags;
		this.price = price;
		this.modal = modal;
		this.power = power;
		this.color = color;
		this.damage = damage;
		this.picture = picture;
		this.area = area;
		this.stock = stock;
		this.saled = saled;
	}
	public Car() {
		super();
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getRegisteryear() {
		return registeryear;
	}
	public void setRegisteryear(int registeryear) {
		this.registeryear = registeryear;
	}
	public int getMileage() {
		return mileage;
	}
	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	public int getSeat() {
		return seat;
	}
	public void setSeat(int seat) {
		this.seat = seat;
	}
	public int getAirbags() {
		return airbags;
	}
	public void setAirbags(int airbags) {
		this.airbags = airbags;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getModal() {
		return modal;
	}
	public void setModal(String modal) {
		this.modal = modal;
	}
	public int getPower() {
		return power;
	}
	public void setPower(int power) {
		this.power = power;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getDamage() {
		return damage;
	}
	public void setDamage(String damage) {
		this.damage = damage;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getSaled() {
		return saled;
	}
	public void setSaled(int saled) {
		this.saled = saled;
	}
	@Override
	public String toString() {
		return "Car [id=" + id + ", registeryear=" + registeryear
				+ ", mileage=" + mileage + ", airbags=" + airbags + ", price="
				+ price + ", seat=" + seat + ", modal=" + modal + ", power="
				+ power + ", color=" + color + ", damage=" + damage
				+ ", picture=" + picture + ", area=" + area + "]";
	}
}
