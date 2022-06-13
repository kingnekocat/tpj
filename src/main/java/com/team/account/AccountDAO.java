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
						}
					} else {
						request.setAttribute("r", "�������� �ʴ� ȸ��");
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
		String sql = "insert into account_test values(?,?,?,?,?,?,?,?)";
		
		try {
			
		con = DBManager.connect();
		pstmt = con.prepareStatement(sql);
		// lib
		String path = request.getSession().getServletContext().getRealPath("fileFolder");
		System.out.println(path);

		// �̹� ���ε� ��� ó�� ��
		MultipartRequest mr = new MultipartRequest(request, path, 20*1024*1024, "utf-8", 
				new DefaultFileRenamePolicy());
		
		String name = mr.getParameter("name");
		String id = mr.getParameter("id");
		String pw = mr.getParameter("pw");
		String gender = mr.getParameter("gender");	// w , m
		String addr = mr.getParameter("addr");
		String[] interest = mr.getParameterValues("interest");
		String txt = mr.getParameter("txt");
		String img = mr.getFilesystemName("img");
		String interest2 = "";
		
		
		if(interest != null) {
			for (String s : interest) {
			System.out.println(s);
			interest2 += s + "!";
		}
		} else {
			interest2 = "���ɻ� ����";
		}
		
		if (txt.length() == 0) {
			txt = "...";
		}
		
		
		System.out.println(name);
		System.out.println(id);
		System.out.println(pw);
		System.out.println(gender);
		System.out.println(addr);
		System.out.println(interest);	// �迭		����, ����
		System.out.println(interest2);	// ����, ����
		System.out.println(txt);
		System.out.println(img);
		
		pstmt.setString(1, name);
		pstmt.setString(2, id);
		pstmt.setString(3, pw);
		pstmt.setString(4, gender);
		pstmt.setString(5, addr);
		pstmt.setString(6, interest2);
		pstmt.setString(7, txt);
		pstmt.setString(8, img);
		
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


//	public static int makeInterest(HttpServletRequest request) {
//		
//		Account a =	(Account) request.getSession().getAttribute("accountInfo");
//		
//		if (a != null) {
////			 String interest = a.getA_interest();		// food!excer!
////			 String [] interest2 = interest.split("!");
//			 request.setAttribute("inter", interest2);
//			 return 1;
//		}
//		return 0;
//		
//	}





	public static void updateAccount(HttpServletRequest request) {
		// ������
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "update account_test\r\n"
				+ "set a_name = ?,\r\n"
				+ "a_pw = ?,\r\n"
				+ "a_gender = ?,\r\n"
				+ "a_addr = ?,\r\n"
				+ "a_interest = ?,\r\n"
				+ "a_introduce = ?\r\n"
//				+ "a_img = ?\r\n"
				+ "where a_id = ?";
		
		try {
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			String name = request.getParameter("name");
			String pw = request.getParameter("pw");
			String gender = request.getParameter("gender");
			String addr = request.getParameter("addr");
			String interest = request.getParameter("interest"); //food! excer!
			String[] interest2 = request.getParameterValues("interest2"); // �ٽ� ������
			String introduce = request.getParameter("introduce");
			String id = request.getParameter("id");
			//Account aa = (Account) request.getSession().getAttribute("accountInfo");
			
			
			String interest3 = "";
			
			if(interest != null) {
				for (String s : interest2) {
				System.out.println(s);
				interest3 += s + "!";
			}
			} else {
				interest3 = interest;
			}
			
			if (introduce.length() == 0) {
				introduce = "...";
			}
			System.out.println(name);
			System.out.println(pw);
			System.out.println(gender);
			System.out.println(addr);
			System.out.println(interest);
			System.out.println(introduce);
			System.out.println(id);
			
			pstmt.setString(1, name);
			pstmt.setString(2, pw);
			pstmt.setString(3, gender);
			pstmt.setString(4, addr);
			pstmt.setString(5, interest3);
			pstmt.setString(6, introduce);
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
