package com.team.menu3;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.team.account.Account;
import com.team.menu2.DBManager;

public class Menu3Dao {

	public static void getAllmenu(HttpServletRequest request) {
		
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.connect();
			String sql = "select * from menu3_01 order by m_date desc";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<Menu3> menus = new ArrayList<Menu3>();
			Menu3 m = null;
			
			while (rs.next()) {
				
				m = new Menu3(rs.getInt("m_no"), rs.getString("m_title"), rs.getString("m_nickname"), rs.getString("m_txt"), rs.getString("m_kakao"), rs.getDate("m_date"));
				menus.add(m);
			}
			
			request.setAttribute("menus", menus);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
		
		
	}

	public static void getMenu(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.connect();
			String sql = "select * from menu3_01 where m_no = ?";
			pstmt = con.prepareStatement(sql);
			
	    int no = Integer.parseInt(request.getParameter("no"));
		pstmt.setInt(1, no);	
			
		rs = pstmt.executeQuery();
		
		Menu3 m = null;
		if(rs.next()) {
		m = new Menu3(rs.getInt("m_no"), rs.getString("m_title"), rs.getString("m_nickname"), rs.getString("m_txt"), rs.getString("m_kakao"), rs.getDate("m_date"));	
				request.setAttribute("menu", m);
		}
			
			
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
		
		
		
	}

	public static void updateMenu(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			request.setCharacterEncoding("utf-8");
			con = DBManager.connect();
			String sql = "insert into menu3_01 values(menu3_01_seq.nextval,?,?,?,?,sysdate)";
			pstmt = con.prepareStatement(sql);
			
			String title = request.getParameter("title");	
			String txt = request.getParameter("txt");	
			
			Account a = (Account)request.getSession().getAttribute("accountInfo");
			String nickname = a.getNickname();
			String kakao = a.getKakao();
			
			pstmt.setString(1, title);
			pstmt.setString(2, nickname);
			pstmt.setString(3, txt);
			pstmt.setString(4, kakao);
		   
			
		   
			
		if(pstmt.executeUpdate()==1) {
			request.setAttribute("r", "등록성공");
		}
		   
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "등록실패");
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
		
		
	}

	public static void deleteMenu(HttpServletRequest request) {
		
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = DBManager.connect();
			String sql = "delete menu3_01 where m_no = ?";
			pstmt = con.prepareStatement(sql);
			
			String no = request.getParameter("no");
			pstmt.setString(1, no);
			
			if(pstmt.executeUpdate()==1) {
				System.out.println("삭제성공");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("서버에러");
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
		
		
	}
		
	
	
		
		
		
		
		
	

	
	
	
	
	
	
	
	
	
}
