function fileUpload(input) {
        if (input.files && input.files[0]) {
        	
        	//html5 api 사용 (파일읽기)
            var reader = new FileReader();

            reader.onload = function (e) {
            	console.log(e.target.result);
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