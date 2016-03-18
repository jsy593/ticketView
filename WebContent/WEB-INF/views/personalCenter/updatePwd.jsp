<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<link href="res/views/default/js/jqpagination/css/jqpagination.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改密码</title>
<link href="res/views/default/css/basic.css" rel="stylesheet" />
<link href="res/views/default/css/index.css" rel="stylesheet" />
<body>
<div class="clear"></div>
		<div class="margincenter">
			<div class="mainDetail">
		<p><label>旧密码:&nbsp;</label><input type="password" name="oldPassword" id="js-user-oldPwd" class="txtsearch "/></p><br/>
		<p><label>新密码:&nbsp;</label><input type="password" name="newPassword" id="js-user-newPwd" class="txtsearch "/><span class="errorNewPwd"></span></p><br/>
		<p><label>确认密码:</label><input type="password" name="affirmPassword" id="js-user-confirmPwd" class="txtsearch"/><span class="errorConfirmPwd"></span></p><br/>
		<p><input type="button" value="提交" class=" btnorder js-updatePwd" style="margin-left:200px;"/></p>				
	</div>

</div>
</body>
	<script type="text/javascript" src="res/views/default/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="res/views/default/js/personalCenter/updatePwd.js"></script>
	<script type="text/javascript" src="res/views/default/js/basic.js"></script>
