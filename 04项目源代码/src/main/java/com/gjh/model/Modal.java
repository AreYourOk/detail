package com.gjh.model;

public class Modal {

	private int id;
	private String modalname;
	public Modal(int id, String modalname) {
		super();
		this.id = id;
		this.modalname = modalname;
	}
	public Modal() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getModalname() {
		return modalname;
	}
	public void setModalname(String modalname) {
		this.modalname = modalname;
	}
	@Override
	public String toString() {
		return "Modal [id=" + id + ", modalname=" + modalname + "]";
	}
}
