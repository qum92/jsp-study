<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String name = "is null";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String id = "osfu";
String pwd= "12345678";
Connection con = DriverManager.getConnection(url, id, pwd);
String sql = "delete from users where name is null";
PreparedStatement ps = con.prepareStatement(sql);
int cnt = ps.executeUpdate();
String result = "실패";
if(cnt==1){
	result = "성공";
}
%>

삭제결과 : <%= result%>
</body>
</html>