package com.team.friend;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.team.account.Account;
import com.team.main.DBManager;
import com.team.menu1.Menu1B;

public class test {

	
	public static void ViewAccountList(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Account a = (Account)request.getSession().getAttribute("accountInfo");
		
		try {
			con = DBManager.connect();
			
			String	sql = "select * from account01";
			pstmt = con.prepareStatement(sql);
			
			
			rs = pstmt.executeQuery();
			
			ArrayList<Account> ac = new ArrayList<Account>();
			Account r = null;
			while (rs.next()) {
				r = new Account();
				r.setId(rs.getString("id"));
					ac.add(r);
				}
					
				request.setAttribute("id", ac);

			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, null);
			
		}		
		
	}
	
}
