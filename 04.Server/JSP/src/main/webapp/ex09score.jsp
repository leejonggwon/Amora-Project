<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <form action="ex09scoreResult.jsp" method="post"> <!-- input태그를 감싸는 form태그 -->
      <fieldset>   <!-- 태두리를 지어주는 태그 -->
         <legend>학점확인프로그램</legend>   <!-- 제목을 지어주는 태그 -->
         <table style = "margin: auto; text-align: center;">
            <tr>
               <td>이름</td>
               <td><input type="text" name="name"></td>   <!-- type="text" 속성은 텍스트를 입력받을 수 있는 입력란을 만든다는 의미 -->
            </tr>
            <tr>
               <td>Java점수</td>
               <td><input type="text" name="java"></td>
            </tr>
            <tr>
               <td>Web점수</td>
               <td><input type="text" name="web"></td>
            </tr>
            <tr>
               <td>IoT점수</td>
               <td><input type="text" name="iot"></td>
            </tr>
            <tr>
               <td>Android점수</td>
               <td><input type="text" name="android"></td>
            </tr>
            <tr>
               <td colspan="2"> 
                  <input type="submit" name="result" value="결과확인"> <!-- value="결과확인" submit버튼에 결과확인이 나온다 -->
                                                                    <!-- value값을 넣지 않으면 버튼에 제출이라고 나온다  -->
               </td>
            </tr>
         
         </table>      
      </fieldset>
   </form>


</body>
</html>







