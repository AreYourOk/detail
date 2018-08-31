<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>用户管理</title>
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
	<style type="text/css">
		.me01{
			position: fixed; 
			width:200px;
			height: 200px; 
			bottom: 20%; 
			right: 0;
			background-color:#2D88CF;
			border: 1px solid #06F867; 
			text-align: center;  
			margin: 0; 
		}
		.me01 input[type="text"]{
			display: inline-block;
			height: 25px;
			font-size: 15px;
		}
		.me01 input[type="submit"]{
			display: inline-block;
			height: 25px;
			font-size: 15px;
			background-color: #06F867;
		}
	</style>
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
                        <a href="<%=request.getContextPath()%>/manageuser"  class="active-menu"><i class="fa fa-fw fa-file"></i>用户管理</a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath()%>/manageorder"><i class="fa fa-fw fa-file"></i>订单查看</a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath()%>/managemessage"><i class="fa fa-fw fa-file"></i>邮件查看</a>
                    </li>
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
        	<h3 style="color: green">管理>用户管理</h3><br>
			<table class="table table-hover">
  				<tr>
  					<th>编号</th><th>用户名</th><th>密码</th><th>真实姓名</th>
  					<th>联系方式</th><th>收件地址</th><th>操作</th>
  				</tr>
  				<c:forEach items="${listuser}" var="user">
  					<tr>
  						<td>${user.id}</td> 
  						<td>${user.username}</td> 
  						<td>${user.password}</td> 
  						<td>${user.name}</td> 
  						<td>${user.phone}</td> 
  						<td>${user.address}</td>  
  						<td><a href="<%=request.getContextPath()%>/deluser/${user.id}">删除</a></td>   					
  					</tr>
  				</c:forEach>
			</table>
			<div class="me01">
			<br>
				<h2>搜索用户</h2>
			<br>
				<form action="<%=request.getContextPath()%>/findOneUser" method=post>
					<input type="text" placeholder="用户名" name="username"><br><br>
					<input type="submit" value="搜索">
				</form>
			</div>
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