var code = "";
$(".js_sendCode").click(function(){
	var phone = $(".js_phone").val();
	if($.trim(phone) == null ||$.trim(phone) == ""){
		layer.alert("请输入手机号",{icon:5});
	}
	var data = {};
	data.phone = phone;
	$.ajax({
		type : "post",
		url : "sendCode",
		data: data,
		dataType : "json",
		success : function(result){
			if("1" == result.state){
				layer.alert('已发送!', {icon: 6});
				$(".js_sendCode").val("已发送");
				code += result.code;
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



