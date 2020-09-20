$(function(){
	
	var $bucket = $('.bucket_list').masonry({
        itemSelector:'.bucket_list_item',
        columnWidth:110,
        isAnimated:true,
    });
	
//	$bucket.imagesLoaded().progress( function() {
//		  $bucket.masonry('layout');
//	});
	
	
	$(window).scroll(function(){
		var scrollHeight = $(window).scrollTop() + $(window).height();
	    var documentHeight = $(document).height();

	    if(scrollHeight >= documentHeight-3){
	        for(var i = 0;i<10;i++){
	            var item = '<div class="bucket_list_item size1"></div>'
	            $('.bucket_list').append(item);
	            $('.bucket_list').masonry('addItems',item);
	            $('.bucket_list').masonry('layout');
	        }
	    }
	});
	
	
});

