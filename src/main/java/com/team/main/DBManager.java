package com.team.main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBManager {

public static Connection connect() throws SQLException {
		
//		String url = "jdbc:oracle:thin:@localhost:1521:xe";
//		
//		return DriverManager.getConnection(url, "jys", "jys");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
//	String url = "jdbc:oracle:thin:@db20220512144543_medium?TNS_ADMIN=C:/Users/user/Downloads/프로그래밍수업/Wallet_DB20220512144543";
		return DriverManager.getConnection(url, "c##ej1234", "ej1234");
	}
	
	// 한번에 닫기
	public static void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		try {
			if ( rs != null) {
			rs.close();
			pstmt.close();
			con.close(); 
			}} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
		}
	
}
