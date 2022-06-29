package com.team.account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PwFindController")
public class PwFindController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "SEJ_Account/pwFind.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// ��й�ȣ ã�� ��
		AccountDAO.pwCheck(request);
		// �α��� ������
		AccountDAO.loginCheck(request);
				
		request.setAttribute("contentPage", "SEJ_Account/pwFindout.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}

