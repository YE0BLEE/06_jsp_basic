<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>Member Register Form</h3>
	
	<form action="jsp_member_process.jsp" method="post">
		ID      : <input type="text" name="id" size="20"><br>
		PW      : <input type="password" name="pw" size="20"><br>
		CONTACT : <input type="text" name="contact" size="20"><br>
		GENDER  : <input type="checkbox" name="gender" value="MALE"> MALE
			      <input type="checkbox" name="gender" value="FEMALE"> FEMALE<br>
		HOBBY   : <input type="checkbox" name="hobbies" value="MOVIES"> MOVIES
			      <input type="checkbox" name="hobbies" value="BOOKS"> BOOKS
			      <input type="checkbox" name="hobbies" value="MUSIC"> MUSIC
			      <input type="checkbox" name="hobbies" value="SPORTS"> SPORTS<br>
		COMMENT : <input type="textarea" name="comment" size="50" value=""> <br>	
		   
		<input type="submit" value="SUBMIT">
		<a href="jsp_member_register.jsp"><input type="button" value="REFRESH"></a>
		
		
	</form>

</body>
</html>