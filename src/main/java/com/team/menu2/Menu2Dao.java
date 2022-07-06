package com.team.menu2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.team.account.Account;
import com.team.main.DBManager;

public class Menu2Dao {

	private static ArrayList<Menu2> menus;
	
	public static void getAllmenu2(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.connect();
			String sql = "select * from menu2_01 order by m_date";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			menus = new ArrayList<Menu2>();
			Menu2 m = null;
			
			while (rs.next()) {
				
				m = new Menu2(rs.getInt("m_no"), rs.getString("m_title"), rs.getString("m_nickname"), rs.getString("m_txt"), rs.getString("m_img"), rs.getDate("m_date"), rs.getString("m_id"));
				menus.add(m);
			}
			
			request.setAttribute("menus", menus);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
		
		
	}

	public static void regMenu(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = DBManager.connect();
			String sql = "insert into menu2_01 values(menu2_01_seq.nextval,?,?,?,?,sysdate,?)";
			pstmt = con.prepareStatement(sql);
			
			String path = request.getServletContext().getRealPath("img");
			MultipartRequest mr = new MultipartRequest(request, path, 31457280, "utf-8",
			new DefaultFileRenamePolicy());	
			
			
		   String title = mr.getParameter("title");
		   String txt = mr.getParameter("txt");
		   String img = mr.getFilesystemName("file");
		   Account a = (Account)request.getSession().getAttribute("accountInfo");
		   String id = a.getId();
		   String nickname = a.getNickname();
		   String img2 = "";
		   
		   if(img == null) {
			   img2 = "사진없음";
		   }else {
			img2 = img;
		   }
		   
		   pstmt.setString(1, title);
		   pstmt.setString(2, nickname);
		   pstmt.setString(3, txt);
		   pstmt.setString(4, img2);
		   pstmt.setString(5, id);
			
		if(pstmt.executeUpdate()==1) {
			request.setAttribute("r", "등록성공");
			System.out.println(id);
		}
		   
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "등록실패");
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
		
		
		
	}

	public static void getMenu(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.connect();
			String sql = "select * from menu2_01 where m_no = ?";
			pstmt = con.prepareStatement(sql);
			
	    int no = Integer.parseInt(request.getParameter("no"));
		pstmt.setInt(1, no);	
			
		rs = pstmt.executeQuery();
		
		Menu2 m = null;
		if(rs.next()) {
			m = new Menu2(rs.getInt("m_no"), rs.getString("m_title"), rs.getString("m_nickname"), rs.getString("m_txt"), rs.getString("m_img"), rs.getDate("m_date"), rs.getString("m_id"));
		request.setAttribute("menu", m);
		}
		
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
		
		
		
	}

	public static void deleteMenu(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = DBManager.connect();
			String sql = "delete menu2_01 where m_no = ?";
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
			String sql = "update menu2_01 set m_title = ?, m_txt =?, m_img = ? where m_no = ?";
			pstmt = con.prepareStatement(sql);
			
			String path = request.getServletContext().getRealPath("img");
			MultipartRequest mr = new MultipartRequest(request, path, 31457280, "utf-8",
			new DefaultFileRenamePolicy());	
			
			String title = mr.getParameter("title");
			String txt = mr.getParameter("txt");
			String img = mr.getParameter("file");
			String img2 = mr.getFilesystemName("file2");
			String no = mr.getParameter("no");
			String img3 = "";
			
			System.out.println(img);
			
			if(img2 == null) {
				img3 = img;
			}else {
				img3 = img2;
			}
			
			pstmt.setString(1, title);
			pstmt.setString(2, txt);
			pstmt.setString(3, img3);
			pstmt.setString(4, no);
			
			
			
			if(pstmt.executeUpdate()==1) {
				System.out.println("수정 성공");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("서버에러");
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
		
		
		
	}

	
	public static void search(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
		String menusearch = request.getParameter("menusearch");
		String sql = "select * from menu2_01 where " + menusearch + " like ?";
		
		con = DBManager.connect();
		pstmt = con.prepareStatement(sql);
		
		
		String search = "%" + request.getParameter("search")+ "%";
		String search1 =  request.getParameter("search");
		
		System.out.println(menusearch);
		System.out.println(search);
		
		
		
//		pstmt.setString(1, title);
		pstmt.setString(1, search);
		
		
		rs = pstmt.executeQuery();
		
		menus = new ArrayList<Menu2>();
		Menu2 m = null;
		
		while (rs.next()) {
			m = new Menu2(rs.getInt("m_no"), rs.getString("m_title"),
			rs.getString("m_nickname"), rs.getString("m_txt"), rs.getString("m_img"), rs.getDate("m_date"), rs.getString("m_id"));
			menus.add(m);	
			System.out.println(rs.getInt("m_no"));
					
		}
		request.setAttribute("menus", menus);
		request.setAttribute("menusearch", menusearch);
		request.setAttribute("search", search1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	
	public static void paging(int page, HttpServletRequest req) {
		
		req.setAttribute("curPageNo", page);
		
		//전체 페이지 수 계산
		int cnt = 5;      // 한 페이지당 보여줄 개수
		int total = menus.size();	  //총 데이터 개수
		int pageCount = (int)Math.ceil((double)total / cnt);
		req.setAttribute("pageCount", pageCount);	
		
		int start = total - (cnt * (page - 1));
		int end = (page == pageCount) ? -1 : start - (cnt + 1);
		
		ArrayList<Menu2> items = new ArrayList<Menu2>();
		for (int i = start-1; i > end; i--) {
			items.add(menus.get(i));
		}
		
		req.setAttribute("menus", items);
		
	}
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
