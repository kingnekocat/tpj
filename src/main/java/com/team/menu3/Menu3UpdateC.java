package com.team.menu3;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.account.AccountDAO;


@WebServlet("/Menu3UpdateC")
public class Menu3UpdateC extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AccountDAO.loginCheck(request);
		Menu3Dao.getMenu(request);
		request.setAttribute("contentPage", "SHC_Menu3/Menu3_Update.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AccountDAO.loginCheck(request);
		Menu3Dao.updateMenu(request);
		Menu3Dao.getAllmenu(request);
		request.setAttribute("contentPage", "SHC_Menu3/Menu3.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
		
	}

}
