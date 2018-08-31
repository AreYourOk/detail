<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>订单管理</title>
    <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

	<link rel="stylesheet" href="css/zerogrid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsiveslides.css">
</head>

<body>
	<c:import url="head.jsp"></c:import>
    <div id="wrapper">
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                     </li><li>
                        <a href="#"><i class="fa fa-sitemap"></i> 汽车管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                               <a href="<%=request.getContextPath()%>/managemodal">汽车品牌管理</a>
                            </li>
                            <li>
                                <a href="<%=request.getContextPath()%>/managecar">汽车信息管理</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath()%>/manageuser"><i class="fa fa-fw fa-file"></i>用户管理</a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath()%>/manageorder"  class="active-menu"><i class="fa fa-fw fa-file"></i>订单查看</a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath()%>/managemessage"><i class="fa fa-fw fa-file"></i>邮件查看</a>
                    </li>
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
        	<h3 style="color: green">管理>订单查看</h3><br>
			<table class="table table-hover">
  				<tr>
  					<th>编号</th><th>用户名</th><th>汽车品牌</th><th>数量</th><th>金额</th>
  				</tr>
  				<c:forEach items="${orderlist}" var="order" varStatus="flag">
  					<tr>
  						<td>${flag.index+1}</td> 
  						<td>${order.username}</td> 
  						<td>${order.carmodal}</td> 
  						<td>${order.number}</td> 
  						<td>${order.price}</td> 
  					</tr>
  				</c:forEach>
			</table>
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- Bootstrap Js -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="assets/js/jquery.metisMenu.js"></script>
    <!-- Morris Chart Js -->
    <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
    <!-- Custom Js -->
    <script src="assets/js/custom-scripts.js"></script>


</body>

</html>