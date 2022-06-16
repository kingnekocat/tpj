package com.team.friend;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.team.account.Account;
import com.team.main.DBManager;
import com.team.menu1.Menu1B;

public class frinedlistDAO {

public static void FriendListCreate(HttpServletRequest request) {

	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	Account a = (Account)request.getSession().getAttribute("accountInfo");
	
	try {
		con = DBManager.connect();
		
		String sql = "create table frinedlist_?(\r\n"
				+ "	f_myid varchar2 (30 char) primary key,\r\n"
				+ "	f_id varchar2 (30 char) not null,\r\n"
				+ "	f_nickname varchar2 (30 char) not null,\r\n"
				+ "	f_age varchar2 (3 char) not null,\r\n"
				+ "	f_gender varchar2 (3 char) not null,\r\n"
				+ "	f_region varchar2 (30 char) not null,\r\n"
				+ "	f_kakao varchar2 (30 char) not null\r\n"
				+ ")";
		
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

public static void ViewFriendList(HttpServletRequest request) {
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	Account a = (Account)request.getSession().getAttribute("accountInfo");
	
	try {
		con = DBManager.connect();
		
		String	sql = "select * from friendlist where f_myid=?";
		pstmt = con.prepareStatement(sql);
		
		String myId = a.getId();
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, myId);
		rs = pstmt.executeQuery();
		
		ArrayList<FriendB> fl = new ArrayList<FriendB>();
		FriendB f = null;
		while (rs.next()) {
			f = new FriendB();
			f.setNum(rs.getInt("f_num"));
			f.setMyid(rs.getString("f_myid"));
			f.setYourid(rs.getString("f_yourid"));
			fl.add(f);
			}
				
			request.setAttribute("friend", fl);
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		DBManager.close(con, pstmt, null);
		
	}		
	
}

public static void addFriend(HttpServletRequest request) {
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "insert into friendlist values(friendlist_seq.nextval, ?, ?)";
	Account a = (Account)request.getSession().getAttribute("accountInfo");
	
	
	try {
		con = DBManager.connect();
		pstmt = con.prepareStatement(sql);

		String myId = a.getId();
		
		String yourid = request.getParameter("no");
		
		
		pstmt.setString(1, myId);
		pstmt.setString(2, yourid);
		
		if (pstmt.executeUpdate() == 1) {
			System.out.println("�߰�����");
		} 
		
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		DBManager.close(con, pstmt, rs);
	}
	
}

}