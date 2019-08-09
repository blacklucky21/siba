<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		String[] nameArr = {"신형만", "봉미선", "신짱구", "신짱아"};
		request.setAttribute("family", nameArr);
	%>
	<c:set var="alphabet" value="${fn:split('A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z', ',')}" scope="request" />


	<jsp:forward page="05_2_arrayForEachEnd.jsp"/>
</body>
</html>