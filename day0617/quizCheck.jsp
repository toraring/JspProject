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
<form action="quizCheckAction.jsp" method="post">
<table>
	<caption>Radio&Check</caption>
	<tr height="30">
		<td>
		<b>최종학력을 선택하세요</b>
		<!-- radio는 name이 동일해야함. form안에 table이 꼭 있어야함.-->
		<input type="radio" name="grade" value="고등학교"
		>고등학교&nbsp;
		<input type="radio" name="grade" value="전문대학"
		>전문대학&nbsp;
		<input type="radio" name="grade" value="대학교"
		>대학교&nbsp;
		<input type="radio" name="grade" value="대학원"
		>대학원&nbsp;
		<span id = "out6"></span>
		</td>
	</tr>
	
	<tr>
		<td>
			<b>본인이 가능한 언어는?</b>
				<input type="checkbox" name="Lang" value= "C언어" 
				>C언어&nbsp;
				<input type="checkbox" name="Lang" value= "자바"
				>자바&nbsp;
				<input type="checkbox" name="Lang" value= "Spring"
				>Spring&nbsp;
				<input type="checkbox" name="Lang" value= "Android"
				>Android&nbsp;		
				<input type="checkbox" name="Lang" value= "C+"
				>C+&nbsp;
				<span id="out5"></span>
		</td>
	</tr>
	
	<tr>
		<td>
			<b>우리반에서 가장 좋은 사람?</b>
				<select  name="like">
					<option value="a">a</option>
					<option value="b">b</option>
					<option value="c">c</option>
					<option value="d" selected="selected">d</option>
					<option value="e" >e</option>
				</select>
				<span id="out4"></span>
		</td>
	</tr>
	
	<tr>
		<td>
			<b>당신의 키는 몇cm인가요</b>
				<input type="number" name="height" min="150"
				max="230" step="2" value="150">
				<span id="out3"></span>cm
		</td>
	</tr>
	
	<tr>
		<td>
			<b>당신의 몸무게는?</b>
			<!-- value는 선택하기전에 보여지는 값, step은 얼마큼 갈껀지 -->
				<input type="number" name="weight" min="20"
				max="200" step="2" value="50">
				<span id="out1"></span>kg
		</td>
	</tr>
	
	<tr>
		<td>
			<b>색상선택</b>
				<input type="color">
				<span id='col'></span>
		</td>
	</tr>
	
	
	<tr>
		<td>
			<b>날짜선택</b>
				<input type="date" name="naljja" >
				<span id="out2"></span>
		</td>
	</tr>
	
	<tr>
		<td align="center">
			<input type="submit" value="전송">
			<input type="reset" value="초기화">
		</td>
	</tr>
	
	
</table>
</form>


</body>
</html>