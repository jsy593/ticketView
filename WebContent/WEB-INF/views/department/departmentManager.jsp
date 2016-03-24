<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
       <div class="col-lg-12">
           <section class="panel">
               <header class="panel-heading">
                     <a class="">
                          <span style="color:black">部门管理</span>
                      </a>
               </header>
               
               <div class="panel-body" style="margin-left: auto;margin-right: auto;">
               <c:if test="${data.systemList != null}">
               		<form class="form-horizontal col-lg-6" role="form" action="${base}/toDepartmentManager" method="post">
               			<div class="form-group">
                            <div class="col-lg-3">
		                         <select class="js_systemIndex form-control col-lg-1" name="systemIndex" >
					        		<c:forEach var="system" items="${data.systemList }">
						        		<option value="${system.systemIndex}" <c:if test="${system.systemIndex == systemIndex}">selected</c:if>>${system.systemName }</option>
					        		
					        		</c:forEach>
				        		</select>
	                 		 </div>
				        	 <div class="col-lg-3">
				        		 <input type="text" name="content" value="${content }" class="js_search_text form-control col-lg-3"  placeholder="请输入部门名称">
				             </div>
                            <div class="col-lg-3">
                            	 <input type="submit" class="btn btn-danger js_search" value="搜索"></input>
                            </div>
			           </div>
			         </form>
			         <form class="form-horizontal" style="float: right">
	       				<div class="form-group  col-lg-10">
		                    <div class="col-lg-8">
		                    		<a href="#myModal"  id="js_a" data-toggle="modal" class="btn btn-danger">新增部门</a>
		                    </div>
		          	 	</div>
		          	 </form>
			   </c:if>
			          <table class="table table-striped border-top" id="sample_1">
                          <thead>
                          <tr>
                              <th>部门名称</th>
                              <th class="hidden-phone">部门管理员</th>
                              <th class="hidden-phone">状态</th>
                              <th class="hidden-phone">时间</th>
                              <th class="hidden-phone">操作</th>
                          </tr>
                          </thead>
                          <tbody>
                    	  <c:forEach items="${data.list }" var="list">
		                     <tr>
		                        <td>${list.name }</td>
		                        <td>${list.adminUser }</td>
		                        <td>${list.createTime }</td>
		                        <td>
		                        	<c:if test="${list.status == '1' }"><font color="green">启用</font></c:if>
		                        	<c:if test="${list.status == '0' }"><font color="red">停用</font></c:if>
		                        </td>
		                        <td>
		                        	<a  class="btn btn-primary"  href="getDepartmentDetail?uuid=${list.uuid }">查看详情</a>
		                        	<a  href="#" class="btn btn-primary addQuestionType"  data-uuid="${list.uuid }">添加分类</a>
		                        	<c:if test="${list.status == '1' }"><font color="red"><a href="#" class="stop" data-uuid="${list.uuid }">关闭部门</a></font></c:if>
		                        	<c:if test="${list.status == '0' }"><font color="green"><a href="#" class="start" data-uuid="${list.uuid }">开启部门</a></font></c:if>
		                        	
		                        </td>
		                   </tr>
	                   </c:forEach>
	         	</tbody>
      		</table>
      		 <div class="form-group">
                  <label  class="col-lg-2 control-label">总共<span style="color:orange;font-weight: bold">${data.totalCount}</span>条数据</label>
              </div>   
              
              
		           <div class="pagination " style="float: right">
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
                              <h4 class="modal-title">添加部门</h4>
                          </div>
                          <div class="modal-body">

                              <form role="form" action="addDept" method="post">
                             	 <input type="hidden" value="${userinfo.uuid }" name = "userId"/>
                                  <input type="hidden" class="systemIndex" value="${systemIndex }" name="systemIndex"/>
                                  <div class="form-group">
                                      <label for="exampleInputEmail1">部门名称：</label>
                                      <input type="text" name="deptName" class="form-control js-deptName" id="exampleInputEmail3" placeholder="请输入部门名称">
                                  </div>
                                  
                                   <div class="form-group">
                                      <label for="exampleInputEmail1">管理员姓名：</label>
                                      <input type="text" name="adminName" class="form-control js-adminName" id="exampleInputEmail3" placeholder="请输入管理员姓名">
                                  </div>
                                  
                                  <div class="form-group">
                                      <label for="exampleInputEmail1">登录名：</label>
                                      <input type="text" name="code" class="form-control js-code" id="exampleInputEmail3" placeholder="请输入登录名">
                                  </div>
                                  
                                  <div class="form-group">
                                      <label for="exampleInputEmail1">密码：</label>
                                      <input type="password" name="js-password" class="form-control js-password" id="exampleInputEmail3" placeholder="请输入密码">
                                  </div>
                                  <div class="form-group" style="text-align:center">
                                 	<button  type="submit" class="btn btn-primary addThis" >提交</button>
                                 </div>
                              </form>
                          </div>
                      </div>
                  </div>
              </div>
	    			
	    		<!-- 弹出层结束 -->
	    		
	    		
	    		
    <script type="text/javascript" src="res/views/default/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="res/views/default/js/date.js"></script>
    <script type="text/javascript" src="res/views/default/js/department/departmentManager.js"></script>
    <script type="text/javascript" src="res/views/default/js/jqpagination/js/jquery.jqpagination.min.js"></script> 
    <script type="text/javascript">
	//加载产品列表
	$('.pagination').jqPagination({
		current_page : '${pageIndex}',
		max_page : '${data.maxPage}',
	    paged: function(page) {
	    	var status = $(".js_status").val();
	    	var content = $(".js_search_text").val();
			window.location.href = "toDepartmentManager?systemIndex=${systemIndex}&pageIndex=" + page + "&pageSize=5";
		    }
	});
</script>
</body>