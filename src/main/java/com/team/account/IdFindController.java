package com.team.account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/IdFindController")
public class IdFindController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "SEJ_Account/idFind.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		// 아이디 찾는 일
		AccountDAO.idCheck(request);
		// 로그인 페이지
		AccountDAO.loginCheck(request);
		
		request.setAttribute("contentPage", "SEJ_Account/idFindout.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	
	}

}
