<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
 <!DOCTYPE html> 
 <html lang="en">
   <head> 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">

    <title>工单管理系统</title>

  </head>

  <body>

  <section id="container" class="">
		<!--  header start -->
      <header class="header white-bg">
          <div class="sidebar-toggle-box">
              <div data-original-title="Toggle Navigation" data-placement="right" class="icon-reorder tooltips"></div>
          </div>
		<!-- logo start -->
          <a href="#" class="logo" >工单后台<span>管理系统</span></a>
		<!--logo end -->
          <div class="top-nav ">
              <ul class="nav pull-right top-menu">
				<!-- user login dropdown start -->
                  <li class="dropdown">
                      <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                          <img alt="" style="margin:-4px 8px 0 0;border-radius:100%;border:2px solid #FFF;max-width:40px" src="${ctx}/${userinfo.imageUrl }">
                          <span class="username">${userinfo.realName }</span>
                          <b class="caret"></b>
                      </a>
                      <ul class="dropdown-menu extended logout">
                          <li><a href="toPersonalCenter" class="js_personalCenter" style="width:260px;"><i class=" icon-suitcase"></i>个人中心</a></li>
                          <li><a href="logout" class="exita"><i class="icon-key"></i>退出</a></li>
                      </ul>
                  </li>
			<!--user login dropdown end -->
              </ul>
          </div>
      </header>
<!--       header end -->
<!--       sidebar start -->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
          
			<!-- sidebar menu start -->
              
              <ul class="sidebar-menu">
              
			<!-- 超级管理员开始 -->
            	 <c:if test="${roleinfo.code == 'superAdmin'}">
                  <li <c:if test='${titleNo == 0}'>class="active"</c:if>>
                      <a class="" href="admin">
                          <i class="icon-dashboard"></i>
                          <span>系统管理员</span>
                      </a>
                  </li>
                  
                  
                   <li <c:if test='${titleNo == 1}'>class="active"</c:if>>
                      <a class="" href="system">
                          <i class="icon-book"></i>
                          <span>系统管理</span>
                      </a>
                  </li>
               </c:if>  
			<!--超级管理员结束  -->
             
			<!--系统管理员开始 -->
	            <c:if test="${roleinfo.code == 'systemAdmin'}">	
	            	 <li <c:if test='${titleNo == 2}'>class="active"</c:if>>
                      <a class="" href="toSystemManager?userId=${userinfo.uuid }">
                          <i class="icon-dashboard"></i>
                          <span>系统管理</span>
                      </a>
                  </li>
                  
                  
                   <li <c:if test='${titleNo == 3}'>class="active"</c:if>>
                      <a class="" href="toDepartmentManager">
                          <i class="icon-book"></i>
                          <span>部门维护</span>
                      </a>
                  </li>
	            
	            	<li <c:if test='${titleNo == 4}'>class="active"</c:if>>
                      <a class="" href="toQuestionType">
                          <i class="icon-book"></i>
                          <span>分类管理</span>
                      </a>
                  </li>
	            </c:if>
			<!--系统管理员结束 -->
	            
			<!-- 部门管理员开始 -->
	            <c:if test="${roleinfo.code == 'departmentAdmin'}">
	            	
	            	<li <c:if test='${titleNo == 5}'>class="active"</c:if>>
                      <a class="" href="toQuestionTypeSmall">
                          <i class="icon-dashboard"></i>
                          <span>分类管理</span>
                      </a>
                  </li>
                  
                  <li <c:if test='${titleNo == 6}'>class="active"</c:if>>
                      <a class="" href="ticketList">
                          <i class="icon-book"></i>
                          <span>工单分配</span>
                      </a>
                  </li>
                  
                  
                  
                   <li <c:if test='${titleNo == 7}'>class="active"</c:if>>
                      <a class="" href="toTicketMoveList?audtId=${userinfo.uuid }">
                          <i class="icon-book"></i>
                          <span>流转审核</span>
                      </a>
                  </li>
                  
	           	 <li <c:if test='${titleNo == 8}'>class="active"</c:if>>
                      <a class="" href="toPeopleManage?departmentId=${userinfo.departmentId }">
                          <i class="icon-book"></i>
                          <span>人员管理</span>
                      </a>
                  </li>
	            
	            	<li <c:if test='${titleNo == 9}'>class="active"</c:if>>
                      <a class="" href="knowledgeBase">
                          <i class="icon-book"></i>
                          <span>知识库审核</span>
                      </a>
                  </li>
	            
	            </c:if>
			<!--部门管理员结束 -->
	           
	           
			<!-- 普通职员开始  -->
	            <c:if test="${roleinfo.code == 'staff'}">
					<li <c:if test='${titleNo == 6}'>class="active"</c:if>>
                      <a class="" href="ticketList">
                          <i class="icon-dashboard"></i>
                          <span>当前任务</span>
                      </a>
                  </li>
                  <li <c:if test='${titleNo == 9}'>class="active"</c:if>>
                      <a class="" href="knowledgeBase">
                          <i class="icon-book"></i>
                          <span>知识库管理</span>
                      </a>
                  </li>
                  
                   <li <c:if test='${titleNo == 12}'>class="active"</c:if>>
                      <a class="" href="quickReply">
                          <i class="icon-book"></i>
                          <span>快捷回复管理</span>
                      </a>
                  </li>
		            
	            </c:if>
				<!-- 普通职员结束    -->
                  
				<!-- 公共部分开始 -->
                <li class="sub-menu <c:if test='${titleNo == 13 or titleNo == 14 or titleNo == 15}'>active open</c:if>">
                      <a href="javascript:;" class="">
                          <i class="icon-tasks"></i>
                          <span>个人中心</span>
                          <span class="arrow open"></span>
                      </a>
                      <ul class="sub"  <c:if test='${titleNo == 13 or titleNo == 14 or titleNo == 15}'>open</c:if>>
                      	 <li <c:if test='${titleNo == 13}'>class="active"</c:if>><a class="" href="toPersonalCenter">个人资料</a></li>
                          <li <c:if test='${titleNo == 14}'>class="active"</c:if>><a class="" href="toUpdatePwdMsg">修改密码</a></li>
                          <li <c:if test='${titleNo == 15}'>class="active"</c:if>><a class="" href="toFindPwd">找回密码</a></li>
                          <li <c:if test='${titleNo == 16}'>class="active"</c:if>><a class="" href="#">修改头像</a></li>
                      </ul>
                  </li>
				<!-- 公共部分结束 -->
