function changeStatus(state){
	if(confirm("确认吗?")){
	var data = {};
	var uuid = $(".js_uuid").val();
	var status = state;
	data.status = state;
	data.uuid=uuid;
	$.ajax({
		type : "post",
		url : "changeUserStatus",
		data : data,
		success : function(state) {
			if(state == 1){
				alert("审核成功!");
				window.location.href="adminDetails?uuid="+uuid;
			}else{
				alert("审核失败!");
			}
		}
	});
	}
}