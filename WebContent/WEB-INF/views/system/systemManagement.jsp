<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
       <div class="col-lg-12">
           <section class="panel">
               <header class="panel-heading">
                     <a class="">
                          <span style="color:black">系统管理</span>
                      </a>
               </header>
               
               
      <div class="panel-body" style="margin-left: auto;margin-right: auto;">  
      		  <form class="form-horizontal col-lg-6" role="form" action="${base}/system" method="post">
       				<div class="form-group">
	                    <div class="col-lg-3">
	                    		<a href="#myModal" id="js_a" data-toggle="modal" class="btn btn-danger">新增系统</a>
	                    </div>
	          	 </div>
			   </form>        
               <table class="table table-striped border-top" id="sample_1">
                          <thead>
                          <tr>
                              <th>系统名称</th>
                              <th class="hidden-phone">appId</th>
                              <th class="hidden-phone">key</th>
                              <th class="hidden-phone">状态</th>
                              <th class="hidden-phone">时间</th>
                              <th class="hidden-phone">操作</th>
                          </tr>
                          </thead>
                          <tbody>
	                    <c:forEach var="system" items="${data.list}">
	                   		 <tr class="odd gradeX">
		                        <td>${system.systemName }</td>
		                        <td>${system.appId }</td>
		                        <td>${system.appKey }</td>
		                         <c:if test="${system.status == 0}"><td>待审核</td></c:if>
		                         <c:if test="${system.status == 1}"><td>正常</td></c:if>
		                         <c:if test="${system.status == 2}"><td>冻结</td></c:if>
		                         <c:if test="${system.status == 3}"><td>未通过</td></c:if>
		                        <td>${system.createTime }</td>   
		                        <td>
		                        	<c:if test="${system.status == '0'}">
		                        		<label  class="control-label js_label">不可操作</label>
	                        		</c:if>
		                        	
		                        	<c:if test="${system.status != '0'}">
		                        		<input type="button" class="btn btn-primary delete"  data-uuid="${system.uuid }"  value="删除"></input>
	                        		</c:if>
		                        </td>
	                   	 </tr>
	                   </c:forEach>
	         	</tbody>
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
<!-- 	    <form action="addSystem" method="post" > -->
<!-- 	    <div class="so-popbox" style="display: none"> -->
<!-- 				<div class="h2-sopop"> -->
<!-- 					<span class="s-sopop-title"></span> <span -->
<!-- 						class="s-close s-sopop-close">[关闭]</span> -->
<!-- 				</div> -->
				
				
<%-- 					<input type="hidden" value="${userinfo.uuid }" name = "userId"/> --%>
<!-- 					<div  class="so-popbox-cont"> -->
<!-- 						<p> -->
<!-- 							<span class="spandetail">系统名称：</span> -->
<!-- 							<input type="text" class="txtvalue js-sysName" name="systemName"/> -->
<!-- 						</p> -->
<!-- 					</div>					 -->
<!-- 						<p class="p-so-popBtn js-findcustomer-img"> -->
<!-- 							<input type="submit"value="确定" /> -->
<!-- 						</p> -->
<!-- 					</div> -->
<!-- 				</form> -->
<!-- 		</div> -->
			
			<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                  <div class="modal-dialog">
                      <div class="modal-content">
                          <div class="modal-header">
                              <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                              <h4 class="modal-title">添加系统</h4>
                          </div>
                          <div class="modal-body">

                              <form role="form" action="addSystem" method="post">
                             	 <input type="hidden" value="${userinfo.uuid }" name = "userId"/>
                                  <div class="form-group">
                                      <label for="exampleInputEmail1">系统名称：</label>
                                      <input type="text" name="systemName" class="form-control js-sysName" id="exampleInputEmail3" placeholder="请输入系统名称">
                                  </div>
                                  		<button  type="submit" class="btn btn-primary">提交</button>
                              </form>
                          </div>
                      </div>
                  </div>
              </div>


    <script src="res/views/default/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="res/views/default/js/sobox/jquery.sobox.js"></script>
    <script src="res/views/default/js/system/systemManagement.js"></script>
    <script type="text/javascript" src="res/views/default/js/jqpagination/js/jquery.jqpagination.min.js"></script> 
    <script type="text/javascript">
	//加载产品列表
	$('.pagination').jqPagination({
		current_page : '${pageIndex}',
		max_page : '${data.maxPage}',
	    paged: function(page) {
	    	var status = $(".js_status").val();
	    	var content = $(".js_search_text").val();
			window.location.href = "toSystemManager?userId=${userinfo.uuid}&pageIndex=" + page + "&pageSize=5";
		    }
	});
</script>
</body>