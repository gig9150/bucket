<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section class="hero is-primary is-fullheight">
  <div class="hero-body">
    <div class="container has-text-centered">
    	<form action="${cp}/write/goBucket" enctype="multipart/form-data" method="post">
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
			    	<input type="text" class="input" name="title" placeholder="제목을 입력하세요." required>
			    </div>
			    <div class="control">
					<textarea id="summernote" name="content" required></textarea>
			    </div>
			    <div class="control">
			    	<input type="text" class="tag_input input" placeholder="태그를 입력해주세요">
			    	<input type="button" class="tag_button button" value="등록">
		    	</div>
		    	<div class="control_tag_content">
		    		<p>태그를 지우고 싶으시면 더블클릭해주세요!</p>
		    	</div>
		    	<div class="control_tag"></div>
		    	<div class="control">
		    		<input type="submit" value="작성" class="button is-rounded">
		    	</div>
	    	</div>
    	</form>
    </div>
  </div>
</section>
