function fileUpload(input) {
    if (input.files && input.files[0]) {
    	
    	//html5 api 사용 (파일읽기)
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#column2_img')
                .attr('src', e.target.result)
                .css('width','300px')
                .css('height','200px');
        };

        reader.readAsDataURL(input.files[0]);
        $("#column1").hide();
     	$("#column2").show(1000);	
    }
}

$(function(){
	$('#summernote').summernote({
		  height: 300,          
		  minHeight: null,             
		  maxHeight: null,
		  lang: "ko-KR",				
		  placeholder: '당신의 버킷리스트를 입력하세요!!'	
	});
	
	$('.tag_button').click(function(){
		if($('.tag_input').val()==''){
			alert('태그를 입력해주세용');
		}else{
			var tag = $('.tag_input').val();
			var tag_content = 
				'<input type="text" name="tag" class="input tag_content" value="'+tag+'" readonly>';
			$(tag_content).hide().appendTo('.control_tag').show(1000);	
			$('.tag_input').val('');
		}
	});
	
	$('.tag_button').one('click',function(){
		$('.control_tag_content').css('display','block');
	});
	
	$(document).on('dblclick','input[name="tag"]',function(){
		$(this).hide(1000);
	});
		
		
});

