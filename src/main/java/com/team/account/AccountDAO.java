package com.team.account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.team.account.DBManager;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AccountDAO {
	
	
	public static void loginCheck(HttpServletRequest req) {
		HttpSession hs = req.getSession();
		Account a = (Account) hs.getAttribute("accountInfo");
		
		
		if (a == null) {
			req.setAttribute("loginPage", "SEJ_Account/login.jsp");
		}else {
			req.setAttribute("loginPage", "SEJ_Account/loginOK.jsp");
		}
		
	}
	
	
	
	

	public static void login(HttpServletRequest request) {
		// 1. 값
				String userId = request.getParameter("id");
				String userPw = request.getParameter("pw");
			
			// 업뎃 기능이 수행되면 값이 실려있고, 아니면 값이 없을꺼
			String iddd = (String) request.getAttribute("iddd");
			String pwww = (String) request.getAttribute("pwww");
			
			if (iddd != null) {
				userId = iddd;
				userPw = pwww;
			}
				
				// 2. db랑 비교
				
				Connection con = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				try {
					String sql = "select * from account01 where id = ?";
					con = DBManager.connect();
					pstmt = con.prepareStatement(sql);
					pstmt.setString(1, userId);
					
					rs = pstmt.executeQuery();
				
					if (rs.next()) {
						
						if (userPw.equals(rs.getString("pw"))) {
							request.setAttribute("r", "로그인 성공");
							// id, name
							Account a = new Account();
							a.setId(rs.getString("id"));
							a.setPw(rs.getString("pw"));
							a.setName(rs.getString("name"));
							a.setNickname(rs.getString("nickname"));
							a.setAge(rs.getInt("age"));
							a.setGender(rs.getString("gender"));
							a.setRegion(rs.getString("region"));
							a.setKakao(rs.getString("kakao"));
							
							
							
							// 세션 써야지
							HttpSession hs = request.getSession();
							hs.setAttribute("accountInfo", a);
							hs.setMaxInactiveInterval(60*5);		// 5분 유지
							//hs.setMaxInactiveInterval(10);		// 10초
							
							
							} else {
								request.setAttribute("r", "패스워드 오류");
								request.setAttribute("rr", "아이디와 비밀번호를 확인해주세요");
						}
					} else {
						request.setAttribute("r", "존재하지 않는 회원");
						request.setAttribute("rr", "아이디와 비밀번호를 확인해주세요");
					}
					
					
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					DBManager.close(con, pstmt, rs);
				}
	}





	public static void logOut(HttpServletRequest request) {
		
		// 로그아웃 하는 일
		// 세션을 죽이자.
		
		HttpSession hs = request.getSession();
//		hs.setAttribute("accountInfo", null);
		hs.removeAttribute("accountInfo");
//		hs.invalidate();
		// 애초에 만들어진적이 없을 때, 설정한 시간이 만료되면, 
		
		
		
		
		
		
		
		
	}



	public static void regAccount(HttpServletRequest request) {
		// 껍데기

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "insert into account01 values (?,?,?,?,?,?,?,?)";
		
		try {
			
		con = DBManager.connect();
		pstmt = con.prepareStatement(sql);

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String nickName = request.getParameter("nickName");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");	
		String region = request.getParameter("region");
		String kakao = request.getParameter("kakao");
		
		System.out.println(id);
		System.out.println(pw);
		System.out.println(name);
		System.out.println(nickName);
		System.out.println(age);
		System.out.println(gender);
		System.out.println(region);
		System.out.println(kakao);

		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, name);
		pstmt.setString(4, nickName);
		pstmt.setString(5, age);
		pstmt.setString(6, gender);
		pstmt.setString(7, region);
		pstmt.setString(8, kakao);
		
		
	 	if (pstmt.executeUpdate()==1) {
			System.out.println("가입 성공");
		} 
		
		
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
		
		
	}


	public static void updateAccount(HttpServletRequest request) {
		// 껍데기
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "update account01\r\n"
				+ "set name = ?, pw = ?, nickname = ?, gender = ?, \r\n"
				+ "region = ?, kakao = ?\r\n"
				+ "where id = ?";
		
		try {
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			String name = request.getParameter("name");
			String pw = request.getParameter("pw");
			String nickname = request.getParameter("nickname");
			String gender = request.getParameter("gender");
			String region = request.getParameter("region");
			String kakao = request.getParameter("kakao");
			String id = request.getParameter("id");
			//Account aa = (Account) request.getSession().getAttribute("accountInfo");
			
			
			
			System.out.println(name);
			System.out.println(pw);
			System.out.println(nickname);
			System.out.println(gender);
			System.out.println(region);
			System.out.println(kakao);
			System.out.println(id);
			
			pstmt.setString(1, name);
			pstmt.setString(2, pw);
			pstmt.setString(3, nickname);
			pstmt.setString(4, gender);
			pstmt.setString(5, region);
			pstmt.setString(6, kakao);
			pstmt.setString(7, id);
			
			request.setAttribute("iddd", id);
			request.setAttribute("pwww", pw);
			
			if (pstmt.executeUpdate()==1) {
				System.out.println("수정 성공!");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
		}
		
	}
	
	
	
	
	
	
	



	

}
