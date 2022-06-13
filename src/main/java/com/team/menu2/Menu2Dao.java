package com.team.menu2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.team.main.DBManager;

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
			String sql = "";
			pstmt = con.prepareStatement(sql);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
		
		
		
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
