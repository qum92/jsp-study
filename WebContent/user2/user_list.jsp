<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="/jsp-study/user?cmd=users">유저리스트보기</a>
<a href="/jsp-study/user?cmd=user&ui_num=25">25번 데이터보기</a>
<form method="post" action="/jsp-study/user">
	번호 : <input type="number" name="ui_num"><br>
	이름 : <input type="text" name="ui_name"><br>
	아이디 : <input type="text" name="ui_id"><br>
	나이 : <input type="text" name="ui_age"><br>
	비고 : <input type="text" name="ui_etc"><br>
	<input type="hidden" name="cmd" value="insert">
	<button type="button" onclick="goInsertPage()">유저등록</button>
	<button type="button" onclick="goUpdatePage()">유저수정</button>
	<button type="button" onclick="goDeletePage()">유저삭제</button>
</form>
<form method="post" action="/jsp-study/user">
	이름 : <input type="text" name="ui_name"><br>
	아이디 : <input type="text" name="ui_id"><br>
	나이 : <input type="text" name="ui_age"><br>
	비고 : <input type="text" name="ui_etc"><br>
	번호 : <input type="number" name="ui_num"><br>
	<input type="hidden" name="cmd" value="update">
	<button>유저수정</button>
</form>
<form method="post" action="/jsp-study/user">
	번호 : <input type="number" name="ui_num"><br>
	<input type="hidden" name="cmd" value="delete">
	<button>유저삭제</button>
</form>
</body>
</html>
<script>
	function goInsertPage(){
		location.href="/jsp-study/user"
	}
	function goUpdatePage(){
		location.href="/jsp-study/user";
	}
	function goDeletePag(){
		location.href="/jsp-study/user";
	}
</script>