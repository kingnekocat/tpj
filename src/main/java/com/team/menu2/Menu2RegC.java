package com.team.menu2;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.account.AccountDAO;


@WebServlet("/Menu2RegC")
public class Menu2RegC extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AccountDAO.loginCheck(request);
		request.setAttribute("contentPage", "SHC_Menu2/Menu2_Reg.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		AccountDAO.loginCheck(request);
		Menu2Dao.regMenu(request);
		Menu2Dao.getAllmenu2(request);
		Menu2Dao.paging(1, request);
		request.setAttribute("contentPage", "SHC_Menu2/Menu2.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
