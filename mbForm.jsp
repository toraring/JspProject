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
	<form action="mbFormAction.jsp" method="post">
		<table class="tabel table-bordered" align="center">
			<tr>
				<th>작성자</th>
				<td>
					<input type="text" name="name" placeholder="이름을 쓰시오">
				</td>
			</tr>	
			
			<tr>
				<th>제목</th>
				<td>
					<input type="text" name="subject" placeholder="제목을 쓰시오">
				</td>
			</tr>	
			
			<tr>
				<th>내용</th>
				<td>
					<input type="text" name="content" placeholder="내용을 쓰시오">
				</td>
			</tr>	
			
			<tr>
				<th>작성일자</th>
				<td>
					<input type="date" name="sdate">

					
				</td>
			</tr>	
			
			<tr>
				<td align="center">
					<input type="submit" value="전송">
					<input type="button" value="목록"
					onclick="location.href = 'mbList.jsp'">
				</td>
			</tr>	
			
			
		
		</table>
	
	
	</form>

</body>
</html>