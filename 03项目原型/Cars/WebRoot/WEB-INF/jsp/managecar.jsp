<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>汽车管理</title>
    <!-- Bootstrap Styles-->
    <link href="<%=request.getContextPath()%>/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="<%=request.getContextPath()%>/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="<%=request.getContextPath()%>/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="<%=request.getContextPath()%>/assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/zerogrid.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/responsiveslides.css">
</head>

<body>
	<c:import url="head.jsp"></c:import>
    <div id="wrapper">
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                     </li><li>
                        <a href="#" class="active-menu"><i class="fa fa-sitemap"></i> 汽车管理<span class="fa arrow"></span></a>
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
                        <a href="<%=request.getContextPath()%>/managemessage"><i class="fa fa-fw fa-file"></i>邮件查看</a>
                    </li>
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
        	<h3 style="color: green">管理>汽车管理>汽车信息管理</h3><br>
        	<p style="text-align: center;color:green">${tip}</p>
			<table class="table table-hover">
  				<tr>
  					<th>编号</th><th>品牌</th><th>注册年份</th><th>里程(km)</th><th>马力(HP)</th><th>座位数</th><th>颜色</th>
  					<th>气囊(个)</th><th>图片文件名</th><th>价格($)</th><th>车身规格(㎡)</th><th>库存</th><th>已售</th><th>操作</th>
  				</tr>
  				<c:forEach items="${listcar}" var="car">
  					<tr>
  						<td>${car.id}</td> 
  						<td>${car.modal}</td> 
  						<td>${car.registeryear}</td> 
  						<td>${car.mileage}</td> 
  						<td>${car.power}</td> 
  						<td>${car.seat}</td>
  						<td>${car.color}</td>
  						<td>${car.airbags}</td>
  						<td>${car.picture}</td>
  						<td>${car.price}</td>
  						<td>${car.area}</td>
  						<td>${car.stock}</td>  
  						<td>${car.saled}</td>  
  						<td><a href="<%=request.getContextPath()%>/updcar/${car.id}" title="修改该条记录"><strong>※</strong></a>
  						<a href="<%=request.getContextPath()%>/delcar/${car.id}" title="删除该条记录"><strong>－</strong></a></td>   					
  					</tr>
  				</c:forEach>
  				<tr>
  					<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td> 
  					<td><a href="<%=request.getContextPath()%>/addcar" title="添加车辆信息"><strong>＋</strong></a></td>   					
  				</tr>
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