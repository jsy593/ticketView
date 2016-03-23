<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
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
		                         <select class="js_status form-control col-lg-1" name="status">
					        		<option value="-1">状态</option>
					        		<option <c:if test="${status == 0}">selected</c:if> value="0">未审核</option>
		        					<option <c:if test="${status == 1}">selected</c:if> value="1">正常</option>
		        					<option <c:if test="${status == 2}">selected</c:if> value="2">冻结</option>
		        					<option <c:if test="${status == 3}">selected</c:if> value="3">审核未通过</option>
		        					<option <c:if test="${status == 4}">selected</c:if> value="4">管理员已删除</option>
				        		</select>
	                 		 </div>
				        	 <div class="col-lg-3">
				        		 <input type="text" name="content" value="${content }" class="js_search_text form-control col-lg-3"  placeholder="请输入系统名称">
				             </div>
                            <div class="col-lg-3">
                            	 <input type="submit" class="btn btn-danger js_search" value="搜索"></input>
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
	                    <c:forEach var="system" items="${systemList.list}">
	                   		 <tr class="odd gradeX">
		                        <td>${system.systemName }</td>
		                        <c:if test="${system.appId == null || system.appId == ''}"><td>无</td></c:if>
		                          <c:if test="${system.appId !=null && system.appId != ''}">
		                       		 <td>${system.appId }</td>
		                          </c:if>
		                        <c:if test="${system.appKey == null || system.appKey == ''}"><td>无</td></c:if>
		                         <c:if test="${system.appKey !=null && system.appKey != ''}">
		                       		 <td>${system.appKey }</td>
		                          </c:if>
		                         <c:if test="${system.status == 0}"><td>待审核</td></c:if>
		                         <c:if test="${system.status == 1}"><td>正常</td></c:if>
		                         <c:if test="${system.status == 2}"><td>冻结</td></c:if>
		                         <c:if test="${system.status == 3}"><td>未通过</td></c:if>
		                         <c:if test="${system.status == 4}"><td>管理员已删除</td></c:if>
		                        <td>${system.createTime }</td>   
		                        <td>
		                        	<input type="submit" class="btn btn-primary"  onclick="linkHref('${system.uuid}')" value="查看详情"></input>
		                        </td>
	                   	 </tr>
	                   </c:forEach>
	         	</tbody>
      		</table>
      		 <div class="form-group">
                  <label  class="col-lg-2 control-label">总共<span style="color:orange;font-weight: bold">${systemList.totalCount}</span>条数据</label>
              </div>
               
			<div class="pagination right" style="float: right">
			    <a href="#" class="first" data-action="first">&laquo;</a>
			    <a href="#" class="previous" data-action="previous">&lsaquo;</a>
			    <input type="text" readonly="readonly" data-max-page="${systemList.maxPage}" />
			    <a href="#" class="next" data-action="next">&rsaquo;</a>
			    <a href="#" class="last" data-action="last">&raquo;</a>
			</div>
         </div>
     </section>

    </div>
 </div>
   
	<script type="text/javascript" src="res/views/default/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="res/views/default/js/system/system.js"></script>
	<script type="text/javascript" src="res/views/default/js/basic.js"></script>
	<script type="text/javascript" src="res/views/default/js/jqpagination/js/jquery.jqpagination.min.js"></script> 
	<script type="text/javascript">
	//加载产品列表
	$('.pagination').jqPagination({
		current_page : '${pageIndex}',
		max_page : '${systemList.maxPage}',
	    paged: function(page) {
	    	var status = $('.js_status').val();
	    	var content = $('.js_search_text').val();
			window.location.href = "system?status=" + status + "&content=" + content + "&pageIndex="+ page + "&pageSize=5";
		    }
	});
	
</script>