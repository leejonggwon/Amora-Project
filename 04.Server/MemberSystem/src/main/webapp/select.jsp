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
	// JDBC ����
	// 0.����̹� ���� ������Ʈ�� �ֱ�
	// 1.����̹� �����ε�
	
	/// �ڹٿ��� JDBC�� �̿��Ͽ� Oracle �����ͺ��̽��� ������ �� ����ϴ� �ڵ��Դϴ�.
	Class.forName("oracle.jdbc.driver.OracleDriver");
	

	// 2.Ŀ�ؼ� ����
	String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	String db_id = "shopping";
	String db_pw = "12345";

	/// �ڹ�(Java)���� JDBC(Java Database Connectivity)�� �̿��Ͽ� �����ͺ��̽����� ������ �����ϴ� �ڵ��Դϴ�.
	Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
	

	// 3.SQL�� ����
	String sql = "SELECT ID, NICK, EMAIL, PHONE, GENDER, AGE FROM MEMBER";

	PreparedStatement psmt = conn.prepareStatement(sql);
	///PreparedStatement psmt = conn.prepareStatement(sql);
	///�� �ڹ�(Java)���� JDBC�� �̿��Ͽ� SQL ���� �����ϱ� ���� �غ��(prepared) ������ ��ü�� �����ϴ� �ڵ��Դϴ�.

	ResultSet rs = psmt.executeQuery(); 
	// rs��� ������ �����ͺ��̽��� �������� ���� �ȴ�.
	/// ResultSet rs = psmt.executeQuery();�� 
	/// �ڹ�(Java)���� JDBC�� �̿��Ͽ� SQL ���� ������ ����� �����ϴ� �ڵ��Դϴ�.

	out.print("<table border ='1'>");
	out.print("<tr><th>ID</th><th>NICK</th><th>EMAIL</th><th>PHONE</th><th>GENDER</th><th>AGE</th></tr>");
	
	//rs.next()�� �����ͺ��̽����� ������ ������ ��� ����(ResultSet)���� ���� ������ Ŀ���� �̵���Ű�� �޼����Դϴ�
	while (rs.next()) {  
		    
		String id = rs.getString(1);
		String nick = rs.getString(2);
		String email = rs.getString(3);
		String phone = rs.getString(4);
		String gender = rs.getString(5);
		int age = rs.getInt(6);

		//System.out.println(id+"/"+nick+"/"+email+"/"+phone+"/"+gender+"/"+age+"/");  	

		
		//����� ���ؼ��� out��ü�� �ʿ��ϴ�
		
		// id�� "admin"�� �ƴ� ȸ���� ����ϴ� ����
		if (!id.equals("admin")) { 
			out.print("<tr>");
			out.print("<td>" + id + "</td>");  // <td> �±� �ȿ� id ���� ����մϴ�. <td> �±״� ���̺��� �� ���� ��Ÿ���ϴ�.
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