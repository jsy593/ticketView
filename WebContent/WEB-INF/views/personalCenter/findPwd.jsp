<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<div class="row">
       <div class="col-lg-12">
           <section class="panel">
               <header class="panel-heading">
                     <a class="" href="toPersonalCenter">
                          <span>个人中心</span>
                      </a>
                      <span>></span>
                      <a class="">
                          <span style="color:black">找回密码</span>
                      </a>
               </header>
               
               <div class="panel-body" style="margin-left: auto;margin-right: auto;">
                   <form class="form-horizontal col-lg-6" role="form" style="margin:0px auto;">
                   				
                   				  <div class="form-group">
                                      <label  class="col-lg-2 control-label">手机号：</label>
                                      <div class="col-lg-6">
                                          <input type="password"   name="oldPassword" id="js_phone" class="form-control" placeholder="请输入手机号 ">
                                      </div>
                                  </div>
                                  
                                   <div class="form-group">
                                      <label  class="col-lg-2 control-label">验证码：</label>
                                      <div class="col-lg-6">
                                          <input type="password" name="newPassword" id="js_code" class="form-control"  placeholder=" 请输入验证码">
                                          <span class="js_error"></span>
                                      </div>
                                  </div>
                                  
                                   <div class="form-group">
                                      <div class="col-lg-offset-2 col-lg-10">
                                     	<input type="button" class="btn btn-primary js_sendCode" value="发送验证码"></input>
                                      	 <input type="button" class="btn btn-danger js-updatePwd" value="确定"></input>
                                      </div>
                                  </div>
                   </form>

               </div>
           </section>

       </div>
   </div>
	<script type="text/javascript" src="res/views/default/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="res/views/default/js/personalCenter/findPwd.js"></script>
	<script type="text/javascript" src="res/views/default/js/basic.js"></script>