<!--                    <li class="sub-menu"> -->
<!--                       <a href="javascript:;" class=""> -->
<!--                           <i class="icon-book"></i> -->
<!--                           <span>UI Elements</span> -->
<!--                           <span class="arrow"></span> -->
<!--                       </a> -->
<!--                       <ul class="sub"> -->
<!--                           <li><a class="" href="general.html">General</a></li> -->
<!--                           <li><a class="" href="buttons.html">Buttons</a></li> -->
<!--                           <li><a class="" href="widget.html">Widget</a></li> -->
<!--                           <li><a class="" href="slider.html">Slider</a></li> -->
<!--                           <li><a class="" href="font_awesome.html">Font Awesome</a></li> -->
<!--                       </ul> -->
<!--                   </li> -->
<!--                   <li class="sub-menu"> -->
<!--                       <a href="javascript:;" class=""> -->
<!--                           <i class="icon-cogs"></i> -->
<!--                           <span>Components</span> -->
<!--                           <span class="arrow"></span> -->
<!--                       </a> -->
<!--                       <ul class="sub"> -->
<!--                           <li><a class="" href="grids.html">Grids</a></li> -->
<!--                           <li><a class="" href="calendar.html">Calendar</a></li> -->
<!--                           <li><a class="" href="charts.html">Charts</a></li> -->
<!--                       </ul> -->
<!--                   </li> -->
<!--                   <li class="sub-menu"> -->
<!--                       <a href="javascript:;" class=""> -->
<!--                           <i class="icon-tasks"></i> -->
<!--                           <span>Form Stuff</span> -->
<!--                           <span class="arrow"></span> -->
<!--                       </a> -->
<!--                       <ul class="sub"> -->
<!--                           <li><a class="" href="form_component.html">Form Components</a></li> -->
<!--                           <li><a class="" href="form_wizard.html">Form Wizard</a></li> -->
<!--                           <li><a class="" href="form_validation.html">Form Validation</a></li> -->
<!--                       </ul> -->
<!--                   </li> -->
<!--                   <li class="sub-menu"> -->
<!--                       <a href="javascript:;" class=""> -->
<!--                           <i class="icon-th"></i> -->
<!--                           <span>Data Tables</span> -->
<!--                           <span class="arrow"></span> -->
<!--                       </a> -->
<!--                       <ul class="sub"> -->
<!--                           <li><a class="" href="basic_table.html">Basic Table</a></li> -->
<!--                           <li><a class="" href="dynamic_table.html">Dynamic Table</a></li> -->
<!--                       </ul> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                       <a class="" href="inbox.html"> -->
<!--                           <i class="icon-envelope"></i> -->
<!--                           <span>Mail </span> -->
<!--                           <span class="label label-danger pull-right mail-info">2</span> -->
<!--                       </a> -->
<!--                   </li> -->
<!--                   <li class="sub-menu active"> -->
<!--                       <a href="javascript:;" class=""> -->
<!--                           <i class="icon-glass"></i> -->
<!--                           <span>Extra</span> -->
<!--                           <span class="arrow"></span> -->
<!--                       </a> -->
<!--                       <ul class="sub"> -->
<!--                           <li class="active"><a class="" href="blank.html">Blank Page</a></li> -->
<!--                           <li><a class="" href="profile.html">Profile</a></li> -->
<!--                           <li><a class="" href="invoice.html">Invoice</a></li> -->
<!--                           <li><a class="" href="404.html">404 Error</a></li> -->
<!--                           <li><a class="" href="500.html">500 Error</a></li> -->
<!--                       </ul> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                       <a class="" href="login.html"> -->
<!--                           <i class="icon-user"></i> -->
<!--                           <span>Login Page</span> -->
<!--                       </a> -->
<!--                   </li> -->
              </ul>
		<!-- sidebar menu end -->
          </div>
      </aside>
		<!--sidebar end -->
<!-- js placed at the end of the document so the pages load faster -->
<!-- ------------------------------------------------------------------------------------------------------------------------- -->

</body>