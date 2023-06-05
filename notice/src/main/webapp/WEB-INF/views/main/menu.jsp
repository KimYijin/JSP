<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	header{
    	text-align: center;
	}
	ul{
		list-style: none;
	}
	ul li{
			display:inline;
			padding: 10px;
			text-align: center; 
	}
	form{
		text-align: center;
	}
</style>
</head>
<body>
	<div>
		<nav id="topMenu">
			<ul>
				<li><a class="menuLink" href="main.do">Home</a></li>
				<li><a class="menuLink" href="noticeList.do">Notice</a></li>
				<c:if test="${empty id }">
					<li><a class="menuLink" href="memberJoin.do">MemberJoin</a></li>
				</c:if>	
				<li><a class="menuLink" href="memberList.do">Member</a></li>
				<li><a class="menuLink" href="#">보류</a></li>
				<li><a class="menuLink" href="#">보류</a></li>
				<c:if test="${empty id }">
				<li><a class="menuLink" href="memberLoginForm.do">Login</a></li>
				</c:if>
				<c:if test="${not empty id }">
				<li><a class="menuLink" href="#">Logout</a></li>
				</c:if>
				<c:if test="${not empty name }">
				<li><a class="menuLink" href="#">${name }님 로그인</a></li>
				</c:if>
			</ul>
		</nav>
	</div>
</body>
</html>