<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
	width: 50%;
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	border: 1px solid black;
}
</style>
</head>
<body>
	<table>
		<tr>
			<th><h2>MENU</h2></th>
			<th><a href="memoForm">Main</a></th>
			<th><a href="memoInput">Write MEMO</a></th>
			<th><a href="memoList">Full MEMO</a></th>
		</tr>
	</table>
	<hr>
	<table>
		<tr>
			<th>Title :</th>
			<th>${oneDate.title}</th>
			<th>Writer :</th>
			<th>${oneDate.name}</th>
		</tr>
		<tr>
			<th colspan="4">Memo</th>
		</tr>
		<tr>
			<th colspan="4">${oneDate.memo}</th>
		</tr>
		<tr>
			<th colspan="2">${oneDate.date}</th>
			<th colspan="2">조회수 : ${oneDate.views}</th>
		</tr>
	</table>
</body>
</html>