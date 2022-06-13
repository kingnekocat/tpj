package com.team.menu3;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.team.main.DBManager;
import com.team.menu2.Menu2;

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
		
		
		
		
		
	

	
	
	
	
	
	
	
	
	
}
