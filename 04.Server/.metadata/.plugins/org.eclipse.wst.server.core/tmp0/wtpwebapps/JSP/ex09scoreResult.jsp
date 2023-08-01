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
  //포스트 방식의 인코딩
  request.setCharacterEncoding("EUC-KR");

  //request 내장객체를 활용해라 
  String name =request.getParameter("name");
  
  // Integer.parseInt()은 문자형에서 숫자형으로 자료를 변환한다
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
         <legend>학점확인프로그램</legend>  
         <table style = "margin: auto; text-align: center;">
            <tr>
               <td>이름</td>
               <td><%= name %>></td>   
            </tr>
            <tr>
               <td>Java점수</td>
               <td><%= java %></td>
            </tr>
            <tr>
               <td>Web점수</td>
               <td><%= web %></td>
            </tr>
            <tr>
               <td>IoT점수</td>
               <td><%= iot %></td>
            </tr>
            <tr>
               <td>Android점수</td>
               <td><%= android %></td>
            </tr>
            <tr>
               <td>평균</td>
               <td><%= mean %></td>
            </tr>
            <tr>
               <td>학점 스토롱버전</td>
               <td><strong><%= hac %></strong></td>
            </tr>
            <tr>
               <td>학점 에이치버전</td>
               <td><h2><%= hac %></h2></td>
            </tr>
            
         </table>      
      </fieldset>
  
  
</body>
</html>


