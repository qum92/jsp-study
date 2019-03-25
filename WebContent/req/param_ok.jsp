<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
Map<String,String[]> map1 = request.getParameterMap();
String[] ids = map1.get("id");
String[] names = map1.get("name");
String[] credat = map1.get("credat");
String[] trans = map1.get("trans");
String[] content = map1.get("content");
if(ids!=null){
out.print(ids[0]+"<br>");
out.print(names[0]+"<br>");
out.print(credat[0]+"<br>");
out.print(trans[0]+"<br>");
out.print(content[0]+"<br>");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="2">
	<tr>
		<th>아이디</th>
		<th>이름</th>
		<th>날짜</th>
		<th>성별</th>
		<th>내용</th>
	</tr>
	<tr>
		<th><%=ids[0]%></th>
		<th><%=names[0]%></th>
		<th><%=credat[0]%></th>
		<th><%=trans[0]%></th>
		<th><%=content[0]%></th>
	</tr>
</table>
</body>
</html>