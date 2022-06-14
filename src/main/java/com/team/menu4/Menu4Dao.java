package com.team.menu4;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.team.account.Account;
import com.team.menu2.DBManager;

public class Menu4Dao {

	public static void getAllmenu(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.connect();
			String sql = "select * from menu4_01 order by m_date desc";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<Menu4> menus = new ArrayList<Menu4>();
			Menu4 m = null;
			
			while (rs.next()) {
				m = new Menu4(rs.getInt("m_no"), rs.getString("m_title"), rs.getString("m_nickname"), rs.getString("m_txt"), rs.getString("m_img"), rs.getDate("m_date"));
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
			String sql = "select * from menu4_01 where m_no = ?";
			pstmt = con.prepareStatement(sql);
			
	    int no = Integer.parseInt(request.getParameter("no"));
		pstmt.setInt(1, no);	
			
		rs = pstmt.executeQuery();
		
		Menu4 m = null;
		
		if(rs.next()) {
			
			m = new Menu4(rs.getInt("m_no"), rs.getString("m_title"), rs.getString("m_nickname"), rs.getString("m_txt"), rs.getString("m_img"), rs.getDate("m_date"));
			request.setAttribute("menu", m);
		}
			
			
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
		
		
		
		
	}

	public static void regMenu(HttpServletRequest request) {
		
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = DBManager.connect();
			String sql = "insert into menu4_01 values(menu2_01_seq.nextval,?,?,?,?,sysdate)";
			pstmt = con.prepareStatement(sql);
			//insert into menu4_01 values(menu4_01_seq.nextval,'����1','�г���1','����1','����1',sysdate);
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
			request.setAttribute("r", "��ϼ���");
		}
		   
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "��Ͻ���");
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
		
		
		
		
		
		
	}

	public static void deleteMenu(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = DBManager.connect();
			String sql = "delete menu4_01 where m_no = ?";
			pstmt = con.prepareStatement(sql);
			
			String no = request.getParameter("no");
			pstmt.setString(1, no);
			
			if(pstmt.executeUpdate()==1) {
				System.out.println("��������");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("��������");
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
		
		
	}

	
	
	
	
	
}
