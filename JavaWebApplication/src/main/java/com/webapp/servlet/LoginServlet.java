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
		
		String param_name = request.getParameter("name");
		
		request.setAttribute("name", param_name);
		request.setAttribute("date", new Date());
		request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
	}

}
