package com.team.menu3;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.account.AccountDAO;


@WebServlet("/Menu3SearchC")
public class Menu3SearchC extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	
			
		AccountDAO.loginCheck(request);
		Menu3Dao.searchTitle(request);
		request.setAttribute("contentPage", "SHC_Menu3/menusearch.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
	}

}
