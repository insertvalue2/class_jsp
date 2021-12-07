package com.company.aboutking.bean;

public class MemberBean {
	
	// 반드시 form 태그에 name (키 값 이름과 같아야 자동으로 맵핑해 준다. JSP 기술)
	private String id; 
	private String pass1; 
	private String email; 
	private String tel;  
	private String address;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass1() {
		return pass1;
	}
	public void setPass1(String pass1) {
		this.pass1 = pass1;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	} 
	
}
