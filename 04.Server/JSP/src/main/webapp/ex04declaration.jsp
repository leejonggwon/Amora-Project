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
		������
		JSP�ȿ��� �ʵ�(��������, �������) �Ǵ� �޼ҵ带 ����� ������ ����Ѵ�
	 --%>
	 
	 <%! //����//������ �޼ҵ带 ������
	 	 //���������� ���������ڸ� �ܴ�//�׸��� �ʵ�� ����
	 	 public String name = "�ں���"; 
	 	
	 	 //���𹮾ȿ��� �޼ҵ带 ����� �ִ� //�޼ҽ��� �ʵ�� ���𹮿����� �����ϴ� 
	 	 public int plus(int num1, int num2){
	 	 	return num1 + num2;
	 	 }	 
	 %>
	 
	 
	 <% //��ũ��Ʈ��//�ڹ��ڵ带 �����//��ũ��Ʈ���� �ۼ��Ǵ� �ڵ�� �� service�޼ҵ�� ����
	 	//���������� ���������ڸ� �� �� ���� 
	    String name2 = "���ؿ�";
	 %>
	
	 
	 <%= // ǥ���Ŀ����� �ܼ��� �ڹٰ��� �������� ������
	 	 //	return���� �����ϴ� �Լ�, �޼ҵ带 ����� �� �ִ� 
	 	 // ǥ���Ŀ����� �����ݷ��� ���� �ʴ´� 
	 	 plus(30,40)  
	 %>

</body>
</html>