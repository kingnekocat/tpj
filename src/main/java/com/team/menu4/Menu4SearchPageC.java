package com.team.menu4;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.account.AccountDAO;
import com.team.menu3.Menu3Dao;


@WebServlet("/Menu4SearchPageC")
public class Menu4SearchPageC extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int p = Integer.parseInt(request.getParameter("p"));
		AccountDAO.loginCheck(request);
		Menu4Dao.searchMenu(request);
		Menu4Dao.paging(p, request);
		request.setAttribute("contentPage", "SHC_Menu4/Menu4_Search.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
