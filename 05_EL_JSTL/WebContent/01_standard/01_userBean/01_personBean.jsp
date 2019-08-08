<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>		
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h2>JSP 표준 액션 태그중 useBean을 사용하여 VO클래스의 객체 정보를 불러와보기</h2>
		<jsp:useBean id="person1" class="action.model.vo.Person" scope="request"/>
		 <!-- 해당 Scope 영역 안에서 속성 값이 해당 클래스 타입으로 person이 존재 할 때 
		 	  해당 객체를 가져오고 없다면 새로 생성 -->
		 	  
		 	  
		 이름:<jsp:getProperty property="name" name="person1"/><br>
		 성별:<jsp:getProperty property="gender" name="person1"/><br>
		 <%-- 나이:<jsp:getProperty property="age" name="person1"/><br>  --%>
		  나이:<jsp:getProperty property="nai" name="person1"/><br>  
		 
		 <!--getter에 있는 method 이름을 가지고 읽어온다  db의 컬럼명과 똑같아서 가져오기가 가능하다 ㅇㅇ-->
		 
		 <hr>
		 <h2>JSP표준액션 태그 중 useBean을 사용하여 VO클래스에 데이터 초기화 하기</h2>
		 <jsp:useBean id="person2" class="action.model.vo.Person" scope="request"/>
		 <jsp:setProperty property="name" name="person2" value="신우박"/>
		 <jsp:setProperty property="gender" name="person2" value="F"/>
		 <jsp:setProperty property="nai" name="person2" value="20"/>
		 
		 
		 이름:<jsp:getProperty property="name" name="person2"/><br>
		 성별:<jsp:getProperty property="gender" name="person2"/><br>
		 나이:<jsp:getProperty property="nai" name="person2"/><br>  
		 	  
		 	  
</body>
</html>