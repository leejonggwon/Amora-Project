<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
      // id, pw, nick, email, phone, gender, age
      // ���� ���� ���� �� �����´���
      // id�� pw�� ��ġ�ϴ� ������ ã��
      // �Է��� nick, email, phone, gender, age�� �����Ͻÿ�
      
      // ���� ������ -> main.jsp �̵�
      // ���� ���н� -> update.jsp �̵�
   
      request.setCharacterEncoding("EUC-KR");
      
      String id = request.getParameter("id");
      String pw = request.getParameter("pw");
      String nick = request.getParameter("nick");
      String email = request.getParameter("email");
      String phone = request.getParameter("phone");
      String gender = request.getParameter("gender");
      int age = Integer.parseInt(request.getParameter("age"));   
      
      
      int cnt = 0;
      
      // JDBC ����
      // 0.����̹� ���� ������Ʈ�� �ֱ�
      // 1.����̹� �����ε�
      Class.forName("oracle.jdbc.driver.OracleDriver");
      
      // 2.Ŀ�ؼ� ����
      String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
      String db_id = "shopping";
      String db_pw = "12345";
      
      Connection conn = DriverManager.getConnection(db_url, db_id, db_pw);
      
      // 3.SQL�� ����
      String sql = "UPDATE MEMBER SET NICK = ?, EMAIL = ?, PHONE = ?, GENDER = ?, AGE = ? WHERE ID = ? AND PW = ?";
      PreparedStatement psmt = conn.prepareStatement(sql);
      psmt.setString(1, nick);
      psmt.setString(2, email);
      psmt.setString(3, phone);
      psmt.setString(4, gender);
      psmt.setInt(5, age);
      psmt.setString(6, id);
      psmt.setString(7, pw);
      
      cnt = psmt.executeUpdate();
      
      // 4.��������
      if(psmt != null){
         psmt.close();
      }
      if(conn != null){
         conn.close();
      }
      
      if(cnt > 0){
         // ȸ���������� ����
         response.sendRedirect("main.jsp");
      }else{
         // ȸ���������� ����
         response.sendRedirect("update.jsp");
      }
      
   
   %>
</body>
</html>