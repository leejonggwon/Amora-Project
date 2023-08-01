package com.model;

public class MemberDTO {
	// 데이터베이스 정보를 자바에서 묶어서 관리하는것
	private String id;
	private String pw;
	private String nick;
	private String email;
	private String phone;
	private String gender;
	private int age;
	
	

	public MemberDTO(String id, String pw) {
		
		this.id = id;
		this.pw = pw;
	}

	public MemberDTO(String id, String pw, String nick, String email, String phone, String gender, int age) {

		this.id = id;
		this.pw = pw;
		this.nick = nick;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
		this.age = age;
	}

	public String getId() {
		return id;
	}

	public String getPw() {
		return pw;
	}

	public String getNick() {
		return nick;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getGender() {
		return gender;
	}

	public int getAge() {
		return age;
	}

}
