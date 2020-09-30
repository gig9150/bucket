<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section class="hero is-success is-fullheight">
	<div class="hero-body">
		<div class="container has-text-centered">
			<div class="column is-4 is-offset-4">
				<h3 class="title has-text-black">Login</h3>
				<hr class="login-hr">
				<p class="subtitle has-text-black">버킷리스트 커뮤니티에 오신것을 환영합니다!</p>
				<div class="box">
					<figure class="avatar">
						<img src="${cp}/resources/image/bucketList.jpg">
					</figure>
					<form action="${cp}/member/loginOk">
						<div class="field">
							<div class="control">
								<input class="input is-large" type="text"
									placeholder="Your Id" name="id">
							</div>
						</div>

						<div class="field">
							<div class="control">
								<input class="input is-large" type="password"
									placeholder="Your Password" name="pwd">
							</div>
						</div>
						<div class="field">
							<label class="checkbox"> <input type="checkbox">
								Remember me
							</label>
						</div>
						<button class="button is-block is-info is-large is-fullwidth">
							Login <i class="fa fa-sign-in" aria-hidden="true"></i>
						</button>
						<c:if test="${msg eq 'fail'}">
							<div class="field" style="padding-top:20px;color:red">
								<p>앗! 아이디와 비밀번호를 다시 확인해주세요.</p>
							</div>
						</c:if>
					</form>
				</div>
				<p class="has-text-grey">
					<a href="${cp}/member/join">Sign Up</a> &nbsp;·&nbsp; <a href="../">Forgot
						Password</a> &nbsp;·&nbsp; <a href="../">Need Help?</a>
				</p>
			</div>
		</div>
	</div>
</section>