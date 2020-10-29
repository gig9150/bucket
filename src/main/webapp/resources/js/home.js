$(function(){
//	페이징처리 변수
	var pageNum = 10;
//	layout 변수
//	var bucketCount = 11;
//	console.log(bucketCount);
	
//	setTimeout(function() {
//		for(let i=6;i<=10;i++){
//			$('.bucket_list_item:nth-child('+i+')').css('top',
//					parseInt($('.bucket_list_item:nth-child('+(i-5)+')').css('top'))
//					+parseInt($('.bucket_list_item:nth-child('+(i-5)+')').css('height'))
//					+20+'px');
//		}
//	}, 50);

	
//	무한 스크롤
	$(window).scroll(function(){
		var scrollHeight = $(window).scrollTop() + $(window).height();
	    var documentHeight = $(document).height();
	    
	    
	    if(scrollHeight >= documentHeight-0.5){
	    	$.ajax({
	    		url:"/list/bucket/list?pageNum="+ pageNum,
	    		dataType:'json',
	    		type:'get',
	    		success:function(data){
//	    			mainPage bucketList 출력 코드
	    			$.each(data,function(i,json) {
	    				var bucket = '';
	    				bucket += '<div class="bucket_list_item" data-title="'+json.title+'" data-content="'+json.content+'" data-image="/list/resources/upload/'+json.sav_file+'" data-id="'+json.member_id+'">';
	    				console.log(json.sav_file);
		    			bucket += '<img src="/list/resources/upload/'+json.sav_file+'">'
		    			bucket += '<div>';
		    			if(json.image!=null){
		    				bucket += '<p><img src="/list/resources/memberImg/'+json.image+'">';
		    			}else{
		    				bucket += '<p><img src="/list/resources/image/baseImage.jpg">';
		    			}
		    			bucket += '<span>'+json.member_id+'</span></p>'+json.title+'<br>';
		    			bucket += '<p><img src="/list/resources/image/like.png"><span>'+json.li+'</span></p></div></div>';
		    			$('.bucket_list').append(bucket);
	    			});
	    			
	    			$('.bucket_list_item').on('click',function(){
	    				$('.modal').addClass('is-active');
	    				$('.modal-image').html('<img src="'+$(this).data('image')+'">');
	    			});
	    			
	    			$('.modal-background').on('click',function(){
	    				$('.modal').removeClass('is-active');
	    			});
	    			
		            pageNum += 10;
		            
//	    			bucketCount += 10;
//	    			for(let i=bucketCount;i<=bucketCount+10;i++){
//    				$('.bucket_list_item:nth-child('+i+')').css('top',
//    						parseInt($('.bucket_list_item:nth-child('+(i-5)+')').css('top'))
//    						+parseInt($('.bucket_list_item:nth-child('+(i-5)+')').css('height'))
//    						+20+'px');
//    				}

	    		}
	    	});
	    }
	});
	
//	bucket detail page on/off
	
	$('.bucket_list_item').on('click',function(){
		$('.modal').addClass('is-active');
		$('.modal-image').html('<img src="'+$(this).data('image')+'">');
	});
	
	$('.modal-background').on('click',function(){
		$('.modal').removeClass('is-active');
	});
	
//	좋아요,팔로우 
	$('.modal-etc-like').click(function(){
		if($(this).html() == '좋아요'){
			$(this).html('좋아요 취소');
			$(this).css('color','blue');
		}else{
			$(this).html('좋아요');
			$(this).css('color','black');
		}
	});
	
	$('.modal-etc-follow').click(function(){
		if($(this).html() == '팔로우'){
			$(this).html('팔로잉');
			$(this).css('color','blue');
		}else{
			$(this).html('팔로우');
			$(this).css('color','black');
		}
	});
	
});

