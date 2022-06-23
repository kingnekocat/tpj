package com.team.menu2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

// DB관련 작업을 할때 매번 연결코드를 쓴 이후 작업 해옴

// 그거 AOP 하자
public class DBManager {

	// db작업시엔 어쨌든 연결 해야됨
	public static Connection connect() throws SQLException {

		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		
		return DriverManager.getConnection(url, "jys", "jys");

	}
	
	// 닫을거 많은데 한번에 닫기
	
	public static void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		
		try {
			if(rs != null) {
			rs.close();
			}
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
				
		
	
	
	
	}
}
