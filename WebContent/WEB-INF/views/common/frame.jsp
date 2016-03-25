<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" ignore="true" /></title>

<%-- <link rel="stylesheet" href="<c:url value="res/views/default/css/basic.css"/>">  --%>
<%-- <link rel="stylesheet" href="<c:url value="res/views/default/css/index.css"/>">  --%>
	<!--分页样式 -->
	<link href="res/views/default/js/jqpagination/css/jqpagination.css" rel="stylesheet" />
	
 <!-- Bootstrap core CSS -->
    <link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="res/bootstrap/css/bootstrap-reset.css" rel="stylesheet">
    <link href="res/bootstrap/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="res/bootstrap/css/style.css" rel="stylesheet">
<!--     <link href="res/bootstrap/css/all.css" rel="stylesheet"> -->
    <link href="res/bootstrap/css/style-responsive.css" rel="stylesheet" />
</head>
<body>


<tiles:insertAttribute name="header" />

<!--main content start-->
      <section id="main-content">
          <section class="wrapper">
              <!-- page start-->
				<tiles:insertAttribute name="center"/>
              <!-- page end-->
          </section>
      </section>
      <!--main content end-->
  </section>

<tiles:insertAttribute name="footer"/>

 	<script src="res/bootstrap/js/jquery.js"></script>
    <script src="res/bootstrap/js/bootstrap.min.js"></script>
    <script src="res/bootstrap/js/jquery.scrollTo.min.js"></script>
    <script src="res/bootstrap/js/jquery.nicescroll.js" type="text/javascript"></script>
 	<script src="res/bootstrap/js/common-scripts.js"></script>
 	<script src="res/views/default/js/jquery-1.8.3.min.js"></script>
 	<script src="res/layer/layer.js"></script>
	<script src="res/laydate/laydate.js"></script>
	<!--  -->
    <script src="res/bootstrap/js/jquery-ui-1.9.2.custom.min.js"></script>

    <!--custom switch-->
    <script src="res/bootstrap/js/bootstrap-switch.js"></script>
    <!--custom tagsinput-->
    <script src="res/bootstrap/js/jquery.tagsinput.js"></script>
    <!--custom checkbox & radio-->
    <script type="text/javascript" src="res/bootstrap/js/ga.js"></script>
 	<script type="text/javascript" src="res/bootstrap/assets/bootstrap-daterangepicker/date.js"></script>
    <script type="text/javascript" src="res/bootstrap/assets/bootstrap-daterangepicker/daterangepicker.js"></script>
    <script type="text/javascript" src="res/bootstrap/assets/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
    <script type="text/javascript" src="res/bootstrap/assets/ckeditor/ckeditor.js"></script>



  <!--script for this page-->
  <script src="res/bootstrap/js/form-component.js"></script>
	
</body>
</html>