<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>找回密码</title>
<link href="res/views/default/css/basic.css" rel="stylesheet" />
<link href="res/views/default/css/index.css" rel="stylesheet" />
</head>
<html>
<body>
	<div class="clear"></div>
	<div class="wrap">
			<div class="margincenter">
			<input type="hidden" value="123"/><br/>
	        	手机号:<input type="text"  class="js_phone txtvalue"/><br/><br/>
	        	验证码：<input type="text" class="js_code txtvalue"/><span class="js_error"></span><br/><br/>
	        	<input type="button" value="发送验证码" class="js_sendCode btnorder"/>&nbsp;&nbsp;
	        	<input type="button" value="确定" class="js_updatePwd btnorder"/>
	        </div>
	                 
		</div>
    	
    
</body>
</html>
	<script type="text/javascript" src="res/views/default/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="res/views/default/js/personalCenter/findPwd.js"></script>
	<script type="text/javascript" src="res/views/default/js/basic.js"></script>
