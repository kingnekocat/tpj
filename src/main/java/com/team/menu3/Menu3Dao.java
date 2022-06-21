package com.team.menu3;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.team.account.Account;
import com.team.menu2.DBManager;

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
				
				m = new Menu3(rs.getInt("m_no"), rs.getString("m_title"), rs.getString("m_nickname"), rs.getString("m_txt"), rs.getString("m_kakao"), rs.getDate("m_date"), rs.getString("m_id"), rs.getString("m_region"), rs.getString("m_gender"));
				menus.add(m);
			}
			
			request.setAttribute("menus", menus);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
		
		
	}

	public static void getMenu(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.connect();
			String sql = "select * from menu3_01 where m_no = ?";
			pstmt = con.prepareStatement(sql);
			
	    int no = Integer.parseInt(request.getParameter("no"));
		pstmt.setInt(1, no);	
			
		rs = pstmt.executeQuery();
		
		Menu3 m = null;
		if(rs.next()) {
		m = new Menu3(rs.getInt("m_no"), rs.getString("m_title"), rs.getString("m_nickname"), rs.getString("m_txt"), rs.getString("m_kakao"), rs.getDate("m_date"), rs.getString("m_id"), rs.getString("m_region"), rs.getString("m_gender"));	
				request.setAttribute("menu", m);
		}
			
			
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
		
		
		
	}

	public static void RegMenu(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			request.setCharacterEncoding("utf-8");
			con = DBManager.connect();
			String sql = "insert into menu3_01 values(menu3_01_seq.nextval,?,?,?,?,sysdate,?,?,?)";
			pstmt = con.prepareStatement(sql);
			
			String title = request.getParameter("title");	
			String txt = request.getParameter("txt");	
			
			Account a = (Account)request.getSession().getAttribute("accountInfo");
			String id = a.getId();
			String nickname = a.getNickname();
			String kakao = a.getKakao();
			String region = a.getRegion();
			String gender = a.getGender();
			
			pstmt.setString(1, title);
			pstmt.setString(2, nickname);
			pstmt.setString(3, txt);
			pstmt.setString(4, kakao);
			pstmt.setString(5, id);
			pstmt.setString(6, region);
			pstmt.setString(7, gender);
		   
			
		   
			
		if(pstmt.executeUpdate()==1) {
			request.setAttribute("r", "등록성공");
		}
		   
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "등록실패");
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
		
		
	}

	public static void deleteMenu(HttpServletRequest request) {
		
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = DBManager.connect();
			String sql = "delete menu3_01 where m_no = ?";
			pstmt = con.prepareStatement(sql);
			
			String no = request.getParameter("no");
			pstmt.setString(1, no);
			
			if(pstmt.executeUpdate()==1) {
				System.out.println("삭제성공");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("서버에러");
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
		
		
	}

	public static void updateMenu(HttpServletRequest request) {
		
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			request.setCharacterEncoding("utf-8");
			con = DBManager.connect();
			String sql = "update menu3_01 set m_title = ?, m_txt =?  where m_no = ?";
			pstmt = con.prepareStatement(sql);
			
			String title = request.getParameter("title");	
			String txt = request.getParameter("txt");	
			String no = request.getParameter("no");
			
			pstmt.setString(1, title);
			pstmt.setString(2, txt);
			pstmt.setString(3, no);
			
			
		   
			
		   
			
		if(pstmt.executeUpdate()==1) {
			request.setAttribute("r", "수정 성공");
		}
		   
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "수정 실패");
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
		
		
	}

	public static void searchTitle(HttpServletRequest request) {
		
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.connect();
			String sql = "select * from menu3_01 where ? like ?";
			pstmt = con.prepareStatement(sql);
			
			String menusearch = request.getParameter("menusearch");
            String search = "%" + request.getParameter("search")+ "%";
			
            System.out.println(menusearch);
            System.out.println(search);
            
			pstmt.setString(1, menusearch);
			pstmt.setString(2, search);
			
			
			
			
			rs = pstmt.executeQuery();
			
			ArrayList<Menu3> menus = new ArrayList<Menu3>();
			Menu3 m = null;
			
			while (rs.next()) {
				
				m = new Menu3(rs.getInt("m_no"), rs.getString("m_title"), rs.getString("m_nickname"), rs.getString("m_txt"), rs.getString("m_kakao"), rs.getDate("m_date"), rs.getString("m_id"), rs.getString("m_region"), rs.getNString("m_gender"));
				menus.add(m);
				System.out.println(rs.getString("m_title"));
			}
			
			request.setAttribute("menus", menus);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
		
		
		
		
	}

	public static void searchTitle2(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.connect();
			String menusearch = request.getParameter("menusearch");
			String sql = "select * from menu3_01 where " + menusearch + " like ?";
			pstmt = con.prepareStatement(sql);
			
           // String search = "%" + request.getParameter("search")+ "%";
            String search = request.getParameter("search");
			
            System.out.println(menusearch);
            System.out.println(search);
            
            pstmt.setString(1, "%"+search+"%");
            
            rs = pstmt.executeQuery();
            
            ArrayList<Menu3> menus = new ArrayList<Menu3>();
            Menu3 m = null;
            
            while (rs.next()) {
				m = new Menu3(rs.getInt("m_no"), rs.getString("m_title"), rs.getString("m_nickname"), rs.getString("m_txt"), rs.getString("m_kakao"), rs.getDate("m_date"), rs.getString("m_id"), rs.getString("m_region"), rs.getString("m_gender"));
				menus.add(m);
				System.out.println(rs.getString("m_title"));
            }
            request.setAttribute("menus", menus);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}

	public static void sameRegion(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.connect();
			String sql = "select * from menu3_01 where m_region = ?";
			pstmt = con.prepareStatement(sql);
			
			Account a = (Account)request.getSession().getAttribute("accountInfo");
			String region = a.getRegion();
          
            pstmt.setString(1, region);
			
            rs = pstmt.executeQuery();
            
            ArrayList<Menu3> menus = new ArrayList<Menu3>();
            Menu3 m = null;
            
            while (rs.next()) {
				m = new Menu3(rs.getInt("m_no"), rs.getString("m_title"), rs.getString("m_nickname"), rs.getString("m_txt"), rs.getString("m_kakao"), rs.getDate("m_date"), rs.getString("m_id"), rs.getString("m_region"), rs.getString("m_gender"));
				menus.add(m);
				System.out.println(rs.getString("m_title"));
            }
            request.setAttribute("menus", menus);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
		
		
		
		
		
	}

	public static void sameGender(HttpServletRequest request) {
		
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.connect();
			String sql = "select * from menu3_01 where m_gender = ?";
			pstmt = con.prepareStatement(sql);
			
			Account a = (Account)request.getSession().getAttribute("accountInfo");
			String gender = a.getGender();
          
            pstmt.setString(1, gender);
			
            rs = pstmt.executeQuery();
            
            ArrayList<Menu3> menus = new ArrayList<Menu3>();
            Menu3 m = null;
            
            while (rs.next()) {
				m = new Menu3(rs.getInt("m_no"), rs.getString("m_title"), rs.getString("m_nickname"), rs.getString("m_txt"), rs.getString("m_kakao"), rs.getDate("m_date"), rs.getString("m_id"), rs.getString("m_region"), rs.getString("m_gender"));
				menus.add(m);
				System.out.println(rs.getString("m_title"));
            }
            request.setAttribute("menus", menus);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
		
		
		
		
	}

	public static void sameCheck(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.connect();
			
			String[] check = request.getParameterValues("check");
			
			Account a = (Account)request.getSession().getAttribute("accountInfo");
			String region = a.getRegion();
			String gender = a.getGender();
			
			String aaa = "";
			for (String s : check) {
				
				System.out.println(s);
				aaa += s;
			}
			
			if(aaa.equals("region")) {
				
				String sql = "select * from menu3_01 where m_region = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, region);
			} else if (aaa.equals("gender")) {
				String sql = "select * from menu3_01 where m_gender = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, gender);
			} else {
				String sql = "select * from menu3_01 where m_gender = ? and m_region = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, gender);
				pstmt.setString(2, region);
			}
			
			
			
			
            rs = pstmt.executeQuery();
            
            ArrayList<Menu3> menus = new ArrayList<Menu3>();
            Menu3 m = null;
            
            while (rs.next()) {
				m = new Menu3(rs.getInt("m_no"), rs.getString("m_title"), rs.getString("m_nickname"), rs.getString("m_txt"), rs.getString("m_kakao"), rs.getDate("m_date"), rs.getString("m_id"), rs.getString("m_region"), rs.getString("m_gender"));
				menus.add(m);
				System.out.println(rs.getString("m_title"));
            }
            request.setAttribute("menus", menus);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
		
		
		
		
	}
		
		
	
	
		
		
		
		
		
	

	
	
	
	
	
	
	
	
	
}
