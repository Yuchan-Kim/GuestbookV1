<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List"  %>
<%@ page import = "com.guestbook.vo.guestbookVo" %>
<%
	List<guestbookVo> guestList = (List<guestbookVo>)request.getAttribute("guestList");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<form>
		<table border="1" width="540px">
			<tr>
				<td>이름</td><td><input type="name" name="name"></td>
				<td>비밀번호</td><td><input type="pw" name="pw"></td>
			</tr>
			<tr>
				<td colspan="4"><textarea cols="72" rows="5" name = "comments"></textarea></td>
			</tr>
			<tr>
				<td colspan="4"><button type="submit" name = "action" value = "register" >등록</button></td>
			</tr>
		</table>
	</form>
	<br>

	<%for(int i=0; i<guestList.size(); i++){%>
	<table border="1" width="540px">
		<tr>
			<td>아이디: [<%= guestList.get(i).getPersonId() %>]</td>
			<td>이름: <%= guestList.get(i).getName() %></td>
			<td>날짜: 2022-01-01</td>
			<td><a href="/GuestBook/guests?action=delete&num=<%=guestList.get(i).getPersonId()%>">삭제</a></td>
		</tr>
		<tr>
			<td colspan="4"><%= guestList.get(i).getComments() %></td>
		</tr>
	</table>
	<br>
	<% } %>
	

	
	<br>
</body>
</html>