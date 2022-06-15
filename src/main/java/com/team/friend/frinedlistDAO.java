package com.team.friend;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import com.team.account.Account;
import com.team.main.DBManager;

public class frinedlistDAO {

public static void FriendListCreate(HttpServletRequest request) {

	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	Account a = (Account)request.getSession().getAttribute("accountInfo");
	
	try {
		con = DBManager.connect();
		String gen = request.getParameter("gen");
		
		String sql = "create table frinedlist_?(\r\n"
				+ "	f_myid varchar2 (30 char) primary key,\r\n"
				+ "	f_id varchar2 (30 char) primary key,\r\n"
				+ "	f_nickname varchar2 (30 char) not null,\r\n"
				+ "	f_age varchar2 (3 char) not null,\r\n"
				+ "	f_gender char (1 char) not null,\r\n"
				+ "	f_region varchar2 (30 char) not null,\r\n"
				+ "	f_kakao varchar2 (30 char) not null\r\n"
				+ ");";
		
		String myId = a.getId();
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, myId);
		rs = pstmt.executeQuery();
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		DBManager.close(con, pstmt, null);
		
	}		
	
	
	
	
	
}
	
}
