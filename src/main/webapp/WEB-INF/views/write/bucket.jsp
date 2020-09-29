<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section class="hero is-primary is-fullheight">
  <div class="hero-body">
    <div class="container has-text-centered">
    	<form action="${cp}/write/bucket" enctype="multipart/form-data">
	   		<div class="column is-three-fifths is-offset-one-fifth" id="column1">
	   				<!-- 이미지 선택 -->
	   				<h3 class="title has-text-black">이미지를 선택해 주세요.</h3>
					<hr class="login-hr">
		    		<div class="file is-centered is-large">
					  <label class="file-label">
					    <input class="file-input" type="file" name="file" onchange="fileUpload(this)">
					    <span class="file-cta">
					      <span class="file-label">
					        Choose a file…
					      </span>
					    </span>
					  </label>
					</div>
	    	</div>
	    	<div class="column is-three-fifths is-offset-one-fifth" id="column2" style="display:none">
	    		<h3 class="title has-text-black">글 등록</h3>
				<hr class="login-hr">
				<div class="control">
					<img id="column2_img">
				</div>
			    <div class="control">
			    	<label class="label">제목
			    	<input type="text" class="input"></label>
			    </div>
			    <div class="control">
			    	<label class="label">내용
			    	<input type="text" class="input"></label>
			    </div>
			    <div class="control">
			    	<label class="label">태그추가
			    	<input type="text" class="input"></label>
			    	<input type="button" class="button" value="등록 ">
		    	</div>		
	    	</div>
    	</form>
    </div>
  </div>
</section>
