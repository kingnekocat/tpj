package com.team.menu2;

import java.util.Date;

public class Menu2 {

	private int m_no; 
	private String m_title; 
	private String m_nickname; 
	private String m_txt; 
	private String m_img; 
	private Date m_date;
	private String m_id;
	
	public Menu2() {
		// TODO Auto-generated constructor stub
	}

	public Menu2(int m_no, String m_title, String m_nickname, String m_txt, String m_img, Date m_date, String m_id) {
		super();
		this.m_no = m_no;
		this.m_title = m_title;
		this.m_nickname = m_nickname;
		this.m_txt = m_txt;
		this.m_img = m_img;
		this.m_date = m_date;
		this.m_id = m_id;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public String getM_title() {
		return m_title;
	}

	public void setM_title(String m_title) {
		this.m_title = m_title;
	}

	public String getM_nickname() {
		return m_nickname;
	}

	public void setM_nickname(String m_nickname) {
		this.m_nickname = m_nickname;
	}

	public String getM_txt() {
		return m_txt;
	}

	public void setM_txt(String m_txt) {
		this.m_txt = m_txt;
	}

	public String getM_img() {
		return m_img;
	}

	public void setM_img(String m_img) {
		this.m_img = m_img;
	}

	public Date getM_date() {
		return m_date;
	}

	public void setM_date(Date m_date) {
		this.m_date = m_date;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
	
	
	
	
}
