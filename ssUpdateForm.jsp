<%@page import="java.util.StringTokenizer"%>
<%@page import="sinsang.model.SinsangDTO"%>
<%@page import="sinsang.model.SinsangDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"/></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"></link>
<script type="text/javascript">
	function goFocus(hp) {
		if(hp.value.length == 4)
			frm.hp3.focus();
	}
</script>
</head>
<body>
<%
String num = request.getParameter("num");

SinsangDAO dao = new SinsangDAO();
SinsangDTO dto = dao.getData(num);
%>
<form action="ssUpdateAction.jsp" method= "post" name="frm">
	<table class="tabel table-bordered" style="width: 40%">
		<caption> 신상정보 </caption>
		<tr>
			<th> 이름 </th>
			<td><input type="text" name="name" size="8"
			value="<%=dto.getName()%>">
			</td>
		</tr>
		
		<tr>
			<th>혈액형</th>
			<td>
				<select size="1" name="blood" >
				<%
				String [] str = {"A", "B", "O", "AB"};
				
				for(int i = 0; i < str.length; i++)
				{
					if(dto.getBlood().equalsIgnoreCase(str[i]))
					{%>
						<option value="<%= str[i]%>" selected="selected"><%= str[i]%>형
						</option>
					<%}else
					{%>
						<option value="<%= str[i]%>"><%= str[i]%>형
						</option>
					<%}
				}
				%>
				<!-- 없어도 됨. 앞에 form과 중복됨
					<option value="A">A형</option>
					<option value="B">B형</option>
					<option value="O">O형</option>
					<option value="AB">AB형</option> -->
				</select>
			</td>
		</tr>
		
		<tr>
		<%
		//구분자 -로 한다
		StringTokenizer st = new StringTokenizer(dto.getHp(),"-");
		String hp1 = st.nextToken();
		String hp2 = st.nextToken();
		String hp3 = st.nextToken();
		
		%>
		</tr>
		
		
		<tr>
			<th>핸드폰</th>
				<td>
					<select size="1" name="hp1">
					<%
					String [] strHp = {"010", "011", "017", "019"};
					
					for(int i = 0; i < strHp.length; i++)
					{//hp2,3는 선택사항이라 value값만 넣으면 됨.
						if(hp1.equals(strHp[i]))
						{%> 
							<option(<%=strHp[i] %>)"> <%=strHp[1] %></option>  
						<%}
					}
					%>
						<!-- 위의 함수로 대체 
						 <option value="010">010</option>
						<option value="011">011</option>
						<option value="017">017</option>
						<option value="019">019</option>	 -->				
					</select>
					<b>-</b>
					<input type="text" name="hp2" size="3"
					value="<%=hp2 %>" onkeyup="goFocus(this)">
					<b>-</b>
					<input type="text" name="hp3" size="3"
					value="<%=hp3 %>">
					
				</td>
		</tr>
		
		<tr>
			<th> 생년월일 </th>
			<td><input type="date" name="birth"	value="<%=dto.getBirth()%>">
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
			
			<!-- hidden -->
			<input type="hidden" name="num" value="<%=dto.getNum()%>"> 
				<input type="submit" value="db저장" >
				<input type="button" value="목록" 
				onclick="location:href = 'sinsangList.jsp'">
			
			</td>
		</tr>
		
		
		
	</table>

</form>
</body>
</html>