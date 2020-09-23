<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>당신의 bucket list 커뮤니티</title>
<%-- <link rel="stylesheet" href="${cp}/resources/css/bulma.css"> --%>
<link rel="stylesheet" href="${cp}/resources/css/home.css">
<link rel="stylesheet" href="${cp}/resources/css/member.css">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<script src="${cp}/resources/js/jquery-3.5.1.js"></script>
<script src="${cp}/resources/js/home.js"></script>
<script src="${cp}/resources/js/masonry.pkgd.min.js"></script>
</head>
<body>
<section id="wrap">
	<header id="header">
		<tiles:insertAttribute name="header"/>
	</header>
	<section id="content">
		<tiles:insertAttribute name="content"/>
	</section>
</section>
</body>
</html>