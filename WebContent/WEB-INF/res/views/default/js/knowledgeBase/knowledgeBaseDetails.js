function changeStatus(state, uuid, systemIndex) {
	$.post('updateKnowledgeBase', {
		status : state,
		uuid : uuid,
		systemIndex : systemIndex
	}, function(data) {
		if (data == '1') {
			window.location.href = "knowledgeBase?status=2";
		} else {
			layer.alert('修改失败!', {icon: 5});
		}
	})
}