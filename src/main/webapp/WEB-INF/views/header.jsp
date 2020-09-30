<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar" role="navigation" aria-label="main navigation">
	<div class="navbar-brand">
		<a class="navbar-item" href="${cp}"> <img
			src="https://bulma.io/images/bulma-logo.png" width="112" height="28">
		</a>
	</div>

	<div id="navbarBasicExample" class="navbar-menu">
		<div class="navbar-start">
			<a class="navbar-item"> 버킷리스트란? </a>


			<div class="navbar-item has-dropdown is-hoverable">
				<a class="navbar-link"> 커뮤니티 </a>
				<div class="navbar-dropdown">
					<a class="navbar-item"> About </a> <a class="navbar-item"> Jobs
					</a> <a class="navbar-item"> Contact </a>
					<hr class="navbar-divider">
					<a class="navbar-item"> Report an issue </a>
				</div>
			</div>
		</div>

		<div class="navbar-end">
			<div class="navbar-item">
				<c:choose>
					<c:when test="${id eq null}">
						<div class="buttons">
							<a class="button is-primary" href="${cp}/member/join"> <strong>Sign
									up</strong>
							</a> <a class="button is-light" href="${cp}/member/login"> Log in
							</a>
						</div>
					</c:when>
					<c:otherwise>
						<div class="buttons">
							<div class="navbar-item has-dropdown is-hoverable">
								<a class="navbar-link"> 마이페이지 </a>
								<div class="navbar-dropdown">
									<a class="navbar-item"> 나의 버킷리스트 </a> <a class="navbar-item">
										정보 수정 </a> <a class="navbar-item"> 팔로우 </a>
									<hr class="navbar-divider">
									<a class="navbar-item" href="${cp}/member/logout"> 로그아웃 </a>
								</div>
							</div>
							<a class="button is-info" style="margin-bottom:0;" 
							href="${cp}/write/bucket"> write bucketList
							</a>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</nav>

