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
<b>여러데이터 전송</b>
<form action="myformsAction.jsp" method="post">
	<table class="table table-hover" style="width: 50%">
		<tr>
			<th> 이름 </th>
			<td> 
				<input type="text" name="name" size="20"
				placeholder="이름">
			</td>
		</tr>
		
		<tr>
			<th> 비밀번호 </th>
			<td> 
				<input type="password" name="pass" size="20"
				placeholder="비밀번호">
			</td>
		</tr>	
		
		<tr>
			<th> 운전면허 </th>
			<td> 
				<input type="checkbox" name="license">운전면허
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center"> 
				<input type="submit" value="전송">
				<input type="reset" value="초기화">
			</td>
		</tr>
	</table>
	
</form>

</body>
</html>