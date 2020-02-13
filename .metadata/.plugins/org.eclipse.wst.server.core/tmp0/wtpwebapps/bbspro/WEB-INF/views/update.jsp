<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="update" method="post">
<%-- 		<input type="hidden" name="bno" value="${board.bno}"> --%>
		<table>
			<tr>
				<th>번호</th>
				<th><input type="text" name="bno" readonly value="${board.bno }"></th>
			</tr>
			<tr>
				<th>제목</th>
				<th><input type="text" name="title" value="${board.title }"></th>
			</tr>
			<tr>
				<th>내용</th>
				<th><textarea rows="5" cols="50" name="content">${board.content }</textarea></th>
			</tr>
			<tr>
				<th>작성자</th>
				<th><input type="text" name="writer" value="${board.writer }"></th>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="submit" value="저장"> 
				<input type="reset" value="취소"> 
				<input type="button" value="목록보기" onclick="location.href='list'">
				<input type="button" value="삭제" onclick="location.href='delete?bno=${board.bno}'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>