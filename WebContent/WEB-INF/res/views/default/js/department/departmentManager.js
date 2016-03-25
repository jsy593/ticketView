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
	$.post("updateDept",data,function(data){
		if(data.state == 1){
			layer.alert('删除成功!', {icon: 6, time:2000});
		}else{
			layer.alert('删除失败!', {icon: 5, time:2000});
		}
		href.reload();
	});
}
