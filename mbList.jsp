<%@page import="java.util.Vector"%>
<%@page import="myboard.model.MyBoardDTO"%>
<%@page import="myboard.model.MyBoardDAO"%>
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
<%
MyBoardDAO dao = new MyBoardDAO();
Vector<MyBoardDTO> list = dao.giveMe();


%>

<a href="mbForm.jsp"> 데이터 추가</a>
<hr>
<table class="table table-dotted">
	<caption >리스트 출력</caption>
	<tr>
		<th> 번호 </th>
		<th> 작성자 </th>
		<th> 제목 </th>
		<th> 내용 </th>
		<th> 작성일자 </th>
		<th> 수정 </th>
	</tr>


	<%
	for(int i = 0; i < list.size(); i++)
	{
		MyBoardDTO dto = list.get(i);
	
	%>
	<tr>
		<td> <%=i+1 %> </td>
		<th> <%=dto.getNum() %> </th>
		<th> <%=dto.getName()%></th>
		<th> <%=dto.getSubject() %></th>
		<th> <%=dto.getContent() %></th>
		<th> <%=dto.getSdate() %></th>
		<th> 수정 </th>
	</tr>
	<%}
	 %>
</table>

</body>
</html>