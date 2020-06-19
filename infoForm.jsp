<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding ="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"/></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"></link>

</head>
<body>
	<form action="infoAction.jsp" method="post">
		<table class="tabel table-bordered">
			<tr>
				<th> 이름 </th>
				<td> 
					<input type="text" name="name" size="7"
					placeholder="이름"> 
				</td>
			</tr>
			
			<tr>
				<th> 주소 </th>
				<td> 
					<input type="text" name="addr" size="20"
					placeholder="주소"> 
				</td>
			</tr>
			
			<tr>
				<td colspan="2" align="center"> 
					<input type="submit" value="전송">
					<input type="button" value="목록"
					onclick="location.href = 'infoList.jsp'"> 
				</td>
			</tr>
			
		
		</table>
	
	</form>
</body>
</html>