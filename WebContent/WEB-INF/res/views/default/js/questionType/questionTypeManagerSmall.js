$(function() {
	var parentId = $(".parentId").val();
	var departmentId = $(".departmentId").val();
	init();
	function init() {
		// 得到大分类列表
		var data = {};
		data.departmentId = departmentId;
		data.parentId = "0";
		$.post("getQuestionType", data, function(data) {
			var html = "";
			if (data.state == '1') {
				var list = data.list;
				for (var i = 0; i < list.length; i++) {
					html += "<ul>";
					html += "<li><a href='toQuestionTypeSmall?parentId="
							+ list[i].uuid + "'>" + list[i].typeName
							+ "</a></li>";
					html += "</ul>";
				}
			}
			$(".systemList").append(html);
		});

	}

	// 停用&& 启用
	$(".stop").click(function() {
		changeState(0, $(this).attr('data-uuid'));
	});
	$(".start").click(function() {
		changeState(1, $(this).attr('data-uuid'));
	});
	function changeState(status, uuid) {
		var data = {};
		data.status = status;
		data.uuid = uuid;
		var url = "updateQuestionType";
		$.post(url, data, function(data) {
			if (data.state == '1') {
				window.location.reload();
			}
		}, "json");
	}

	// 添加分类
	$('.addQuestionType').click(
			function() {
				if (parentId == '' || parentId == null) {
					layer.alert('请选择大分类！',{icon:5});
					return false;
				}
				// 获取 职员列表
				var data = {};
				data.departmentId = departmentId;
				var url = "getUser";
				$.post(url, data, function(data) {
					if (data.state == "1") {
						var html = "";
						var list = data.list;
						for (var i = 0; i < list.length; i++) {
							html += "<option value=" + list[i].uuid + ">"
									+ list[i].realName + "</option>";
						}
						$(".selectUser").append(html);
					}
				}, "json");
				$.sobox.pop({
					popTarget : 'div.so-addQuestion-popbox',
					wrapTarget : false,
					maskClick : false,
					title : "添加分类",
				});
			})

});
