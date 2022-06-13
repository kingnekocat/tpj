package com.team.menu4;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.team.main.DBManager;
import com.team.menu3.Menu3;

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

	
	
	
	
	
}
