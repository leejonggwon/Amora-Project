package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex06GetPost
 */
@WebServlet("/Ex06GetPost")
public class Ex06GetPost extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("GET방식 메소드 호출");
		// post방식의 인코딩
		
		req.setCharacterEncoding("EUC-KR");
		String post = req.getParameter("post");  //여기는 request를 req라고 표현한다  
		System.out.println(post);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("POST방식 메소드 호출");	
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// service는 get방식 post방식 모두 받을 수 있다 
//		
//		//get방식이 됐든 post방식이 됐는 받는 request는 똑같다
//		String get = request.getParameter("get"); //name="get"와 getParameter("get")이 가져올 수 있다
//		System.out.println(get);
//		
//	}
	
	

	
	
}
