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
		// 1. ��
				String userId = request.getParameter("id");
				String userPw = request.getParameter("pw");
			
			// ���� ����� ����Ǹ� ���� �Ƿ��ְ�, �ƴϸ� ���� ������
			String iddd = (String) request.getAttribute("iddd");
			String pwww = (String) request.getAttribute("pwww");
			
			if (iddd != null) {
				userId = iddd;
				userPw = pwww;
			}
				
				// 2. db�� ��
				
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
							request.setAttribute("r", "�α��� ����");
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
							
							
							
							// ���� �����
							HttpSession hs = request.getSession();
							hs.setAttribute("accountInfo", a);
							hs.setMaxInactiveInterval(60*5);		// 5�� ����
							//hs.setMaxInactiveInterval(10);		// 10��
							
							
							} else {
								request.setAttribute("r", "�н����� ����");
								request.setAttribute("rr", "���̵�� ��й�ȣ�� Ȯ�����ּ���");
						}
					} else {
						request.setAttribute("r", "�������� �ʴ� ȸ��");
						request.setAttribute("rr", "���̵�� ��й�ȣ�� Ȯ�����ּ���");
					}
					
					
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					DBManager.close(con, pstmt, rs);
				}
	}





	public static void logOut(HttpServletRequest request) {
		
		// �α׾ƿ� �ϴ� ��
		// ������ ������.
		
		HttpSession hs = request.getSession();
//		hs.setAttribute("accountInfo", null);
		hs.removeAttribute("accountInfo");
//		hs.invalidate();
		// ���ʿ� ����������� ���� ��, ������ �ð��� ����Ǹ�, 
		
		
		
		
		
		
		
		
	}



	public static void regAccount(HttpServletRequest request) {
		// ������

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
			System.out.println("���� ����");
		} 
		
		
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
		
		
	}


	public static void updateAccount(HttpServletRequest request) {
		// ������
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
				System.out.println("���� ����!");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
		}
		
	}
	
	
	
	
	
	
	



	

}
