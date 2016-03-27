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
		                    		<a href="#myModal"  id="js_a" data-toggle="modal" class="btn btn-primary"><span id="spanId">新增部门</span></a>
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
                              <th class="hidden-phone"></th>
                          </tr>
                          </thead>
                          <tbody>
                    	  <c:forEach items="${data.list }" var="list">
		                     <tr>
		                        <td>${list.name }</td>
		                        <td>${list.adminUser }</td>
		                        <td>
		                        	<c:if test="${list.status == '1' }"><font color="green" class="js_th${list.uuid}">正常</font></c:if>
		                        	<c:if test="${list.status == '0' }"><font color="red" class="js_th${list.uuid}">停用</font></c:if>
		                        </td>
		                        <td>${list.createTime }</td>
		                        <td>
                                    <input type="checkbox" onChange='changeStatus("${list.uuid }",${list.status })' 
                                    class="btn js_status${list.uuid }" style="display:none;text-align:center" <c:if test="${list.status == 1}">checked</c:if> data-toggle="switch" />
		                        </td>
                                 <td>
	                        		<button class="btn btn-primary" class="update" onclick="updateDeptPage('${list.uuid }','${list.name }')"><i class="icon-pencil "></i></button>
	                        		<a href="#myModal1" style="display:none" data-toggle="modal" class="btn btn-primary"><span id="spanId${list.uuid }">修改</span></a>
	                        		<button class="btn btn-danger" class="delete" onclick="deleteDept('${list.uuid }')"><i class="icon-trash "></i></button>
	                        		
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
                                      <input type="text" name="deptName" class="form-control js-updateDeptName" id="exampleInputEmail3" placeholder="请输入部门名称">
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
                                      <input type="password" name="password" class="form-control js-password" id="exampleInputEmail3" placeholder="请输入密码">
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
	    		
	    		
	    	<!-- 弹出层2开始 -->
	    	<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal1" class="modal fade">
                  <div class="modal-dialog">
                      <div class="modal-content">
                          <div class="modal-header">
                              <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                              <h4 class="modal-title">修改部门信息</h4>
                          </div>
                          <div class="modal-body">

                              <form role="form" action="updateDept" method="post">
                                   <div class="form-group">
                                      <label for="exampleInputEmail1">部门名称：</label>
                                      <input type="text" name="deptName" disabled class="form-control js-updateName" id="exampleInputEmail3" placeholder="请输入部门名称">
                                  </div>
                                  	
                                  	<div class="form-group">
                                      <label for="exampleInputEmail1" style="float:left">管理员：</label>
                                       <div class="col-lg-3">
			        	                 <select class="js_deptUser form-control col-lg-1" name="systemIndex" >
					        			</select>
	                 		 		</div>
                                  </div>
                                  <br/><br/><br/>
                                   <div class="form-group " style="float:right">
                                  	 <label for="exampleInputEmail1"></label>
                                 	<input  type="button" class="btn btn-primary js_updateDeptUser" value="提交" onclick="updateDeptUser()"></input>
                                 </div>
                                 <br/><br/>
                              </form>
                          </div>
                      </div>
                  </div>
              </div>
            <!-- 弹出层2结束 -->
	    		
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