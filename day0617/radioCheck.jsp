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
<form action="radioCheckAction.jsp" method="post">
	<table class="table table-striped" style="width: 50%">
		<tr>
			<td>
				<b> 지금계절은? </b>
				<input type="radio" name="season" value="봄" checked="checked">봄 &nbsp; <!-- 한 칸 띄고싶을 때 씀 &nbsp -->
				<input type="radio" name="season" value="여름">여름&nbsp; 
				<input type="radio" name="season" value="가을">가을 &nbsp; 
				<input type="radio" name="season" value="겨울">겨울 &nbsp; 
			</td>
		</tr>
		
		<tr>
			<td>
				<b>좋아하는 야식은?</b>&nbsp; &nbsp;
				<input type="checkbox" name="yasik" value="치맥">치맥 &nbsp; &nbsp;
				<input type="checkbox" name="yasik" value="족발">족발 &nbsp; &nbsp;
				<input type="checkbox" name="yasik" value="피자">피자 &nbsp; &nbsp;
				<input type="checkbox" name="yasik" value="곱창">곱창 &nbsp; &nbsp;
			</td>
		</tr>
		
		<tr>
			<td>
				<b>날짜를 선택하세요</b>&nbsp; &nbsp;
				<input type="date" name="naljja">
			</td>
		</tr>
		<tr>
			<td align="center">				
				<input type="submit" name="전송">
				<input type="reset" name="초기화">
			</td>
		</tr>
		
		
	</table>

</form>
</body>
</html>