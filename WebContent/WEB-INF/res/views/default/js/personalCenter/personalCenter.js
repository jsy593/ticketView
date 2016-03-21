function showInput(){
	$(".js_label").css('display','none'); //隐藏  
	$(".js_label_sex").css('display','block'); 
	$(".js_input").css('display', 'block'); //显示
	$(".js_button_update").css('display','none'); //隐藏  
	$(".js_button_confirm").css('display', 'block'); //显示
}


$('input[class=js_file]').change(function() {
      var  file = document.getElementById("js_upload_file").files[0];
      var path = window.URL.createObjectURL(file);
      $(".js_imgUrl").attr("src",path);
});


/*
*检查图片格式
*/

 function checkFileType(){
        var format = ["bmp","jpg","gif","png"];
        var filename = $(".js_file").val();
        var ext = filename.substring(filename.lastIndexOf('.') + 1).toLowerCase();
        if(jQuery.inArray(ext, format) != -1){
            return true;
        }else{
            layer.msg('头像格式只能是bmp,jpg,gif,png!', {
                offset: 0,
                shift: 6
            });
            return false;
        }
    }