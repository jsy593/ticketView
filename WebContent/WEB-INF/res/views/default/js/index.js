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
					alert("用户不存在！");
				}
				if (data == "5") {
					alert("密码错误！");
				}
				if (data == "6") {
					alert("权限不足！");
				}
				if (data == "7") {
					alert("账号异常！");
				}
			});
		} else {
			alert("账号或密码不能为空!!");
		}
	});
})