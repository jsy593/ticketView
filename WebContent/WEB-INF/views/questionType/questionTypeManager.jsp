<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
       <div class="col-lg-12">
           <section class="panel">
               <header class="panel-heading">
                     <a class="">
                          <span style="color:black">分类管理</span>
                      </a>
               </header>
               
               <div class="panel-body" style="margin-left: auto;margin-right: auto;">
               <c:if test="${data.systemList != null}">
               		<form class="form-horizontal col-lg-6" role="form" action="${base}/toQuestionType" method="post">
               			<div class="form-group">
                            <div class="col-lg-3">
		                         <select class="js_systemIndex form-control col-lg-1" name="systemIndex" >
					        		<c:forEach var="system" items="${data.systemList }">
						        		<option value="${system.systemIndex}" <c:if test="${system.systemIndex == data.systemIndex}">selected</c:if>>${system.systemName }</option>
					        		</c:forEach>
				        		</select>
				        	</div>
				        	  <div class="col-lg-3">	
				        		 <select class="js_deptUuid form-control col-lg-3" name="departmentId" value="${data.departmentId}">
					        		<c:forEach var="department" items="${data.departmentList }">
						        		<option value="${department.uuid}" <c:if test="${department.uuid == data.departmentId}">selected</c:if>>${department.name }</option>
					        		</c:forEach>
				        		</select>
	                 		 </div>
				        	 <div class="col-lg-3">
				        		 <input type="text" name="content" value="${content }" class="js_search_text form-control col-lg-3"  placeholder="请输入分类名称">
				             </div>
                            <div class="col-lg-3">
                            	 <input type="submit" class="btn btn-danger" value="搜索"></input>
                            </div>
			           </div>
			         </form>
			         <form class="form-horizontal" style="float: right">
	       				<div class="form-group  col-lg-10">
		                    <div class="col-lg-8">
		                    		<input type="button" class="btn btn-primary" value="添加分类" onclick="addTypePage()"></input>
	                        		<a href="#myModal" style="display:none" data-toggle="modal" class="btn btn-primary"><span id="spanId">添加分类</span></a>
		                    </div>
		          	 	</div>
		          	 </form>
			   </c:if>
			   <input type="hidden" class="systemId" value="${systemId }"/>
				<input type="hidden" class="systemAdminId" value="${userinfo.uuid }"/>		
			   <table class="table table-striped border-top" id="sample_1">
                          <thead>
                          <tr>
                              <th>分类名称</th>
                              <th class="hidden-phone">管理部门</th>
                              <th class="hidden-phone">状态</th>
                              <th class="hidden-phone">时间</th>
                              <th class="hidden-phone">操作</th>
                          </tr>
                          </thead>
                          <tbody>
                            <c:forEach items="${data.questionTypeList }" var="list">
		                     <tr id="${list.uuid }">
		                        <td>${list.typeName }</td>
		                        <td>${list.deptName }</td>
		                        <td>
		                        	<c:if test="${list.status == '1' }"><font color="green">启用</font></c:if>
		                        	<c:if test="${list.status == '0' }"><font color="red">停用</font></c:if>
		                        </td>
		                        <td>${list.createTime }</td>
		                        <td>
		                        	<c:if test="${list.status == '1' }"><font color="red"><a href="#" class="stop" data-uuid="${list.uuid }">关闭分类</a></font></c:if>
		                        	<c:if test="${list.status == '0' }"><font color="green"><a href="#" class="start" data-uuid="${list.uuid }">开启分类</a></font></c:if>
		                        	<button class="btn btn-danger" class="delete" onclick="deleteQuestionType('${list.uuid }')"><i class="icon-trash "></i></button>
		                        </td>
		                    </tr>
		              </c:forEach>            
		          </table>
		          
		          <div class="form-group">
                 	 <label  class="col-lg-2 control-label">总共<span style="color:orange;font-weight: bold">${data.totalCount}</span>条数据</label>
           		  </div>
           		  
		           <div class="pagination right" style="float: right">
					    <a href="#" class="first" data-action="first">&laquo;</a>
					    <a href="#" class="previous" data-action="previous">&lsaquo;</a>
					    <input type="text" readonly="readonly" data-max-page="${data.maxPage}" />
					    <a href="#" class="next" data-action="next">&rsaquo;</a>
					    <a href="#" class="last" data-action="last">&raquo;</a>
					</div>
					
			 </div>
	     </section>
	
	    </div>
	 </div>
					
					
					
			<!-- 弹出层开始 -->
	    	<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                  <div class="modal-dialog">
                      <div class="modal-content">
                          <div class="modal-header">
                              <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                              <h4 class="modal-title">添加分类</h4>
                          </div>
                          <div class="modal-body">

                              <form role="form" action="addQuestionType" method="post">
                             	<input type="hidden" class = "systemIndex js_IndexSystem"  name="systemIndex"/>
								<input type="hidden"  value="0" name="parentId"/>
								  <div class="form-group">
                                      <label for="exampleInputEmail1">所属系统：</label>
                                      <input type="text" disabled  class="form-control js-updateSystemName" required id="exampleInputEmail3">
                                  </div>
									
                                  <div class="form-group">
                                      <label for="exampleInputEmail1">分类名称：</label>
                                      <input type="text" name="typeName" class="form-control js-typeName" required id="exampleInputEmail3" placeholder="请输入分类名称">
                                  </div>
                                  
                                 <div class="form-group">
                                      <label for="exampleInputEmail1" style="float:left">所属部门：</label>
                                       <div class="col-lg-3">
			        	                 <select class="js_dept form-control col-lg-1 " name="departmentId">
					        			</select>
	                 		 		</div>
                                  </div>
                                  <br/><br/><br/>
                                   <div class="form-group " style="float:right">
                                  	 <label for="exampleInputEmail1"></label>
                                 	<button  type="submit" class="btn btn-primary">确定</button>
                                 </div>
                                 <br/><br/>
                              </form>
                          </div>
                      </div>
                  </div>
              </div>
	    			
	    	<!-- 弹出层结束 -->
	    		
    <script type="text/javascript" src="res/views/default/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="res/views/default/js/date.js"></script>
    <script type="text/javascript" src="res/views/default/js/sobox/jquery.sobox.js"></script>
    <script type="text/javascript" src="res/views/default/js/questionType/questionTypeManager.js"></script>
     <script type="text/javascript" src="res/views/default/js/jqpagination/js/jquery.jqpagination.min.js"></script> 
    <script type="text/javascript">
	//加载产品列表
	$('.pagination').jqPagination({
		current_page : '${pageIndex}',
		max_page : '${data.maxPage}',
	    paged: function(page) {
	    	var status = $(".js_status").val();
	    	var departmentId = $(".js_deptUuid").val();
	    	var systemIndex = $(".js_systemIndex").val();
	    	var content = $(".js_search_text").val();
			window.location.href = "toQuestionType?systemIndex="+systemIndex+"&pageIndex=" + page + "&pageSize=5&content="+content+"&departmentId="+departmentId;
		    }
	});
</script>
</body>