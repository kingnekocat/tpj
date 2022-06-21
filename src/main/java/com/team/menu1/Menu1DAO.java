package com.team.menu1;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.team.menu1.Menu1B;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.team.account.Account;
import com.team.main.DBManager;

public class Menu1DAO {


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
			r.setImg(rs.getString("tr_img"));
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
				pstmt.setInt(1, Integer.parseInt(request.getParameter("no")));
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
				rest.setImg(rs.getString("tr_img"));
				request.setAttribute("rest", rest);
				}
					
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				DBManager.close(con, pstmt, null);
				
			}		
	}

	public static void regRest(HttpServletRequest request) throws IOException {

		Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "insert into team_restaurant values(team_restaurant_seq.nextval, ?, ?, ?, ?, ?)";
			
			
			
			try {
				con = DBManager.connect();
				pstmt = con.prepareStatement(sql);

				String path = request.getSession().getServletContext().getRealPath("fileFolder");
				System.out.println(path);
				MultipartRequest mr;
				mr = new MultipartRequest(request, path, 20*1024*1024, "utf-8", new DefaultFileRenamePolicy());
				
				
				String name = mr.getParameter("name");
				String genre = mr.getParameter("genre");
				String region = mr.getParameter("region");
				String inform = mr.getParameter("inform");
				String img = mr.getFilesystemName("img");
				String img2 = "";
				
				if(img == null) {
					img2 = "사진없음";
				}else {
					img2 = img;
				}
				
				pstmt.setString(1, name);
				pstmt.setString(2, genre);
				pstmt.setString(3, region);
				pstmt.setString(4, inform);
				pstmt.setString(5, img2);
				
				if (pstmt.executeUpdate() == 1) {
					System.out.println("등록성공");
				} 
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				DBManager.close(con, pstmt, rs);
			}
			
			
		}
	
	public static void delRest(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = DBManager.connect();
			String sql = "delete team_restaurant where tr_num=?";
			pstmt = con.prepareStatement(sql);
			
			int no = Integer.parseInt(request.getParameter("no"));
			pstmt.setInt(1, no);
			
			if(pstmt.executeUpdate() == 1) {
				request.setAttribute("r", "삭제 성공");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
		}

}

	public static void updateRest(HttpServletRequest request) throws IOException {
		Account a = (Account) request.getSession().getAttribute("accountInfo");
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "update team_restaurant set tr_name=?, tr_food=?, tr_region=?, tr_information=?, tr_img=? where tr_num =?";

		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			String path = request.getSession().getServletContext().getRealPath("fileFolder");
			System.out.println(path);
			MultipartRequest mr;
			mr = new MultipartRequest(request, path, 20*1024*1024, "utf-8", new DefaultFileRenamePolicy());
			
			
			String name = mr.getParameter("name");
			String food = mr.getParameter("genre");
			String region = mr.getParameter("region");
			String inform = mr.getParameter("inform");
			String img = mr.getFilesystemName("img");			
			String img2 = mr.getParameter("img2");
			int num = Integer.parseInt(mr.getParameter("no"));
			
			if (img==null) {
				pstmt.setString(5, img2);
				
			} else {
				
				pstmt.setString(5, img);
			}
			
			
			
			pstmt.setString(1, name);
			pstmt.setString(2, food);
			pstmt.setString(3, region);
			pstmt.setString(4, inform);
			pstmt.setInt(6, num);
			
			
				
				
				if (pstmt.executeUpdate() == 1) {
					System.out.println("수정성공");
				} 
				
				
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
			
		}		
	}
		
	}
