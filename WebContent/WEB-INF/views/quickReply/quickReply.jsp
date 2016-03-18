<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>快捷回复管理</title>
<link href="res/views/default/css/basic.css" rel="stylesheet" />
<link href="res/views/default/css/index.css" rel="stylesheet" />
</head>
<body>
<div class="clear"></div>
	<div class="wrap">
		<div class="margincenter">
		    	<div class="searchdiv">
		    	<form action="${base}/quickReply" method="post">
		        	<div class="left">
		        		<div class="marr30 left">
		        			状态：<select class="selestatiu" name="status">
									<option value="-1">状态</option>
									<option <c:if test="${status == 0}">selected</c:if> value="0">隐藏</option>
		        					<option <c:if test="${status == 1}">selected</c:if> value="1">显示</option>
		        					<option <c:if test="${status == 2}">selected</c:if> value="2">删除</option>
		
							</select>
						</div>
		                <div class="left">
		                	<input  type="text"  name="content" value="${content }" class="txtsearch"  placeholder="请输入查询条件"/><input type="submit" value="搜索" class="btnorder" />
		           		</div>
		            </div>  
		            </form> 
		        	<div class="right">
		            	<input type="button" value="新增快捷回复" class="js_addSystem btnorder" onclick="toAddQuickReply()"/>
		            </div>
		        </div>
		                 
		        
		        <div class="clear"></div>
		    	<div class="mart10">
		        	<table width="100%" border="0"  cellspacing="0" cellpadding="0" class="jsyTable">
		                	<tr>
		                    	<th width="35px" ><input  type="checkbox"/></th>
		                        <th>标题</th>
		                        <th>内容</th>
		                        <th>状态</th>
		                        <th>时间</th>
		                        <th>操作</th>
		                    </tr>
		                    <c:forEach var="quickReply" items="${quickReplyList.list}">
		                   		 <tr>
		                    	<td width="35px"><input  type="checkbox"/></td>
		                        <td>${quickReply.title }</td>
		                        <td>${quickReply.content }</td>
		                         <c:if test="${quickReply.status == 0}"><td>隐藏</td></c:if>
		                         <c:if test="${quickReply.status == 1}"><td>显示</td></c:if>
		                         <c:if test="${quickReply.status == 2}"><td>已删除</td></c:if>
		                        <td>${quickReply.createTime }</td>   
		                        <td><a href="javascript:void(0)" onclick="linkHref('${quickReply.uuid}')">详情</a></td>
		                   	 </tr>
		                   </c:forEach>
		          </table> 
		          <div class="right mart10">
		          		<a href="#">上一页</a>&nbsp;&nbsp;<a href="#">下一页</a>
		          </div>
		        </div>
		</div>
    	
    
    </div>
</body>
</html>
	<script type="text/javascript" src="res/views/default/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="res/views/default/js/quickReply/quickReply.js"></script>
	<script type="text/javascript" src="res/views/default/js/basic.js"></script>
