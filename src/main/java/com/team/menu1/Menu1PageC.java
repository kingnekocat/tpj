package com.team.menu1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import com.team.account.AccountDAO;


@WebServlet("/Menu1PageC")
public class Menu1PageC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int p = Integer.parseInt(request.getParameter("p"));

		
			AccountDAO.loginCheck(request);
				Menu1DAO.ViewAll(request);
				Menu1DAO.paging(p, request);
				request.setAttribute("contentPage", "JYS_Menu1/menu1_search.jsp");
//				Menu1DAO.ViewGenreDetail(request);
//				Menu1DAO.paging(p, request);
//				request.setAttribute("contentPage", "menu1_detail.jsp");
				
			
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
