<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<div class="row">
       <div class="col-lg-12">
           <section class="panel">
               <header class="panel-heading">
                     <a class="" href="admin">
                          <span>系统管理员管理</span>
                      </a>
                      <span>></span>
                      <a class="">
                          <span style="color:black">详细信息</span>
                      </a>
               </header>
               
                 <div class="panel-body" style="margin-left: auto;margin-right: auto;">
                   <form class="form-horizontal col-lg-6" role="form" action="updateUserInfo" enctype="multipart/form-data" method="post" onsubmit="return checkFileType();">
                   			<input type="hidden" class="js_uuid" value="${user.uuid}">
                                  <div class="form-group">
                                      <label  class="col-lg-2 control-label">姓名：</label>
                                      <div class="col-lg-6">
                                       <label  class=" control-label">${user.realName}</label>
                                      </div>
                                  </div>
                                  
                                   <div class="form-group">
                                      <label  class="col-lg-2 control-label">账号：</label>
                                      <div class="col-lg-6">
                                        	<label  class="control-label js_label">${user.username}</label>
                                      </div>
                                  </div>
                                  
                                  <div class="form-group">
                                      <label  class="col-lg-2 control-label">邮箱：</label>
                                      <div class="col-lg-6">
                                        	<label  class="control-label js_label">${user.email}</label>
                                      </div>
                                  </div>
                                  
                                  <div class="form-group">
                                      <label  class="col-lg-2 control-label">电话：</label>
                                      <div class="col-lg-6">
                                        	<label  class="control-label js_label">${user.phone}</label>
                                      </div>
                                  </div>
                                  
                                  <div class="form-group">
                                      <label  class="col-lg-2 control-label">性别：</label>
                                      <div class="col-lg-6">
                                        	<label  class="control-label js_label">${user.sex}</label>
                                      </div>
                                  </div>
                                  
               
               					<div class="form-group">
                                      <label  class="col-lg-2 control-label">状态：</label>
                                      <div class="col-lg-6">
                                        	<label  class="control-label js_label">
												<c:if test="${user.status == 0}">
													待审核
												</c:if>
												
												<c:if test="${user.status == 1}">
													正常
												</c:if>
												
												<c:if test="${user.status == 2}">
													审核未通过
												</c:if>
												
												<c:if test="${user.status == 3}">
													删除
												</c:if>
												
												<c:if test="${user.status == 4}">
													冻结
												</c:if>
											</label>
                                      </div>
                                  </div>
                                  
                                  <div class="form-group">
                                      <label  class="col-lg-2 control-label">时间：</label>
                                      <div class="col-lg-6">
                                        	<label  class="control-label js_label">${user.createTime}</label>
                                      </div>
                                  </div>
	           					 <div class="form-group">
		                            <div class="col-lg-6">
							            <c:if test="${user.status == 0}"><!-- 未审核 -->
							                <input type="button" class="js_pass btn btn-success" onclick="changeStatus(1)" value="通过" />
							                <input type="button" class="js-nopass btn btn-danger "onclick="changeStatus(2)" value="不通过" />
							             </c:if>
							            <c:if test="${user.status == 1}"><!-- 正常 -->
							                <input type="button" class="js_forbidden btn btn-warning" onclick="changeStatus(4)" value="冻结" />
							                <input type="button" class="js_forbidden btn btn-danger" onclick="changeStatus(3)" value="删除" />
							              </c:if>
							            <c:if test="${user.status == 2}"><!-- 审核未通过 -->
							                <input type="button" class="js_pass btn btn-success" onclick="changeStatus(1)" value="通过" />
							                <input type="button" class="js_freeze btn btn-danger" onclick="changeStatus(3)"value="删除" />
							              </c:if>
							            <c:if test="${user.status == 3}"><!-- 已删除 -->
							                <input type="button" class="js_pass btn btn-success" onclick="changeStatus(1)" value="启用" />
							              </c:if>
							            <c:if test="${user.status == 4}"><!-- 冻结 -->
							                <input type="button" class="js_pass btn btn-success" onclick="changeStatus(1)" value="启用" />
							                <input type="button" class="js_forbidden btn btn-danger" onclick="changeStatus(3)" value="删除" />
							              </c:if>
							            </div>
							        </div>
	        <!--理由弹框页面开始-->
<!-- 	        	<div class="reasondiv"> -->
<!-- 	            	<div> -->
<!-- 	                	 <span class="spandetail left">理由：</span><textarea class="reason"></textarea> -->
<!-- 	                </div> -->
<!-- 	                <div class="mar100"> -->
<!-- 	                	<input type="button" class="btnorder" value="确定" /> -->
<!-- 	                	<input type="button" class="btnorder js-cancel" value="取消" /> -->
<!-- 	                </div> -->
	              
	                
<!-- 	            </div> -->
	        
	         <!--理由弹框页面结束-->
		</div>
    </div>

</body>
</html>
<script type="text/javascript" src="res/views/default/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="res/views/default/js/user/adminDetails.js"></script>
	<script type="text/javascript" src="res/views/default/js/basic.js"></script>