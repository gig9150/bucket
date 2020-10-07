<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="bucket_list">
	<c:forEach items="${list}" var="vo">
		<div class="bucket_list_item size1">
			<img src="${cp}/resources/upload/${vo.sav_file}">
			<div><img src="${cp}/resources/memberImg/${vo.image}">${vo.member_id}<br>${vo.title}<br>
			<p><img src="${cp}/resources/image/like.png"><span>${vo.li}</span></p></div>
		</div> 
	</c:forEach>
</div>