package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDTO;
import com.model.MessageDAO;
import com.model.MessageDTO;

/**
 * Servlet implementation class MsgAllDelete
 */
@WebServlet("/MsgAllDelete")
public class MsgAllDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//나한테 온 메세지 전체삭제하기 
		MessageDAO dao = new MessageDAO();
		
		HttpSession session = request.getSession();
		MessageDTO info = (MemberDTO)session.getAttribute("info");
		dao.allDelete(info.getEmail());
		
		response.sendRedirect("main.jsp#two");
	
	
		
		
	}

}
