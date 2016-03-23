function changeStatus(state) {
	var data = {};
	var uuid = $(".js_uuid").val();
	var status = state;
	data.status = state;
	data.uuid = uuid;
	$.ajax({
		type : "post",
		url : "changeUserStatus",
		data : data,
		success : function(state) {
			if (state == 1) {
				layer.alert("修改成功!",{icon:6});
				window.location.href = "staffDetails?uuid=" + uuid;
			} else {
				layer.alert("修改失败!",{icon:5});
			}
		}
	});
}
