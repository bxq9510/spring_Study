<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- html 5 version -->
<html lang="en"> <!-- 개발 언어가 영문 -->
<head>
    <meta charset="UTF-8"> <!-- 글자 코드방식 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title> <!-- 문서 제목 -->
    <style>

    </style>
</head>

<body>
    <h2 id="MainLabel"> 게시판 글쓰기</h2>
    <form action="MemberInput" method=post>
    <table border="1" id="logintable">
        <tr>
            <td>ID</td>
            <td><input type="text" name="id" id="id"></td>
        </tr>
        <tr>
            <td>PW</td>
            <td><input type="text" name="pw" id="pw"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="LOGIN"> 
            </td>
        </tr>
    </table>
    </form>
</body>
<script>
</script>
</html>