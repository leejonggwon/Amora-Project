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
  //����Ʈ ����� ���ڵ�
  request.setCharacterEncoding("EUC-KR");

  //request ���尴ü�� Ȱ���ض� 
  String name =request.getParameter("name");
  
  // Integer.parseInt()�� ���������� ���������� �ڷḦ ��ȯ�Ѵ�
  int java =Integer.parseInt(request.getParameter("java"));  
  int web =Integer.parseInt(request.getParameter("web"));
  int iot =Integer.parseInt(request.getParameter("iot"));
  int android =Integer.parseInt(request.getParameter("android"));
  
  double mean = (java + web + iot + android) /4.0;	
  
  String hac = "";
  
  if(mean >= 95){
	  hac = "A+";
  }else if(mean >= 85){
	  hac = "A";
  }else if(mean >= 80){
	  hac = "B+";
  }else if(mean >= 70){
	  hac = "C";
  }else{
	  hac = "F";
  }
  
  %>
  

      <fieldset>  
         <legend>����Ȯ�����α׷�</legend>  
         <table style = "margin: auto; text-align: center;">
            <tr>
               <td>�̸�</td>
               <td><%= name %>></td>   
            </tr>
            <tr>
               <td>Java����</td>
               <td><%= java %></td>
            </tr>
            <tr>
               <td>Web����</td>
               <td><%= web %></td>
            </tr>
            <tr>
               <td>IoT����</td>
               <td><%= iot %></td>
            </tr>
            <tr>
               <td>Android����</td>
               <td><%= android %></td>
            </tr>
            <tr>
               <td>���</td>
               <td><%= mean %></td>
            </tr>
            <tr>
               <td>���� ����չ���</td>
               <td><strong><%= hac %></strong></td>
            </tr>
            <tr>
               <td>���� ����ġ����</td>
               <td><h2><%= hac %></h2></td>
            </tr>
            
         </table>      
      </fieldset>
  
  
</body>
</html>


