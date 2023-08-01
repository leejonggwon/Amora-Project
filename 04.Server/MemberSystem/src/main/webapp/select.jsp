<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	// JDBC 순서
	// 0.드라이버 파일 프로젝트에 넣기
	// 1.드라이버 동적로딩
	
	/// 자바에서 JDBC를 이용하여 Oracle 데이터베이스에 연결할 때 사용하는 코드입니다.
	Class.forName("oracle.jdbc.driver.OracleDriver");
	

	// 2.커넥션 연결
	String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	String db_id = "shopping";
	String db_pw = "12345";

	/// 자바(Java)에서 JDBC(Java Database Connectivity)를 이용하여 데이터베이스와의 연결을 설정하는 코드입니다.
	Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
	

	// 3.SQL문 실행
	String sql = "SELECT ID, NICK, EMAIL, PHONE, GENDER, AGE FROM MEMBER";

	PreparedStatement psmt = conn.prepareStatement(sql);
	///PreparedStatement psmt = conn.prepareStatement(sql);
	///은 자바(Java)에서 JDBC를 이용하여 SQL 문을 실행하기 위한 준비된(prepared) 상태의 객체를 생성하는 코드입니다.

	ResultSet rs = psmt.executeQuery(); 
	// rs라는 변수에 데이터베이스의 정보들이 담기게 된다.
	/// ResultSet rs = psmt.executeQuery();은 
	/// 자바(Java)에서 JDBC를 이용하여 SQL 문을 실행한 결과를 저장하는 코드입니다.

	out.print("<table border ='1'>");
	out.print("<tr><th>ID</th><th>NICK</th><th>EMAIL</th><th>PHONE</th><th>GENDER</th><th>AGE</th></tr>");
	
	//rs.next()는 데이터베이스에서 쿼리를 실행한 결과 집합(ResultSet)에서 다음 행으로 커서를 이동시키는 메서드입니다
	while (rs.next()) {  
		    
		String id = rs.getString(1);
		String nick = rs.getString(2);
		String email = rs.getString(3);
		String phone = rs.getString(4);
		String gender = rs.getString(5);
		int age = rs.getInt(6);

		//System.out.println(id+"/"+nick+"/"+email+"/"+phone+"/"+gender+"/"+age+"/");  	

		
		//출력을 위해서는 out객체가 필요하다
		
		// id가 "admin"이 아닌 회원만 출력하는 조건
		if (!id.equals("admin")) { 
			out.print("<tr>");
			out.print("<td>" + id + "</td>");  // <td> 태그 안에 id 값을 출력합니다. <td> 태그는 테이블의 한 셀을 나타냅니다.
			out.print("<td>" + nick + "</td>");
			out.print("<td>" + email + "</td>");
			out.print("<td>" + phone + "</td>");
			out.print("<td>" + gender + "</td>");
			out.print("<td>" + age + "</td>");
			out.print("</tr>");
		}
	}// end while
		
		out.print("</table>");
	%>
</body>
</html>