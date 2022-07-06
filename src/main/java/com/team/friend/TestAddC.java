package com.team.friend;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.account.Account;
import com.team.account.AccountDAO;
import com.team.menu1.Menu1DAO;

@WebServlet("/TestAddC")
public class TestAddC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Account a = (Account)request.getSession().getAttribute("accountInfo");
		AccountDAO.loginCheck(request);
		if (a!=null) {
			frinedlistDAO.addFriend(request);
			AccountDAO.getAllFriendlist(request);
			request.setAttribute("contentPage", "SEJ_Account/friend_list.jsp");
		} else {
			request.setAttribute("contentPage", "home.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}

		

		request.getRequestDispatcher("index.jsp").forward(request, response);	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
