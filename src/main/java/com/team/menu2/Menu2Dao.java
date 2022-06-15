package com.team.menu2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.team.account.Account;

public class Menu2Dao {

	public static void getAllmenu2(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.connect();
			String sql = "select * from menu2_01 order by m_date desc";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<Menu2> menus = new ArrayList<Menu2>();
			Menu2 m = null;
			
			while (rs.next()) {
				
				m = new Menu2(rs.getInt("m_no"), rs.getString("m_title"), rs.getString("m_nickname"), rs.getString("m_txt"), rs.getString("m_img"), rs.getDate("m_date"));
				menus.add(m);
			}
			
			request.setAttribute("menus", menus);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
		
		
	}

	public static void regMenu(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = DBManager.connect();
			String sql = "insert into menu2_01 values(menu2_01_seq.nextval,?,?,?,?,sysdate)";
			pstmt = con.prepareStatement(sql);
			
			String path = request.getServletContext().getRealPath("img");
			MultipartRequest mr = new MultipartRequest(request, path, 31457280, "utf-8",
			new DefaultFileRenamePolicy());	
			
			
		   String title = mr.getParameter("title");
		   String txt = mr.getParameter("txt");
		   String img = mr.getFilesystemName("file");
		   Account a = (Account)request.getSession().getAttribute("accountInfo");
		   String nickname = a.getNickname();
			
		   
		   
		   pstmt.setString(1, title);
		   pstmt.setString(2, nickname);
		   pstmt.setString(3, txt);
		   pstmt.setString(4, img);
			
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

	public static void getMenu(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.connect();
			String sql = "select * from menu2_01 where m_no = ?";
			pstmt = con.prepareStatement(sql);
			
	    int no = Integer.parseInt(request.getParameter("no"));
		pstmt.setInt(1, no);	
			
		rs = pstmt.executeQuery();
		
		Menu2 m = null;
		if(rs.next()) {
			m = new Menu2(rs.getInt("m_no"), rs.getString("m_title"), rs.getString("m_nickname"), rs.getString("m_txt"), rs.getString("m_img"), rs.getDate("m_date"));
		request.setAttribute("menu", m);
		}
		
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
		
		
		
	}

	public static void deleteMenu(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = DBManager.connect();
			String sql = "delete menu2_01 where m_no = ?";
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

	public static void updateMenu(HttpServletRequest request) {
		
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			request.setCharacterEncoding("utf-8");
			con = DBManager.connect();
			String sql = "update menu2_01 set m_title = ?, m_txt =? where m_no = ?";
			pstmt = con.prepareStatement(sql);
			
			String title = request.getParameter("title");
			String txt = request.getParameter("txt");
			String no = request.getParameter("no");
			
			pstmt.setString(1, title);
			pstmt.setString(2, txt);
			pstmt.setString(3, no);
			
			
			
			if(pstmt.executeUpdate()==1) {
				System.out.println("수정 성공");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("서버에러");
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
		
		
		
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
