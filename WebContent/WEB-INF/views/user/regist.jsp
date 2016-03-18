<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户注册</title>
<link href="res/views/default/css/basic.css" rel="stylesheet" />
<link href="res/views/default/css/index.css" rel="stylesheet" />
</head>

<body>
	<div class="wrap">
    	<!--用户注册开始-->
    		<div class="registered">
	            <div><span class="spandetail">用户名：</span><input type="text"  onfocus="reset()" class="js_username txtlogin"/><span class="js_errorUserName errorusername" ></span></div>
	            <div><span class="spandetail">密码：</span><input  type="password"  class="js_password txtlogin"/><span class="js_errorNewPwd errorusername"></span></div>
	            <div><span class="spandetail">确认密码：</span><input  type="password" class="js_confirmpwd txtlogin"/><span class="js_errorConfirmPwd errorusername"></span></div>
	            <div><span class="spandetail">电子邮箱：</span><input  type="email"  class="js_email txtlogin"/><span class="js_errorEmail errorusername"></span></div>
	            <div><span class="spandetail">电话：</span><input  type="tel"   class="js_phone txtlogin"/><span class="js_errorPhone errorusername"></span></div>
	            <div><span class="spandetail">真实姓名：</span><input  type="text"   class="js_realName txtlogin"/></div>
	            <div id="sex"><span class="spandetail">性别：</span><input type="radio" name="sex" value="1"/> 男 <input type="radio" name="sex" value="0" /> 女</div>
	            <div><span class="spandetail left">备注：</span><textarea class="js_remark registRemark"></textarea></div>
	            <input type="button" value="注册" class="btnorder" onclick="regist()"/>
        </div>
        <div class="loginright">
			 <div class="loginrightlogin">已有账号？|<a href="toLogin" class="colorRed">免费登录</a></div>
		
		</div>
        <!--用户注册开始-->
        
        
    </div>
</body>
</html>
	<script type="text/javascript" src="res/views/default/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="res/views/default/js/user/regist.js"></script>
	<script type="text/javascript" src="res/views/default/js/basic.js"></script>
