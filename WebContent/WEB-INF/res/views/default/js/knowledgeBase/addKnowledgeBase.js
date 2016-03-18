function addKnowledgeBase(){
	var question = $(".js_question").val();
	var answer = $(".js_answer").val();
	var questionTypeId = $(".js_questionTypeId").val();
	var status = 2;
	var data = {};
	if($.trim(question) !="" && $.trim(question) != undefined ){
		data.question = question;
	}
	if(answer !="" && answer != undefined){
		data.answer = answer;
	}
	if(questionTypeId !="" && questionTypeId !=undefined){
		data.questionTypeId = questionTypeId;
	}
	data.status= status;
	$.ajax({
		type : "post",
		url : "addKnowledgeBase",
		data : data,
		success : function(state) {
			if(state == 1){
				alert("添加成功!");
				window.location.reload();
			}else{
				alert("添加失败!");
			}
		}
	});
}