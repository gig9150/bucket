<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<section class="hero is-success is-fullheight">
	<div class="hero-body">
		<div class="container has-text-centered">
			<div class="column is-4 is-offset-4">
				<h3 class="title has-text-black">join</h3>
				<hr class="login-hr">
				<p class="subtitle has-text-black">저희의 새 식구가 되어주세요!</p>
				<div class="box">
					<figure class="avatar">
						<img src="${cp}/resources/image/bucketList.jpg">
					</figure>
					<form action="${cp}/member/JoinOk">
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
							<div class="control">
								<input class="input is-large" type="email"
									placeholder="Your Email" name="email">
							</div>
						</div>

						<div class="field">
							<div class="control">
								<input class="input is-large" type="tel"
									placeholder="Your Phone" name="phone">
							</div>
						</div>
						
						<button class="button is-block is-info is-large is-fullwidth">
							Join <i class="fa fa-sign-in" aria-hidden="true"></i>
						</button>
					</form>
				</div>
				<p class="has-text-grey">
					<a href="${cp}/member/login">Sign In</a> 
				</p>
			</div>
		</div>
	</div>
</section>