package com.team.account;

public class Account {
	private String id;
	private String pw;
	private String name;
	private String nickname;
	private int age;
	private String gender;
	private String region;
	private String kakao;
	
	public Account() {
		// TODO Auto-generated constructor stub
	}

	public Account(String id, String pw, String name, String nickname, int age, String gender, String region,
			String kakao) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.nickname = nickname;
		this.age = age;
		this.gender = gender;
		this.region = region;
		this.kakao = kakao;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getKakao() {
		return kakao;
	}

	public void setKakao(String kakao) {
		this.kakao = kakao;
	}
	
	
	
	
	
}
