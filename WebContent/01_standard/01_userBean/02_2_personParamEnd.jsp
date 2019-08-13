<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>JSP 표준액션 태그 중 useBean의 param속성 이용하기</h2>
	
	<jsp:useBean id="person" class="action.model.vo.Person"><%-- 
		<jsp:setProperty property="name" name="person" param="name" />
		<jsp:setProperty property = "gender" name="person" param="gender"/>
		<jsp:setProperty property ="nai" name="person" param="nai"/> --%>
		
		<!--
			jsp:setProperty의 param == form태그의 name
		
		  -->
		
		<%-- <jsp:setProperty property="name" name="person" />
		<jsp:setProperty property = "gender" name="person" />
		<jsp:setProperty property ="nai" name="person" />
		 --%>
		
		<!-- form태그의 name값과property의 값이 같다면 param 생략시킬수 있음
			 자동으로 가져와 bean에 담아주기 때문에  -->
			 
			 <jsp:setProperty property="*" name="person"/>
	</jsp:useBean>
	
		<p>정보출력</p>
		 이름:<jsp:getProperty property="name" name="person"/><br>
		 성별:<jsp:getProperty property="gender" name="person"/><br>
		 나이:<jsp:getProperty property="nai" name="person"/><br>  
</body>
</html>
