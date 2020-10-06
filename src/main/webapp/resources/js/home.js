$(function(){
	
//	$.ajax({
//		url:
//	});
	
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

	    if(scrollHeight >= documentHeight-3){
//	        for(var i = 0;i<10;i++){
//	            var item = '<div class="bucket_list_item">';
//	            item += '<img src="/list/resources/image/2.png"><p>123123</p>';
//	            item += '</div>'
//	            $('.bucket_list').append(item);
//	            $('.bucket_list').masonry('reloadItems');
//	            $('.bucket_list').masonry('layout');
//	        }
//	    	$.ajax({
//	    		url:"/bucket/list",
//	    		dataType:json,
//	    		success:function(data){
//	    			
//	    		}
//	    	});
	    }
	});
});

