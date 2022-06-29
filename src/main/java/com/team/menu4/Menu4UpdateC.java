package com.team.menu4;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.account.AccountDAO;


@WebServlet("/Menu4UpdateC")
public class Menu4UpdateC extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AccountDAO.loginCheck(request);
		Menu4Dao.getMenu(request);
		request.setAttribute("contentPage", "SHC_Menu4/Menu4_Update.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AccountDAO.loginCheck(request);
		Menu4Dao.updateMenu(request);
		Menu4Dao.getAllmenu(request);
		Menu4Dao.paging(1, request);
		request.setAttribute("contentPage", "SHC_Menu4/Menu4.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
		
	}

}
