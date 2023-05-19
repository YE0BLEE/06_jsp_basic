package com.lec.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String[] hobbies = req.getParameterValues("hobbies");
		String majors = req.getParameter("majors");
		String protocol = req.getParameter("protocol");
		
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html; charset=UTF-8");
		
		PrintWriter writer = res.getWriter();
		
		writer.println("<html>");
		writer.println("<head><title>Login Servlet</title></head>");
		writer.println("<body>");
		writer.println("ID = " + id + "<br>");
		writer.println("PW = " + pw + "<br>");
		writer.println("Hobbies = " + Arrays.toString(hobbies) + "<br>");
		writer.println("Majors = " + majors + "<br>");
		writer.println("Protocol = " + protocol + "<br>");
		writer.println("</body>");
		writer.println("</html>");
		writer.close();
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		doGet(req, res);
	}

}











