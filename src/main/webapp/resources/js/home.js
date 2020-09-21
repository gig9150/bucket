$(function(){
	
	
	
	$(window).scroll(function(){
		var scrollHeight = $(window).scrollTop() + $(window).height();
	    var documentHeight = $(document).height();

	    if(scrollHeight >= documentHeight-3){
	        for(var i = 0;i<10;i++){
	            var item = '<div class="bucket_list_item">';
	            item += '<img src="/list/resources/image/1.png"><p>123123</p>';
	            item += '</div>'
	            $('.bucket_list').append(item);
	        }
	    }
	});
});

