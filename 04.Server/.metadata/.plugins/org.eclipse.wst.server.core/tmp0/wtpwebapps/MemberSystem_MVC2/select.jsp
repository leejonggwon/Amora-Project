<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.MemberDAO"%>
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
      MemberDAO dao = new MemberDAO();
      ArrayList<MemberDTO> list = dao.select();
   %>   
   <table>
      <tr>
         <th>��ȣ</th>
         <th>���̵�</th>
         <th>�г���</th>
         <th>�̸���</th>
         <th>��ȭ��ȣ</th>
         <th>����</th>
         <th>����</th>
      </tr>
      <!-- ���� ���� list ũ�⸸ŭ �ݺ��� ���鼭 ȸ���� ������ ��� -->
      <%
         for(int i = 0; i < list.size(); i++){
            out.print("<tr>");
            out.print("<td>" + (i + 1) + "</td>");
            out.print("<td>" + list.get(i).getId() + "</td>");
            out.print("<td>" + list.get(i).getNick() + "</td>");
            out.print("<td>" + list.get(i).getEmail() + "</td>");
            out.print("<td>" + list.get(i).getPhone() + "</td>");
            out.print("<td>" + list.get(i).getGender() + "</td>");
            out.print("<td>" + list.get(i).getAge() + "</td>");
            out.print("</tr>");
         }
      %>
   </table>   
   
   
   
   
</body>
</html>