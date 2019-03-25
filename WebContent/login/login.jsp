<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
</head>
<body>
<form method="post" action="/jsp-study/user">
	ID : <input type="text" name="id"><br>
	PWD : <input type="text" name="pwd"><br>
	<button>로그인</button>
	<input type="hidden" name="cmd" value="login"> 
</form>
</body>
</html>