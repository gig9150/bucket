<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="bucket_list">
	<c:forEach items="${list}" var="vo">
		<div class="bucket_list_item size1">
			<img src="${cp}/resources/upload/${vo.sav_file}">
			<p>${vo.title}</p>
		</div> 
	</c:forEach>
</div>