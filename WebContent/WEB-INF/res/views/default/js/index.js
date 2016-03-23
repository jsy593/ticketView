$(function() {
	$(".btnlogin").click(function() {
		var username = $(".txtlogin:first").val();
		var password = $(".txtlogin:last").val();
		if ("" != username && "" != password) {
			var url = "login";
			var data = {};
			data.username = username;
			data.password = password;
			$.post(url, data, function(data) {
				if (data == "1") {
					location.href = "toPersonalCenter"
				}
				if (data == "4") {
					alert("用户不错字");
					layer.alert('用户不存在!',{icon:5});
				}
				if (data == "5") {
					layer.alert("密码错误！",{icon:5});
				}
				if (data == "6") {
					layer.alert("权限不足！",{icon:5});
				}
				if (data == "7") {
					layer.alert("账号异常！",{icon:5});
				}
			});
		} else {
			layer.alert("账号或密码不能为空！",{icon:5});
		}
	});
})