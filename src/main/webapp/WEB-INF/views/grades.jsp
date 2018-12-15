<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" ; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">
<title>Home</title>
</head>
<body>
	<table>
		<tr>
			<td>년도</td>
			<td>학기</td>
			<td>이수학점</td>
			<td>상세보기</td>
		</tr>
			<c:forEach var="subject" items="${subject}">
			<tr>	
			<td><p><c:out value="${subject.year}"></c:out></p></td>
			<td><p><c:out value="${subject.semester}"></c:out></p></td>
			<td><p><c:out value="${subject.grades}"></c:out></p></td>
			<td><p><a href="${pageContext.request.contextPath}/subject/gradesdetail?year=${subject.year}&semester=${subject.semester}">링크</a></p></td>
			</tr>		
		</c:forEach>
	</table>

</body>
</html>
