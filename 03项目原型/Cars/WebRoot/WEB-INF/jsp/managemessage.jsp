<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>留言管理</title>
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
	
	<style>
		.me01 {
            overflow: hidden; /*自动隐藏文字*/
            text-overflow: ellipsis;/*文字隐藏后添加省略号*/
            white-space: nowrap;/*强制不换行*/
            width: 16em;/*不允许出现半汉字截断*/
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
                        <a href="<%=request.getContextPath()%>/manageuser"><i class="fa fa-fw fa-file"></i>用户管理</a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath()%>/manageorder"><i class="fa fa-fw fa-file"></i>订单查看</a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath()%>/managemessage"  class="active-menu"><i class="fa fa-fw fa-file"></i>邮件查看</a>
                    </li>
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
        	<h3 style="color: green">管理>邮件查看</h3><br>
			<table class="table table-hover">
  				<tr>
  					<th style="width: 200px">编号</th><th style="width: 200px">姓名</th><th style="width: 200px">邮箱</th>
  					<th style="width: 200px">主题</th><th style="width: 300px">建议</th><th style="width: 300px"></th>
  				</tr>
  				<c:forEach items="${messagelist}" var="message" varStatus="flag">
  					<tr>
  						<td>${flag.index+1}</td> 
  						<td>${message.name}</td> 
  						<td>${message.email}</td> 
  						<td>${message.subject}</td> 
  						<td><div class="me01">${message.message}</div></td> 
  						<td><button class="btn btn-primary"><a href="<%=request.getContextPath()%>/showmessage/${message.id}">详情</a></button></td>
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