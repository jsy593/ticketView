function changeStatus(state){
	layer.confirm("确认吗?", {icon: 3, title:'提示'}, function(index){
		var data = {};
		var uuid = $(".js_uuid").val();
		var systemName = $(".js_systemName").val();
		var status = state;
		data.status = state;
		data.uuid=uuid;
		data.systemName = systemName;
		$.ajax({
			type : "post",
			url : "checkSystem",
			data : data,
			success : function(state) {
				if(state == 1){
					layer.alert("审核成功!",{icon:6});
					
					window.location.href="systemDetails?uuid="+uuid;
				}else{
					layer.alert("审核失败!",{icon:5});
				}
			},
		});
	});
}