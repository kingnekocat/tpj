package com.team.menu1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team.account.Account;
import com.team.account.AccountDAO;

@WebServlet("/Menu1DC")
public class Menu1DC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Account a = (Account)request.getSession().getAttribute("accountInfo");
		AccountDAO.loginCheck(request);
		if (a!=null) {
			Menu1DAO.ViewGenreDetail(request);
			Menu1DAO.paging(1, request);
			request.setAttribute("contentPage", "JYS_Menu1/menu1_detail.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} else {
			request.setAttribute("contentPage", "home.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
