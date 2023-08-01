package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex05MakeTable
 */
@WebServlet("/Ex05MakeTable")
public class Ex05MakeTable extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String room = request.getParameter("room"); // 내가 숫자타입을 쓴다하더라도 문자타입으로 변환된다
		
		int croom = Integer.parseInt(room); //문자형을 숫자형으로 바꿔준다 
		
		
		
		
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		
		out.print("<table border ='1px solid black'>");
		
		out.print("<tr>");
		
		for(int i = 1; i <= croom; i++ ) {
			out.print("<td>");
			out.print(i);
			out.print("</td>");
		}	
		
		out.print("</tr>");
		
		out.print("</table>");
		
		out.print("<body>");
		out.print("</html>");
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
