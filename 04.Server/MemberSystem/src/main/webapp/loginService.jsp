<%@page import="java.net.URLEncoder"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--
      ID, PW 두개의 정보를 받아와서
      로그인을 한다음 
      로그인 성공한 사람의 닉네임 콘솔에 출력
    --%>
	<%
	request.setCharacterEncoding("EUC-KR");

	//넘어온 데이터를 기준을 jdbc를 통해 테이블에 값 넣기(회원가입)
	//id, pw, nick, email, phone, gender, age      
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	String nick = null;
	// System.out.println(id+ "/" + pw);
	
	// JDBC 순서
	// 0. 드라이버 파일 프로젝트에 넣기
	// 1. 드라이버 동적로딩
	Class.forName("oracle.jdbc.driver.OracleDriver");/// 데이터베이스를 연결 할 수 있는 클래스를 불러와 주기
	                                                 /// 데이터베이스를 연결 할 수 있는 클래스가  OracleDriver 
	
	// 2.커넥션 연결
	String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	String db_id = "shopping";
	String db_pw = "12345";

	Connection conn = DriverManager.getConnection(db_url, db_id, db_pw); 
	/// Java에서 데이터베이스에 연결하기 위해 사용되는 메서드입니다. 
	/// 이 메서드는 JDBC(Java Database Connectivity)를 통해 데이터베이스와의 연결을 생성합니다.
	
	// 3.sql문 실행
	String sql = "select * from member where id = ? and pw = ?";
	
	PreparedStatement psmt = conn.prepareStatement(sql); 
	psmt.setString(1, id);
	psmt.setString(2, pw);

	
	        
    // INSERT, UPDATE, DELETE 등의 DML(Data Manipulation Language) 쿼리를 실행할 때 사용되는 메서드입니다. 
    // 이 메서드는 SQL 문을 실행하고, 영향을 받은 데이터베이스 행의 개수를 반환합니다.
	psmt.executeUpdate(); 

	ResultSet rs = psmt.executeQuery(); // 커서가 속성값에서 아래 한행을 내려올수 있을때 
								        // 쿼리문 행이 생성 되었다는 뜻이므로 로그인 성공                              
	if (rs.next()) { // 한 칸 내려가는게 rs.next()실행 하는것이다
		nick = rs.getString("NICK"); //오버로딩으로 숫자도 가능
	}
	
	
	// 4.연결종료
	if (rs != null) {
		rs.close();
	}
	if (psmt != null) {
		psmt.close();
	}
	if (conn != null) {
		conn.close();
	}

	if (nick != null) {
		nick = URLEncoder.encode(nick, "EUC-KR");
		response.sendRedirect("loginSuccess.jsp?nick=" + nick);
	} else {
		response.sendRedirect("login.jsp");
	}
	//로그인 성공시 loginSuccess.js
	//로그인 실패시 login.jsp
	%>
</body>
</html>