package com.team.menu3;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.account.AccountDAO;
import com.team.menu2.Menu2Dao;


@WebServlet("/Menu3SearchPageC")
public class Menu3SearchPageC extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int p = Integer.parseInt(request.getParameter("p"));
		AccountDAO.loginCheck(request);
		Menu3Dao.searchTitle2(request);
		Menu3Dao.paging(p, request);
		request.setAttribute("contentPage", "SHC_Menu3/Menu3_Search.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
		
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

}
