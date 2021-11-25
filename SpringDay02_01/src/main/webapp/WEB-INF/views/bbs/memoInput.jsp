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
	<form action="memoSave" method="post">
		<table>
			<tr>
				<th>Title : </th>
				<th><input type="text" placeholder="제목을 입력하세요" name="title" id="" /></th>
				<th>Writer : </th>
				<th><input type="text" name="name" id="" /></th>
			</tr>
			<tr>
				<th colspan="4">Memo</th>
			</tr>
			<tr>
				<th colspan="4"><textarea name="memo" id="" cols="30" rows="10" placeholder="내용을 입력하세요."></textarea></th>
			</tr>
			<tr>
				<th colspan="4"><input type="submit" value="Save" /></th>
			</tr>
		</table>
	</form>
</body>
</html>