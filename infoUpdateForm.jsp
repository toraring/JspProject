<%@page import="info.model.infoDAO"%>
<%@page import="info.model.infoDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"/></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"></link>

</head>
<body>
<body>
<body>
<%
String num=request.getParameter("num");
infoDAO dao=new infoDAO();
infoDTO dto=dao.getData(num);

%>
<form action="infoUpdateAction.jsp" method="post">
       <table class="table table-bordered">
          <tr>
             <th>이름</th>
             <td>
                <input type="text" name="name" size="7"
                value="<%=dto.getName()%>">
             </td>
             
          </tr>
          
          <tr>
             <th>주소</th>
             <td>
                <input type="text" name="addr" size="20"
                value="<%=dto.getAddr()%>">
             </td>
             
          </tr>
          
          <tr>
            <td colspan="2" align="center">
            <!--hidden으로 num값 넘겨야한다...위치상관없음  -->
            <input type="hidden" name="num" value="<%=num%>">
               <input type="submit" value="전송">
               <input type="button" value="목록"
               onclick="location.href='infoList.jsp'">
            </td>
          </tr>
       </table>
   
   </form>

</body>

</body>

</body>
</html>