<%@page import="test.jsp.study.db.DBCon"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String foodNum = request.getParameter("foodNum");
String foodName = request.getParameter("foodName");
String foodPrice = request.getParameter("foodPrice");
String sql = "delete from food where food_num=?";
PreparedStatement ps = DBCon.getCon().prepareStatement(sql);
ps.setString(1, foodNum);
int cnt = ps.executeUpdate();
if(cnt==1){
	out.println("삭제에 성공하셨습니다.");
	out.println("<a href=\"/jsp-study/food/list.jsp\">메뉴리스트로 가기</a>");
}else{
	out.println("삭제에 실패하셨습니다.");
}
%>