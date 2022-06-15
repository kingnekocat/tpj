package com.team.menu1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.account.AccountDAO;

@WebServlet("/Menu1UpdateC")
public class Menu1UpdateC extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Menu1DAO.ViewDetail(request);
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "JYS_Menu1/menu1_update.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Menu1DAO.updateRest(request);
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "JYS_Menu1/menu1.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);	
	}

}
