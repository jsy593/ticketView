$(function() {
	// 冻结 、 启用
	$(".delete").click(function() {
		var data = {};
		data.uuid = $(this).attr("data-uuid");
		data.status = 4;
		alert("data:"+JSON.stringify(data));
		changeStatus(data);
	})
//	$(".start").click(function() {
//		var data = {};
//		data.uuid = $(this).attr("data-uuid");
//		data.status = 1;
//		changeStatus(data);
//	})

	function changeStatus(data) {
		var url = "updateSystemStatus";
		$.post(url, data, function(data) {
			if (data.state == "1") {
				layer.alert("删除成功",{icon:6,time:2000});
			}else{
				layer.alert("删除失败",{icon:5,time:2000})
			}
			window.location.reload();
		})
	}
	$(".addSystem").click(function(){
		$.sobox.pop({
			popTarget:'div.so-popbox',
			wrapTarget:false,
			maskClick : false,
			title:"添加系统",
		});
	});
})
