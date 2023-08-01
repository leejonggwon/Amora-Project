package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex03Input
 */
@WebServlet("/Ex03Input") // URL매핑값과 <form action = "Ex03Input">값과 같다      
public class Ex03Input extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// ex03input.html에서 작성 text값을 console에 출력하는것이 이페이지의 목적
		
		
	   // HTML에서 submit에 "박병관 최고"라고 입력하고 보내면
	   // talk = "박병관 최고" 이런식으로 데이터가 넘어간다 
	   String talk = request.getParameter("talk"); // request한다 Parameter을 get하는것을  네임값 "talk"로  
	   											   // 웹에서는 어떠한 데이터형태로 넘기든지 다 문자열형태로 String 넘긴다  
	                                           
	  
	   
	   // 입력값을 콘솔창에 출력 
	   System.out.println(talk);
	   
	   // 입력값을 html에 출력
	   
	   response.setCharacterEncoding("EUC-KR"); // 한글 출력할 수 있도록 인코딩
	  
	   PrintWriter out = response.getWriter();
	   
	
			out.print("<html>");
			out.print("<body>");
			
			out.print("<h1>" + talk + "</h1>");
			                                   
			out.print("</body>");
			out.print("</html>");
	   
	   
	   
	}

}
