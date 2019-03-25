<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<form method="post" action="/jsp-study/req/user_info_ok.jsp">
<div align="center">
<table border="3">
	<tr>
		<th>이름 : </th>
		<th>나이 : </th>
		<th>아이디 : </th>
		<th>특이사항 : </th>
	</tr>
	<tr>
		<td><input type="text" name="ui_name"></td>
		<td><input type="number" name="ui_age"></td>
		<td><input type="text" name="ui_id"></td>
		<td><textarea type="text" name="ui_etc" cols="40" row="20"></textarea></td>
	</tr>
</table>
<button>등록하기</button>
</div>
</form>
</body>
</html>