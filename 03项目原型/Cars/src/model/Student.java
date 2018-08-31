package model;

import java.util.Date;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.test.annotation.Timed;

@XmlRootElement
public class Student {
	
	@Size(min=2,max=20)
	String name;
	
	@Min(1) @Max(100)
	int age;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date dbo;
	
	public Student(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}
	public Student() {
		super();
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	public Date getDbo() {
		return dbo;
	}
	public void setDbo(Date dbo) {
		this.dbo = dbo;
	}
	@Override
	public String toString() {
		return "Student [name=" + name + ", age=" + age + ", dbo=" + dbo + "]";
	}

	
}
