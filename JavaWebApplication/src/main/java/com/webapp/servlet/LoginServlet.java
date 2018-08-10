package com.webapp.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet (urlPatterns="/login")
public class LoginServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		
		String paramName = request.getParameter("name");
		String paramPass = request.getParameter("password");
		request.setAttribute("name", paramName);
		request.setAttribute("pass", paramPass);
		request.setAttribute("date", new Date());
		request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
	
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		
		request.setAttribute("name", name);
		request.setAttribute("pass", password);
		request.getRequestDispatcher("/WEB-INF/views/welcome.jsp").forward(request, response);
	}

}
