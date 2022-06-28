package com.team.menu2;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.account.AccountDAO;


@WebServlet("/ReviewPageC")
public class ReviewPageC extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int p = Integer.parseInt(request.getParameter("p"));
		Menu2Dao.getAllmenu2(request);
		AccountDAO.loginCheck(request);
		Menu2Dao.paging(p, request);
		request.setAttribute("contentPage", "SHC_Menu2/Menu2.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

}
