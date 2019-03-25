<%@page import="test.jsp.study.db.DBCon"%>
<%@page import="java.sql.PreparedStatement"%>
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
      request.setCharacterEncoding("utf-8");
      String ciName = request.getParameter("ci_name");
      String ciYear = request.getParameter("ci_year");
      String ciVender = request.getParameter("ci_vendor");
      String ciEtc = request.getParameter("ci_etc");
   %>
   <%
      String sql = "insert into car_info(ci_num, ci_name, ci_year, ci_vendor, ci_etc)";
      sql += " values((select nvl(max(ci_num),0)+1 from car_info),?,?,?,?)";
      try{
         PreparedStatement ps = DBCon.getCon().prepareStatement(sql);
         ps.setString(1, ciName);
         ps.setString(2, ciYear);
         ps.setString(3, ciVender);
         ps.setString(4, ciEtc);
         int cnt = ps.executeUpdate();
         String result = "차량 등록이 실패하였습니다.";
         if (cnt == 1) {
            result = "차량등록이 성공하였습니다.";
         }
      } catch ( Exception e) {
         out.println(e);
      } finally{
         DBCon.close();
      }
   %>
   <button onclick="goListPage()">| 리스트 보러가기 |</button>
   <%=ciName%>
   <%=ciYear%>
   <%=ciVender%>
   <%=ciEtc%>

   <script>
   function goListPage(){
      location.href = "/jsp-study/car-study/list.jsp";
   }
   </script>

</body>
</html>