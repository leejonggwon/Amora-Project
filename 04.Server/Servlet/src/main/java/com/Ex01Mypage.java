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
@WebServlet("/Ex01Mypage")

public class Ex01Mypage extends HttpServlet {  // Servlet은 HttpServlet을 상속받는다 자바프로그램을 웹에서 실행시키면서 HTML문서를 돌려주는게 서블릿의 역할
	                                           // 그걸 해주는게 HttpServlet 클래스 입니다 
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  // 쉽게 메인메서드라고 생각하면 된다       
		// TODO Auto-generated method stub 
		
		
		// http://localhost:8081/Servlet/EEx01Mypage
		// localhost :내꺼주소를 나타내는 의미 
		// 8081 :포트번호
		// Servlet 프로젝트명 = 웹어플리케이션이라고 한다 
		// Ex01Mypage 
		
		// 아이피 확인하는 방법 : cmd 클릭 뒤에 --> ipconfig
		
		System.out.println("안녕 친구들");  // 콘솔에만 출력된다 
		
		
		//페이지를 요청한 클라이언트의 IP를 획득합니다
		String ip = request.getRemoteAddr();  //내페이지를 요청한 사람의 ip를 꺼내고 싶다면 
		                                      // request를 요청하면 된다 
		                                      // request는 모든정보가 들어가 있다 
		                                    
			
		System.out.println(ip);
		
		
		// 응답객체(response)에 인코딩 적용해줘야 글씨가 안깨진다 
		response.setCharacterEncoding("EUC-KR");
		
		
		
		// Web Page에 Text 및 Tag를 사용하기 위해서는 out객체가 필요하다
		// HTML에 글을 쓸 수 있는 객체가 하나가 필요하다 그객체는 --> out이라는 객체
		// 글을쓴다는 것은 HTML문서를 클라이언트에 응답할때 글쓰는것임 
		PrintWriter out = response.getWriter(); 
		
		
		
		
		// out을 통해서 우리는 HTML태그를 쓸 수 있다 
		out.print("<html>");
		out.print("<body>");
		// IP에 따라서 보여지는 화면이 달라야 한다 
		// 보여지는 부분이 body안쪽이다 
		
		if(ip.equals("192.168.1.112")) {  //문자열비교는 equals()로 한다 
			ip = "종권";
		}
		
		out.print("<h1>"+ ip +" 안녕? 반가워 넌 최고야 </h1>");
		out.print("<img src ='img.jpeg'>");   // 이미지 넣는곳: src > main > webapp에 컨드롤 브이로 넣어준다
		                                      // HTML위치가 webapp바로 아래서 실행되므로 <img src ='img.jpeg'> 로 설정한다 
		out.print("</body>");
		out.print("</html>");
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
