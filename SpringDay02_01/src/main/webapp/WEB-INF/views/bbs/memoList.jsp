<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<th>No.</th>
			<th>Title</th>
			<th>Writer</th>
		</tr>
		<tr>
			<c:forEach items="${memoList}" var="vo" varStatus="status">
				<tr>
					<th>${status.index}</th>
					<th><a href=memoDetail?num=${status.index}>${vo.title}</a></th>
					<th>${vo.name}</th>
				</tr>
			</c:forEach>
		</tr>
	</table>
</body>
</html>