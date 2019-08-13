<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>산술 연산</h2>
	${ 10*7 } <br>
	${10/7} ${ 10 div 7 }<br>
	${10%7} ${10 mod 7 }<br>
	
	
	<% 
		String str1 = "안녕";
		String str2 = new String("안녕");
		
		int big = 10;
		int small = 3;
		
		pageContext.setAttribute("str1", str1);
		pageContext.setAttribute("str2", str2);
		pageContext.setAttribute("big", big);
		pageContext.setAttribute("small", small);
		
		/* el을 사용하기 위에 위에 4개를 담아줌 */
	%>
	
		스크립팅 : <%=str1 == str2 %>   <%=str1.equals(str2) %><br>
		el : ${ str1 ==str2 } 또는 ${str1 eq str2 } 같지 않을 경우 ${str1 ne str2 }<br>
		
		<!-- el은 String과 String을 비교할때 주소값을 비교하는게 아니라 그안의 값 자체를 비교한다 -->
		
		<br>
		
		${big>small } 또는 ${big gt small }<br>
		
		<%java.util.List<String> list = new java.util.ArrayList<>(); 
			pageContext.setAttribute("list", list);
		%>
		
		${empty list}  ${list.isEmpty()} ${list == null }
		
		
		
		
</body>
</html>