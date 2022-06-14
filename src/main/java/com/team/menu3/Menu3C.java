package com.team.menu3;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Menu3C")
public class Menu3C extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Menu3Dao.getAllmenu(request);
		request.setAttribute("loginPage", "SEJ_Account/login.jsp");
		request.setAttribute("contentPage", "SHC_Menu3/Menu3.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
	}

}