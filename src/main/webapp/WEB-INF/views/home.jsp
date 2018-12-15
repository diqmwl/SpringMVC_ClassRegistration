<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" ; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
<title>Home</title>
</head>
<body>
	<%-- <p>
		<a href="${pageContext.request.contextPath}/offers">학점 확인하기</a>
	</p>
	<p>
		<a href="${pageContext.request.contextPath}/createoffer">Add a new
			Offers</a>
	</p> --%>
	<c:if test="${pageContext.request.userPrincipal.name == null}">
		<p>
			<a href="${pageContext.request.contextPath}/login">로그인 하기</a>
		</p>
	</c:if>
	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<button type="button" onclick="location.href='${pageContext.request.contextPath}/subject/grades'">학기별 이수 학점 조회</button>
		<button type="button" onclick="location.href='${pageContext.request.contextPath}/subject/apply'">수강 신청하기</button>
		<button type="button" onclick="location.href='${pageContext.request.contextPath}/subject/gradessearch'">수강 신청 조회</button>
		<button type="button" onclick="javascript:document.getElementById('logout').submit()">로그아웃</button>
	</c:if>



	<form id='logout' action='${pageContext.request.contextPath}/logout'
		method='POST'>
		<input name="${_csrf.parameterName}" type="hidden"
			value="${_csrf.token}" />
	</form>
</body>
</html>
