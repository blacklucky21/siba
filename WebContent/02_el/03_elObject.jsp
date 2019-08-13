<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
  	Cookie c = new Cookie("savedId","blacklucky21");
	c.setMaxAge(60); // 60초
	//c.setMaxAge(60*60); // 1시간
	response.addCookie(c);
	//설정을 안해주면 쿠키만료시간 ==> 브라우저가 종료될때
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>그 밖의 EL내장 객체: cookie,initParam, header, pageContext</h2>
	<h3>Cookie</h3>
	
	<p>
		클라이언트 로컬에 키와 값 쌍으로 저장<br>
		쿠키에는 쿠키 이름과 값, 저장 기간, 경로 정보가 들어가 있으며<br>
		주로 자동 로그인이나 하루 동안 보지 않기, 장바구니 등에 사용
		</p>
		
		쿠키에서 가져온 세션 ID 값: ${cookie.JSESSIONID.value}<br>
		쿠키에서 가져온 savedId 값 : ${cookie.savedId.value }<br>
		존재하지 않는 쿠키 값 요청 : ${cookie.nonExist.value}<br>
	
		
		
		<hr>
		
		<h3>initParam : 컨텍스트 초기화 파라미터</h3>
		<p>web.xml에 설정한 초기화 파라미터 값을 가져옴</p>
		컨텍스트 파라미터 : ${initParam.contextParam }<br>
		컨텍스트 파라미터(스크립팅 ) : <%= application.getInitParameter("contextParam") %>
		
		
		<%-- <form action="<%=request.getContextPath()%>/ELObject.do" method="post"> --%>
		<form action="${pageContext.request.contextPath}/ELObject.do" method="post">
			<input type="submit" value="전송">
		</form>
		
		<hr>
		
		<h3>pageContext</h3>
		method : ${pageContext.request.method}<br>
		contextPath : ${pageContext.request.contextPath}<br>
		
		
		
</body>
</html>