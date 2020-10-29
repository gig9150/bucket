<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="bucket_list">
	<c:forEach items="${list}" var="vo" varStatus="status">
		<div class="bucket_list_item" 
		data-title="${vo.title}" data-content="${vo.content}" 
		data-image="${cp}/resources/upload/${vo.sav_file}" data-id="${vo.member_id}">
			<img src="${cp}/resources/upload/${vo.sav_file}">
			<div>
				<c:choose>
					<c:when test="${vo.image != null}">
						<p><img src="${cp}/resources/memberImg/${vo.image}">
					</c:when>
					<c:otherwise>
						<p><img src="${cp}/resources/image/baseImage.jpg">
					</c:otherwise>
				</c:choose>
				<span>${vo.member_id}</span></p>${vo.title}<br>
				<p><img src="${cp}/resources/image/like.png"><span>${vo.li}</span></p>
			</div>
		</div>
	</c:forEach>
</div>
<div class="modal">
  <div class="modal-background"></div>
  <div class="modal-card">
<!--     <header class="modal-card-head"> -->
<!--       <p class="modal-card-title"></p> -->
<!--       <button class="detail_cancel delete" aria-label="close"></button> -->
<!--     </header> -->
    <section class="modal-card-body">
		<div class="columns">
		  <div class="column is-half modal-card-body-image">
		  	<div class="modal-image"></div>
		  	<div class="modal-etc">
		  		<span class="modal-etc-like">좋아요</span>
		  		<span class="modal-etc-follow">팔로우</span>
		  	</div>
		  </div>
		  <div class="column is-half modal-card-body-content">
		  	<div class="content-main-info">
		  		main-info
		  	</div><hr>
		  	<div class="content-comments">
		  		comments<br>comments<br>comments<br>comments<br>comments<br>comments<br>comments<br>comments<br>comments<br>
		  	</div><hr>
		  	<div class="content-etc">
		  		<input type="text" class="input is-small etc-input">
		  		<input type="button" class="etc-button"></div>
		  	</div>
		  </div>
		</div>
    </section>
  </div>
</div>
