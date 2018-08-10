package com.webapp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet (urlPatterns="/login.do")
public class LoginServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		PrintWriter out = response.getWriter();
		out.append("<html>");
		out.append("<title>My First Web Application</title>");
		out.append("<head></head>");
		out.append("<body> <h1>Yahoo!!!!!!</h1> </ br> <h2> My First Servlet Runnning @ "+ new Date() +" </h2> </body>");
		out.append( "</html>");
		
	}

}
