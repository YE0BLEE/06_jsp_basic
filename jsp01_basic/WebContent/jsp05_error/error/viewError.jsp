<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="background-color: red; color: white">
	<p>요청을 처리하는 과정에서 에러가 발생했습니다.</p>
	<p>불편을 드려 죄송합니다.</p>
	<p>신속히 처리하겠습니다.</p>
	</div>
	<hr />
	
	에러타입 : <%= exception.getClass().getName() %> <br />
	에러메시지 : <%= exception.getMessage() %> <br />
	에러메시지 : <%= exception.getLocalizedMessage() %>
</body>
</html>