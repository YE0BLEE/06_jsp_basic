package com.lec.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lec.member.action.Action;
import com.lec.member.action.MemberRegistAction;
import com.lec.member.vo.ActionForward;

@WebServlet("*.bo")
public class MemberController extends HttpServlet {
	
	Action action = null;
	ActionForward forward = null;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		Process(req, res);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		Process(req, res);
	}

	private void Process(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {

		req.setCharacterEncoding("utf-8");
		
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
	
	
	if(command.equals("/memberRegistForm.bo")) {
		forward = new ActionForward();
		forward.setPath("/member/member_regist.jsp");
	} else if(command.equals("/memberRegist.bo")) {
		action = new MemberRegistAction();
		forward = action.execute(req, res);
	}
	
	
	if(forward != null) {
		if(forward.isRedirect()) {
			res.sendRedirect(forward.getPath());
		} else {
			RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
			dispatcher.forward(req, res);
		}	
	}
	

}

}














