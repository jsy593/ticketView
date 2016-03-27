// 停用&& 启用
$(".stop").click(function() {
	changeState(0, $(this).attr('data-uuid'));
});
$(".start").click(function() {
	changeState(1, $(this).attr('data-uuid'));
});

function changeStatus(uuid,status){
	uuid = $.trim(uuid);
	var clazz = ".js_status"+ uuid;
	if(status == 0){//原来为没有选中，点击按钮后，让它选中
		status = 1;
	}else{//原来选中，点击按钮后，让它不选中
		status = 0;
	}
	var data = {};
	data.uuid = uuid;
	data.status = status;
	
	$.post("updateDept",data,function(data){
			if(data.state == 1){
				if(status == 1){
					var html ='<input type="checkbox" onChange="changeStatus(\''+uuid+'\','+status+')" class="btn js_status'+uuid +' style="display:none" checked  data-toggle="switch" />';
					$(clazz).replaceWith(html);
					$(clazz).parent().removeClass('switch-off');
					$(clazz).parent().addClass('switch-on');
					$(".js_th"+uuid).attr("color","green").text("正常");
					layer.alert('该部门启用了!', {icon: 6, time:2000});
				}else if(status == 0){
					var html ='<input type="checkbox" onChange="changeStatus(\''+uuid+'\','+status+')" class="btn js_status'+uuid +' style="display:none" data-toggle="switch" />';
					$(clazz).replaceWith(html);
					$(clazz).parent().removeClass('switch-on');
					$(clazz).parent().addClass('switch-off');
					$(".js_th"+uuid).attr("color","red").text("停用");
					layer.alert('该部门关闭了!', {icon: 5});
				}
			}else{
				layer.alert('系统错误!', {icon: 5});
			}
	}); 
	
}
function deleteDept(uuid){
	var data = {};
	data.uuid = uuid;
	data.status = -1;
	layer.confirm("确定要删除吗?",{icon: 3, title:'提示'},function(){
		$.post("updateDept",data,function(data){
			if(data.state == 1){
				layer.alert('删除成功!', {icon: 6, time:2000});
			}else{
				layer.alert('删除失败!', {icon: 5, time:2000});
			}
			location.reload();
		});
	});
}

function updateDeptPage(uuid,name){
	$('#spanId'+uuid).click(); 
	$(".js-updateName").val(name);
	var data = {};
	data.departmentId = uuid;
	var url = "getUser";
	$.post(url, data, function(data) {
		if (data.state == "1") {
			$(".js_deptUser").html("");
			var html = "";
			var list = data.list;
			for (var i = 0; i < list.length; i++) {
				html += "<option value=" + list[i].uuid + ">"
						+ list[i].realName + "</option>";
			}
			$(".js_deptUser").append(html);
			var content = '<input type="hidden" class="js_departmentId" value="'+uuid+'" name="departmentId"/>';
			$(".js_deptUser").before(content);
		}
	});
	
	// 查询当前部门管理员
	var userData = {};
	userData.departmentId = uuid;
	$.post("selectDeptAdmin", userData, function(data) {
		if (data.state == "1") {
			$(".js_deptUser").val([ data.data.uuid ]);
		}
	}, "json");
	
	
	
}

// 变更部门管理员
function updateDeptUser(){
	var data = {};
	data.uuid = $(".js_deptUser").val();
	data.departmentId = $(".js_departmentId").val();
	var url = "updateDeptAdmin";
	$.post(url, data, function(data) {
		if (data.state == "1") {
			layer.alert("修改成功",{icon:6,time:2000});
		}else{
			layer.alert("修改失败",{icon:5,time:2000});
		}
		location.reload();
	}, "json");
}

