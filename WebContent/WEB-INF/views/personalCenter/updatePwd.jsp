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
                          <span style="color:black">修改密码</span>
                      </a>
               </header>
               
               <div class="panel-body" style="margin-left: auto;margin-right: auto;">
                   <form class="form-horizontal col-lg-6" role="form">
                   				
                   				  <div class="form-group">
                                      <label  class="col-lg-2 control-label">旧密码：</label>
                                      <div class="col-lg-6">
                                          <input type="password"   name="oldPassword" id="js-user-oldPwd" class="form-control" placeholder="请输入旧密码 ">
                                      </div>
                                  </div>
                                  
                                   <div class="form-group">
                                      <label  class="col-lg-2 control-label">新密码：</label>
                                      <div class="col-lg-6">
                                          <input type="password" name="newPassword" id="js-user-newPwd" class="form-control"  placeholder=" 请输入新密码">
                                          <span class="errorNewPwd"></span>
                                      </div>
                                  </div>
                                  
                                  <div class="form-group">
                                      <label  class="col-lg-2 control-label">确认密码：</label>
                                      <div class="col-lg-6">
                                          <input type="password" name="affirmPassword" id="js-user-confirmPwd" class="form-control"  placeholder="请输入确认密码">
                                          <span class="errorConfirmPwd"></span>
                                      </div>
                                  </div>
                                  
                                  
                                   <div class="form-group">
                                      <div class="col-lg-offset-2 col-lg-10">
                                      	 <input type="button" class="btn btn-danger js-updatePwd" value="确定"></input>
                                      </div>
                                  </div>
                   </form>

               </div>
           </section>

       </div>
   </div>
	<script type="text/javascript" src="res/views/default/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="res/views/default/js/personalCenter/updatePwd.js"></script>
	<script type="text/javascript" src="res/views/default/js/basic.js"></script>
