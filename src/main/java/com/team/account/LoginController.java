	package com.team.account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.account.AccountDAO;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// 로그아웃 하는 일
		AccountDAO.logOut(request);
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "home.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Account a = (Account) request.getSession().getAttribute("accountInfo");
		
		if (a == null) {
			AccountDAO.loginCheck(request);
			request.setAttribute("contentPage", "SEJ_Account/login.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} else {
		// 로그인 하는 일
		AccountDAO.login(request);
		// 가는 곳
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "home.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
	}

}
