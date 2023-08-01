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
      ID, PW �ΰ��� ������ �޾ƿͼ�
      �α����� �Ѵ��� 
      �α��� ������ ����� �г��� �ֿܼ� ���
    --%>
	<%
	request.setCharacterEncoding("EUC-KR");

	//�Ѿ�� �����͸� ������ jdbc�� ���� ���̺� �� �ֱ�(ȸ������)
	//id, pw, nick, email, phone, gender, age      
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	String nick = null;
	// System.out.println(id+ "/" + pw);
	
	// JDBC ����
	// 0. ����̹� ���� ������Ʈ�� �ֱ�
	// 1. ����̹� �����ε�
	Class.forName("oracle.jdbc.driver.OracleDriver");/// �����ͺ��̽��� ���� �� �� �ִ� Ŭ������ �ҷ��� �ֱ�
	                                                 /// �����ͺ��̽��� ���� �� �� �ִ� Ŭ������  OracleDriver 
	
	// 2.Ŀ�ؼ� ����
	String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	String db_id = "shopping";
	String db_pw = "12345";

	Connection conn = DriverManager.getConnection(db_url, db_id, db_pw); 
	/// Java���� �����ͺ��̽��� �����ϱ� ���� ���Ǵ� �޼����Դϴ�. 
	/// �� �޼���� JDBC(Java Database Connectivity)�� ���� �����ͺ��̽����� ������ �����մϴ�.
	
	// 3.sql�� ����
	String sql = "select * from member where id = ? and pw = ?";
	
	PreparedStatement psmt = conn.prepareStatement(sql); 
	psmt.setString(1, id);
	psmt.setString(2, pw);

	
	        
    // INSERT, UPDATE, DELETE ���� DML(Data Manipulation Language) ������ ������ �� ���Ǵ� �޼����Դϴ�. 
    // �� �޼���� SQL ���� �����ϰ�, ������ ���� �����ͺ��̽� ���� ������ ��ȯ�մϴ�.
	psmt.executeUpdate(); 

	ResultSet rs = psmt.executeQuery(); // Ŀ���� �Ӽ������� �Ʒ� ������ �����ü� ������ 
								        // ������ ���� ���� �Ǿ��ٴ� ���̹Ƿ� �α��� ����                              
	if (rs.next()) { // �� ĭ �������°� rs.next()���� �ϴ°��̴�
		nick = rs.getString("NICK"); //�����ε����� ���ڵ� ����
	}
	
	
	// 4.��������
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
	//�α��� ������ loginSuccess.js
	//�α��� ���н� login.jsp
	%>
</body>
</html>