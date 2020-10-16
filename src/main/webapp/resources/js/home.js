$(function(){
//	페이징처리 변수
	var pageNum = 10;
	
//	for(let i=6;i<=10;i++){
//		$('.bucket_list_item:nth-child('+i+')').css('top',
//				parseInt($('.bucket_list_item:nth-child('+(i-5)+')').css('top'))
//				+parseInt($('.bucket_list_item:nth-child('+(i-5)+')').css('height'))
//				+'px');
//	}
	
	$('.bucket_list_item:nth-child(6)').css('top',
			parseInt($('.bucket_list_item:nth-child(1)').css('top'))
			+parseInt($('.bucket_list_item:nth-child(1)').css('height'))
			+'px');
	$('.bucket_list_item:nth-child(7)').css('top',
			parseInt($('.bucket_list_item:nth-child(2)').css('top'))
			+parseInt($('.bucket_list_item:nth-child(2)').css('height'))
			+'px');
	console.log(parseInt($('.bucket_list_item:nth-child(2)').css('top')));
	console.log($('.bucket_list_item:nth-child(2)').css('height'));
	console.log(parseInt($('.bucket_list_item:nth-child(3)').css('top')));
	console.log(parseInt($('.bucket_list_item:nth-child(3)').css('height')));
	console.log(parseInt($('.bucket_list_item:nth-child(4)').css('top')));
	console.log(parseInt($('.bucket_list_item:nth-child(4)').css('height')));
	console.log(parseInt($('.bucket_list_item:nth-child(5)').css('top')));
	console.log(parseInt($('.bucket_list_item:nth-child(5)').css('height')));
	$('.bucket_list_item:nth-child(8)').css('top',
			parseInt($('.bucket_list_item:nth-child(3)').css('top'))
			+parseInt($('.bucket_list_item:nth-child(3)').css('height'))
			+'px');
	$('.bucket_list_item:nth-child(9)').css('top',
			parseInt($('.bucket_list_item:nth-child(4)').css('top'))
			+parseInt($('.bucket_list_item:nth-child(4)').css('height'))
			+'px');
	$('.bucket_list_item:nth-child(10)').css('top',
			parseInt($('.bucket_list_item:nth-child(5)').css('top'))
			+parseInt($('.bucket_list_item:nth-child(5)').css('height'))
			+'px');

	
//	무한 스크롤
	$(window).scroll(function(){
		var scrollHeight = $(window).scrollTop() + $(window).height();
	    var documentHeight = $(document).height();
	    
	    
	    if(scrollHeight >= documentHeight-1){
	    	$.ajax({
	    		url:"/list/bucket/list?pageNum="+ pageNum,
	    		dataType:'json',
	    		type:'get',
	    		success:function(data){
//	    			mainPage bucketList 출력 코드
	    			$.each(data,function(i,json) {
	    				var bucket = '';
	    				bucket += '<div class="bucket_list_item size1">';
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

