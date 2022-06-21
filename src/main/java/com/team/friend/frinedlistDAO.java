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
    PreparedStatement pstmt2 = null;

    ResultSet rs = null;
    String sql2 = "select * from friendlist where f_myid=? and f_yourid=?";
    Account a = (Account)request.getSession().getAttribute("accountInfo");

    try {
        con = DBManager.connect();
        pstmt2 = con.prepareStatement(sql2);

        String myId = a.getId();

        String yourid = request.getParameter("no");

        pstmt2.setString(1, myId);
        pstmt2.setString(2, yourid);

        rs = pstmt2.executeQuery();

         if (myId.equals(yourid)) {
            String sql = "insert into friendlist values(friendlist_seq.nextval, ?, ?)";
            pstmt = con.prepareStatement(sql);
            request.setAttribute("flr", "자기자신은 추가할 수 없음");
            System.out.println("2");
        } else if (!rs.next()) {
            String sql = "insert into friendlist values(friendlist_seq.nextval, ?, ?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, myId);
            pstmt.setString(2, yourid);
            System.out.println("1");
        } else {
            String sql = "insert into friendlist values(friendlist_seq.nextval, ?, ?)";
            pstmt = con.prepareStatement(sql);
            request.setAttribute("flr", "이미 등록되어 있는 상대");
            System.out.println("3");

        }




        if (pstmt.executeUpdate() == 1) {
            System.out.println("추가성공");
        } 

    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        DBManager.close(con, pstmt, rs);
    }

}



public static void YourDetail(HttpServletRequest request) {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		
		con = DBManager.connect();
		String gen = request.getParameter("gen");
		
		
		
		Account a = (Account)request.getSession().getAttribute("accountInfo");

			String	sql = "select * from account01 where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("no"));
		
		
		rs = pstmt.executeQuery();
		
	ArrayList<Account> yourac = new ArrayList<Account>();
	Account ac = null;
	while (rs.next()) {
		ac = new Account();
		ac.setId(rs.getString("id"));
		ac.setPw(rs.getString("pw"));
		ac.setName(rs.getString("name"));
		ac.setNickname(rs.getString("nickname"));
		ac.setAge(rs.getInt("age"));
		ac.setGender(rs.getString("gender"));
		ac.setRegion(rs.getString("region"));
		ac.setKakao(rs.getString("kakao"));
			yourac.add(ac);
		}
		
		
		request.setAttribute("ac", ac);
	
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		DBManager.close(con, pstmt, null);
}


}

public static void DeleteFriend(HttpServletRequest request) {
	Connection con = null;
	PreparedStatement pstmt = null;
	
	try {
		con = DBManager.connect();
		String sql = "delete friendlist where f_yourid=? and f_myid=?";
		pstmt = con.prepareStatement(sql);
		
		Account a = (Account)request.getSession().getAttribute("accountInfo");
		String myid = a.getId();
		
		String id = request.getParameter("no");
		pstmt.setString(1, id);
		pstmt.setString(2, myid);
		
		if(pstmt.executeUpdate() == 1) {
			request.setAttribute("r", "삭제 성공");
		}
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		DBManager.close(con, pstmt, null);
	}
	
}

}
