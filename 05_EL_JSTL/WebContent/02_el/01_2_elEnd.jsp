<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "action.model.vo.Person" %>
    
 <% 
 	Person person = (Person)request.getAttribute("person");
 	char gender = (char)request.getAttribute("gender");
 	String beverage = (String)request.getAttribute("beverage");
 	int age = (int)(request.getAttribute("age"));
	String[] prodcuts = (String[])request.getAttribute("beverage");
	String book = (String)request.getAttribute("book");
	String movie = (String)request.getAttribute("movie");
 	
 	
 	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>