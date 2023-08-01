package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EX08Join
 */
@WebServlet("/EX08Join")
public class EX08Join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//ArrayList<String> name = new ArrayList<>();
		
		//아래/ 포스트방식은 url이 request 객체에 있기때문에 request에 인코딩을 해줘야한다  
		request.setCharacterEncoding("EUC-KR");
		
		//아래/ 서블릿에 들어오는것에는 인코딩이 되었지만 브라우저에 들어오는것에는 인코딩이 되어 있지 않는다 
		response.setCharacterEncoding("EUC-KR");
		
		PrintWriter out = response.getWriter(); // 웹페이지에 데이터를 출력하기 위해서 out객체가 필요하다 
		
		String id = request.getParameter("id");   // "id" 파라미터의 값을 가져와서 이를 문자열 변수 id에 저장합니다
		out.println(id);                            // 웹페이                           
		
		String pw = request.getParameter("pw");
		out.print(pw);
		
		String name = request.getParameter("name");
		out.println(name);
		
		String email = request.getParameter("email");
		out.print(email);
		
		String tel = request.getParameter("tel");
		out.println(tel);
		
		String gender = request.getParameter("gender");
		out.println(gender);
		
		
		// 체크박스처럼 여러가지 옵션을 선택할때 배열로 받고 request.getParameterValues를 사용한다
		String[] hobbies = request.getParameterValues("hobby");
		if(hobbies.length>0) {
			for(int i = 0; i < hobbies.length; i++) {
				out.println(hobbies[i]);
			}
		}
		String birthday = request.getParameter("birthday");
		out.println(birthday);
		
		String color = request.getParameter("color");
		out.println(color);
		
		String country = request.getParameter("country");
		out.println(country);
		
		String talk = request.getParameter("talk");
		out.println(talk);
		
	            
	}
}
