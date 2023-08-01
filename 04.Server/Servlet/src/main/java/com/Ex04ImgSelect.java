package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex01Mypage
 */
@WebServlet("/Ex04ImgSelect")

public class Ex04ImgSelect extends HttpServlet {  
	                                           
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  // 쉽게 메인메서드라고 생각하면 된다       
		// TODO Auto-generated method stub 
		
		
		
		
		String select = request.getParameter("select");	// 값이 제대로 들어왔는지 확인한다 
		
		
		// 입력값을 html에 출력
		// 응답객체(response)에 인코딩 적용해줘야 글씨가 안깨진다 
		response.setCharacterEncoding("EUC-KR");


		PrintWriter out = response.getWriter(); 
		// Web Page에 Text 및 Tag를 사용하기 위해서는 out객체가 필요하다
	    // HTML에 글을 쓸 수 있는 객체가 하나가 필요하다 그객체는 --> out이라는 객체
	    // 글을쓴다는 것은 HTML문서를 클라이언트에 응답할때 글쓰는것임 
					
		
		//입력된 문자형 값을 숫자형으로 바꾸고 싶을때 
		//int snum = Integer.parseInt(select);
		
		// out을 통해서 우리는 HTML태그를 쓸 수 있다 
		out.print("<html>");
		out.print("<body>");
		// IP에 따라서 보여지는 화면이 달라야 한다 
		// 보여지는 부분이 body안쪽이다 
		
		//
		String path = "";
		
		if(select.equals("1")) {  //문자열을 비교할때는 equals로 쓴다 
			out.print("<h1> 안녕 우디 </h1>");
			out.print("<img src ='img/woodi.jpg'>");   
			                                      			
		}else if(select.equals("2")) {
			out.print("<h1> 안녕 버즈 </h1>");
			out.print("<img src ='img/buzz.jpg'>");   
			                                      
		}else if(select.equals("3")) {
			out.print("<h1> 안녕 제시 </h1>");
			out.print("<img src ='img/jessi.jpg'>");   	                                      			
		}
		out.print("</body>");
		out.print("</html>");
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
