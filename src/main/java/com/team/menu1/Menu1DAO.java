package com.team.menu1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.team.menu1.Menu1B;
import com.team.main.DBManager;

public class Menu1DAO {

	public static void ViewGenre(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		
	}

	public static void ViewGenreDetail(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			
			con = DBManager.connect();
			String gen = request.getParameter("gen");
			
			if (gen.equals("region")) {
			String	sql = "select * from tpj_restaurant order by tpjr_region";
			pstmt = con.prepareStatement(sql);
			} else {
				String sql = "select * from tpj_restaurant where tpjr_food=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, gen);
				
			}
			
			
			rs = pstmt.executeQuery();
			
		ArrayList<Menu1B> rest = new ArrayList<Menu1B>();
		Menu1B r = null;
		while (rs.next()) {
			r = new Menu1B();
			r.setNum(rs.getInt("tpjr_num"));
			r.setName(rs.getString("tpjr_name"));
			r.setFood(rs.getString("tpjr_food"));
			r.setRegion(rs.getString("tpjr_region"));
				rest.add(r);
			}
				
			request.setAttribute("rest", rest);
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
	}

		
	}

	public static void ViewDetail(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
			try {
				con = DBManager.connect();
				
				String sql = "select * from tpj_restaurant where tpjr_num=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, Integer.parseInt(request.getParameter("nono")));
				rs = pstmt.executeQuery();
				
				
			Menu1B rest = null;
			if (rs.next()) {
				// bean
				rest = new Menu1B();
				rest.setNum(rs.getInt("tpjr_num"));
				rest.setName(rs.getString("tpjr_name"));
				rest.setFood(rs.getString("tpjr_food"));
				rest.setRegion(rs.getString("tpjr_region"));
				request.setAttribute("rest", rest);
				}
					
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				DBManager.close(con, pstmt, null);
				
			}		
	}
}
