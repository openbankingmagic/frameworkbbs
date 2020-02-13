<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td colspan="5" align="right"><a href="input">글쓰기</a></td>
		</tr>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>날짜</th>
			<th>조회수</th>
			<c:forEach items="${list }" var="board">
				<tr>
					<td>${board.bno }</td>
					<%-- 					<td><a href="update?bno=${board.title }">${board.title }</a></td> --%>
					<td><a href="update?bno=${board.bno}">${board.title}</a></td>
					<td>${board.writer }</td>
					<td><fmt:formatDate value="${board.regdate }" /></td>
					<td>${board.readcount }</td>
				</tr>
			</c:forEach>
			
		<tr>
			<td colspan="5" align="center">
			<c:if test="${pageMaker.prev }">
					<a href="${pageMaker.startPage-1 }">이전</a>
				</c:if> 
				<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="i">
					<c:choose>
						<c:when test="${pageMaker.cri.page==i }">${i }</c:when>
						<c:otherwise><a href="${i }">${i }</a></c:otherwise>
					</c:choose>
				</c:forEach> 
				<c:if test="${pageMaker.next }">
					<a href="${pageMaker.endPage+1 }">다음</a>
				</c:if>
				</td>
		</tr>
	</table>


</body>
</html>