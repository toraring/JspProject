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
<h1> jsp시작 </h1>
<!-- java코드를 쓰며면 scriptlet 영역을 표시 후 코딩ㄱ -->
<%
// 여기는 자바 영역
int age = 20;
String name = "홍길동";

//내장 객체 out을 이용해서 브라우져 출력가능(하지만 권장 ㄴ)
out.print("내이름은" + name + "이고 나이는 " + age + "세 입니다.");
%>
<h4> 문자열이나 변수출력은 표현식을 이용해서 출력을 많이 한다(권장) </h4>
<b> 이름: </b><%= name %><br>
<b> 나이: </b><%= age %>세<hr>
</body>
</html>