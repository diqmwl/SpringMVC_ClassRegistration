<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" ; charset=utf-8">
<title>Create Offer</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>
<body>
	<sf:form method="post"
		action="${pageContext.request.contextPath}/subject/docreate" modelAttribute="subject">
		<table class="formtable">
			<tr>
				<td class="label">수강년도: </td>
				<td><sf:input class="control" type="text" value="2019" path="year"/><br/>
				<sf:errors path="year" class="error"/></td>
			</tr>
			<tr>
				<td class="label">학기: </td>
				<td><sf:input class="control" type="text" value="1" path="semester" /><br/>
				<sf:errors path="semester" class="error"/></td>
			</tr>
			<tr>
				<td class="label">교과코드: </td>
				<td><sf:input class="control" type="text" path="subjectcode"/><br/>
				<sf:errors path="subjectcode" class="error"/></td>
			</tr>			<tr>
				<td class="label">교과목명: </td>
				<td><sf:input class="control" type="text" path="subjectname"/><br/>
				<sf:errors path="subjectname" class="error"/></td>
			</tr>			<tr>
				<td class="label">구분: </td>
				<td><sf:input class="control" type="text" path="division"/><br/>
				<sf:errors path="division" class="error"/></td>
			</tr>
			<tr>
				<td class="label">학점: </td>
				<td><sf:input class="control" type="text" path="grades"/><br/>
				<sf:errors path="grades" class="error"/></td>
			</tr>
			
			<tr>
				<td class="label"> </td>
				<td><input class="control" type="submit" value="submit"/></td>
			</tr>
		</table>
	</sf:form>

</body>
</html>
