package model;

import javax.xml.bind.annotation.XmlRootElement;


public class City {

	public int id;
	public String name,prove,country;
	public City(int id, String name, String prove, String country) {
		super();
		this.id = id;
		this.name = name;
		this.prove = prove;
		this.country = country;
	}
	public City() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrvce() {
		return prove;
	}
	public void setProce(String prove) {
		this.prove = prove;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	@Override
	public String toString() {
		return "City [id=" + id + ", name=" + name + ", proce=" + prove
				+ ", country=" + country + "]";
	}
	
}
