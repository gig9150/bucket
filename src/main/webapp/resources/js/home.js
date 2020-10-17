$(function(){
//	페이징처리 변수
	var pageNum = 10;
//	layout 변수
	var bucketCount = 11;
	
	setInterval(function() {
		for(let i=6;i<=10;i++){
			$('.bucket_list_item:nth-child('+i+')').css('top',
					parseInt($('.bucket_list_item:nth-child('+(i-5)+')').css('top'))
					+parseInt($('.bucket_list_item:nth-child('+(i-5)+')').css('height'))
					+20+'px');
		}
	}, 10);

	
//	무한 스크롤
	$(window).scroll(function(){
		var scrollHeight = $(window).scrollTop() + $(window).height();
	    var documentHeight = $(document).height();
	    
	    
	    if(scrollHeight >= documentHeight- 1){
	    	$.ajax({
	    		url:"/list/bucket/list?pageNum="+ pageNum,
	    		dataType:'json',
	    		type:'get',
	    		success:function(data){
//	    			mainPage bucketList 출력 코드
	    			$.each(data,function(i,json) {
	    				var bucket = '';
	    				bucket += '<div class="bucket_list_item">';
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
	    			
	    			for(let i=bucketCount;i<=bucketCount+10;i++){
	    				$('.bucket_list_item:nth-child('+i+')').css('top',
	    						parseInt($('.bucket_list_item:nth-child('+(i-5)+')').css('top'))
	    						+parseInt($('.bucket_list_item:nth-child('+(i-5)+')').css('height'))
	    						+20+'px');
	    			}
	    			
	    			
	    			
	    			bucketCount += 10;
		            pageNum += 10;
	    		}
	    	});
	    }
	});
	
//	bucket detail page on/off
	
	$('.bucket_list_item').on('click',function(){
		$('.modal').addClass('is-active');
		$('.modal-card-title').html($(this).data('title'));
		$('.modal-card-body').html($(this).data('content'));
	});
	
	$('.detail_cancel,.modal-background').on('click',function(){
		$('.modal').removeClass('is-active');
	});
	
});

