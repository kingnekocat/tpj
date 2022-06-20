package com.team.menu3;

import java.util.Date;

public class Menu3 {

	
		private int m_no; 
		private String m_title;
		private String m_nickname;
		private String m_txt;
		private String m_kakao;
		private Date m_date;
		private String m_id;
	
		public Menu3() {
			// TODO Auto-generated constructor stub
		}

		public Menu3(int m_no, String m_title, String m_nickname, String m_txt, String m_kakao, Date m_date,
				String m_id) {
			super();
			this.m_no = m_no;
			this.m_title = m_title;
			this.m_nickname = m_nickname;
			this.m_txt = m_txt;
			this.m_kakao = m_kakao;
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

		public String getM_kakao() {
			return m_kakao;
		}

		public void setM_kakao(String m_kakao) {
			this.m_kakao = m_kakao;
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
