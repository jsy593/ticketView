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

	
	//获取部门列表
	$(".js_systemIndex").change(function(){
		var data = {};
		data.systemIndex = $(this).val();
		$.post('getDepartmentBySystemIndex', data, function(data) {
			var html = '<select class="js_deptUuid form-control col-lg-1" name="deptUuid" >';
			if (data.state == '1') {
				var list = data.list;
				for (var i = 0; i < list.length; i++) {
					html += '<option value=' + list[i].uuid + '>'
							+ list[i].name + '</option>';
				}
			}
			html += "</select>";
			$(".js_deptUuid").replaceWith(html);
		});
	});
	
	//显示弹出层
	function addTypePage(){
		$(".js_IndexSystem").val($(".js_systemIndex").val());//给弹出层隐藏的系统id赋值
		$('#spanId').click(); 
		$(".js-updateSystemName").val($(".js_systemIndex").find("option:selected").text());
		var data = {};
		data.systemIndex = $(".js_systemIndex").val();
		$.post('getDepartmentBySystemIndex', data, function(data) {
			if (data.state == "1") {
				$(".js_dept").html("");
				var html = "";
				var list = data.list;
				for (var i = 0; i < list.length; i++) {
					html += '<option value=' + list[i].uuid + '>'
							+ list[i].name + '</option>';
				}
				$(".js_dept").append(html);
			}
		});
	}
	
	//删除分类
	function deleteQuestionType(uuid){
		var data = {};
		data.uuid = uuid;
		layer.confirm("确定要删除吗?",{icon: 3, title:'提示'},function(){
			$.post("deleteQuestionType",data,function(data){
				if(data.state == 1){
					layer.alert('删除成功!', {icon: 6, time:2000});
				}else{
					layer.alert('删除失败!', {icon: 5, time:2000});
				}
				location.reload();
			});
		});
	}
	
