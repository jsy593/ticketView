var code = "";
$(".js_sendCode").click(function(){
	var phone = $(".js_phone").val();
	var data = {};
	data.phone = phone;
	$.ajax({
		type : "post",
		url : "sendCode",
		data: data,
		dataType : "json",
		success : function(result){
			if("1" == result.state){
				alert("已发送!");
				$(".js_sendCode").val("已发送");
				code += result.code;
				alert(code);
			}
		}
		
	});
});
$(".js_updatePwd").click(function(){
	var data = {};
	if(code != ""){
		data.code = code;
	}
	$.ajax({
		type : "post",
		url : "sendCode",
		data: data,
		dataType : "json",
		success : function(result){
			if("1" == result.state){
				window.location.href="toLogin";
			}else{
				$(".js_error").val("验证码错误!");
			}
		}
		
	});
});



