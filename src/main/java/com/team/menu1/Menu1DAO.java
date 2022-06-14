package com.team.menu1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.team.menu1.Menu1B;
import com.team.account.Account;
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
			
			
			
			Account a = (Account)request.getSession().getAttribute("accountInfo");
			String hsregion = a.getRegion();

//			System.out.println(hsregion);
			
			if (gen.equals("region")) {
			String	sql = "select * from team_restaurant order by tr_region";
			pstmt = con.prepareStatement(sql);
			} else if (gen.equals(hsregion)) {
				String	sql = "select * from team_restaurant where tr_region=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, gen);
			}else {
				String sql = "select * from team_restaurant where tr_food=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, gen);
				
			}
			
			
			rs = pstmt.executeQuery();
			
		ArrayList<Menu1B> rest = new ArrayList<Menu1B>();
		Menu1B r = null;
		while (rs.next()) {
			r = new Menu1B();
			r.setNum(rs.getInt("tr_num"));
			r.setName(rs.getString("tr_name"));
			r.setFood(rs.getString("tr_food"));
			r.setRegion(rs.getString("tr_region"));
			r.setInform(rs.getString("tr_information"));
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
				
				String sql = "select * from team_restaurant where tr_num=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, Integer.parseInt(request.getParameter("nono")));
				rs = pstmt.executeQuery();
				
				
			Menu1B rest = null;
			if (rs.next()) {
				// bean
				rest = new Menu1B();
				rest.setNum(rs.getInt("tr_num"));
				rest.setName(rs.getString("tr_name"));
				rest.setFood(rs.getString("tr_food"));
				rest.setRegion(rs.getString("tr_region"));
				rest.setInform(rs.getString("tr_information"));
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
