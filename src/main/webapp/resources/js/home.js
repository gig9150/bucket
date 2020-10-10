$(function(){
//	페이징처리 변수
	var pageNum = 10;
	
	var $bucket = $('.bucket_list').masonry({
        itemSelector:'.bucket_list_item',
        columnWidth:110,
        isAnimated:true,
    });
	
	
	$bucket.imagesLoaded().progress( function() {
		$bucket.masonry('layout');
	});
	
	
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
	    			
		            $('.bucket_list').masonry('reloadItems');
	    			$('.bucket_list').masonry('layout');
	    			
		            pageNum += 10;
	    		}
	    	});
	    }
	});
});

