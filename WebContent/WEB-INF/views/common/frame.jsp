<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" ignore="true" /></title>

<%-- <link rel="stylesheet" href="<c:url value="res/views/default/css/basic.css"/>">  --%>
<%-- <link rel="stylesheet" href="<c:url value="res/views/default/css/index.css"/>">  --%>

 <!-- Bootstrap core CSS -->
    <link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="res/bootstrap/css/bootstrap-reset.css" rel="stylesheet">
    <link href="res/bootstrap/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="res/bootstrap/css/style.css" rel="stylesheet">
    <link href="res/bootstrap/css/style-responsive.css" rel="stylesheet" />
    <script src="res/layer/layer.js"></script>
	<script src="res/laydate/laydate.js"></script>
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
</body>
</html>