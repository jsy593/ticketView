<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body>
	<div class="clear"></div>
	<div class="wrap">
		<div class="margincenter">		
			<div class="mainDetail">
				<div>
					<span class="spandetail">分类名称：</span>${data.typeName }</div>
					<input type="hidden" class="departmentId" value="${data.uuid }"/>
				<div></div>
				
				<div>
					<div>
						<span class="spandetail">所属部门：</span> ${data.deptName }
					</div>
				</div>
	
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<script src="res/views/default/js/jquery-1.8.3.min.js"></script>
	<script src="res/views/default/js/department/departmentDetail.js"></script>
</body>