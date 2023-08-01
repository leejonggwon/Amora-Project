package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex02URLMapping
 */                      // 자바파일에 URL을 연결시키는 것을 URLMapping이라고 한다 
@WebServlet("/Ex02Test") // 자바파일에 URL을 붙여놓은 형태 
                         // 맨처음 URL Mapping은 클래스명과 똑같이 설정되지만 // 클래스명을 간단히 할 수 있다 수정 할 수 있다 
                          
                         // URLMapping의 역활은 자바파일을 웹에서 실핼 할 수 있게 URL을 Mapping
                         // 즉 달아준거다 
						 
public class Ex02URLMapping extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("Hello 홍승찬");
	}

}
