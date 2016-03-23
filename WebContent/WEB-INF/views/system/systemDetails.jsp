<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
       <div class="col-lg-12">
           <section class="panel">
               <header class="panel-heading">
                     <a class="" href="system">
                          <span>系统管理</span>
                      </a>
                      <span>></span>
                      <a class="">
                          <span style="color:black">详细信息</span>
                      </a>
               </header>
               
               <div class="panel-body" style="margin-left: auto;margin-right: auto;">
                   <form class="form-horizontal col-lg-6" role="form" action="updateUserInfo" enctype="multipart/form-data" method="post" onsubmit="return checkFileType();">
                   				<input type="hidden" value="${system.uuid}" class="js_uuid"/>
	    						<input type="hidden" value="${system.systemName}" class="js_systemName"/>
                                  <div class="form-group">
                                      <label  class="col-lg-2 control-label">系统名称：</label>
                                      <div class="col-lg-6">
                                       <label  class=" control-label">${system.systemName }</label>
                                      </div>
                                  </div>
                                  
                                   <div class="form-group">
                                      <label  class="col-lg-2 control-label">appId：</label>
                                      <div class="col-lg-6">
	                               		 <c:if test="${system.appId == null || system.appId == ''}">
				                      		  <label  class="control-label js_label">无</label>
			                        	 </c:if>
				                         <c:if test="${system.appId !=null && system.appId != ''}">
				                       		 <label  class="control-label js_label">${system.appId }</label>
				                          </c:if>
                                      </div>
                                  </div>
                                  
                                  
                                  <div class="form-group">
                                      <label  class="col-lg-2 control-label">key：</label>
                                      <div class="col-lg-6">
					                        <c:if test="${system.appKey == null || system.appKey == ''}">
					                      		  <label  class="control-label js_label">无</label>
					                        </c:if>
					                         <c:if test="${system.appKey !=null && system.appKey != ''}">
					                       		 <label  class="control-label js_label">${system.appKey }</label>
					                          </c:if>
                                      </div>
                                  </div>
               
               						
               						<div class="form-group">
                                      <label  class="col-lg-2 control-label">状态：</label>
                                      <div class="col-lg-6">
                                        	<label  class="control-label js_label">
												<c:if test="${system.status == 0}">
													待审核
												</c:if>
												
												<c:if test="${system.status == 1}">
													正常
												</c:if>
												
												<c:if test="${system.status == 2}">
													冻结
												</c:if>
												
												<c:if test="${system.status == 3}">
													审核未通过
												</c:if>
											</label>
                                      </div>
                                  </div>
                                  
<!--                                    <div class="form-group"> -->
<!--                                       <label  class="col-lg-2 control-label">备注：</label> -->
<!--                                       <div class="col-lg-6"> -->
<%--                                         	<label  class="control-label js_label">${system.remark }</label> --%>
<!--                                       </div> -->
<!--                                   </div> -->
                                  
                                   <div class="form-group">
                                      <label  class="col-lg-2 control-label">时间：</label>
                                      <div class="col-lg-6">
                                        	<label  class="control-label js_label">${system.createTime }</label>
                                      </div>
                                  </div>
                                  
                                  
                                   <c:if test="${system.status == 0}">
										<div class="form-group">
		                                     <div class="col-lg-6">
								                <input type="button" class="btn btn-success"  onclick="changeStatus(1)" value="通过" />
								                <input type="button" class="btn btn-danger" onclick="changeStatus(3)" value="不通过" />
		                                     </div>
	                                 	</div>							            
							        </c:if>
					      </form>
               </div>
           </section>

       </div>
   </div>
               
	<script type="text/javascript" src="res/views/default/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="res/views/default/js/system/systemDetails.js"></script>
	<script type="text/javascript" src="res/views/default/js/basic.js"></script>