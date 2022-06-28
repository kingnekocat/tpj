package com.team.menu1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;


@WebServlet("/Menu1PageC")
public class Menu1PageC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int p = Integer.parseInt(request.getParameter("p"));
//		Menu1DAO.ViewGenreDetail(Session);
		Menu1DAO.paging(p, request);
		
		request.setAttribute("contentPage", "menu4.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
