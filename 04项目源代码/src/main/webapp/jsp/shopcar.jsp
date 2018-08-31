<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>购物车</title>
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
	
	<script>
		function chk(){
			document.getElementById("a1").disabled=false;
			document.getElementById("a2").disabled=false;
			document.getElementById("a3").disabled=false;
			document.getElementById("b1").disabled=false;			
		}
	</script>
	
</head>

<body>
	<c:import url="head.jsp"></c:import>
    <div id="wrapper">
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <a href="#" class="active-menu"><i class="fa fa-sitemap"></i> 信息管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                               <a href="userinfo">基本信息管理</a>
                            </li>
                            <li>
                                <a href="updpwd">密码修改</a>
                            </li>
                        </ul>
                    </li>
                    <li>
						<a href="#" class="active-menu"><i class="fa fa-sitemap"></i> 订单管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                               <a href="shopcar">购物车</a>
                            </li>
                            <li>
                                <a href="purchased">购买记录</a>
                            </li>
                        </ul>                    
                     </li>
                </ul>
            </div>
        </nav>
        <div id="page-wrapper">
        	<h3 style="color: green">管理>订单管理>购物车</h3><br>
        	<p style="text-align: center;color:green">${tip}</p>
        	<c:if test="${sumn==0}">购物车空空如也</c:if>
        	<c:if test="${sumn!=0}">
        	<table class="table">
        		<tr>
        			<th>编号</th><th>汽车品牌</th><th>数量</th><th>价格</th><th>操作</th>
        		</tr>
        			<c:forEach items="${orderlist}" var="order" varStatus="station">
	        			<tr>
	        			<form action="dealoneorder" method="post">
	        				<input type="hidden" name="id" value="${order.id}"/>
	        				<input type="hidden" name="price" value="${order.price}"/>
	        				<td>${station.index+1}</td><td>${order.carmodal}</td><td>${order.number}</td><td>${order.price}</td>
	        				<td><button type="submit" class="btn btn-primary">结算此条购物</button></td>
	        			</form>
	        			</tr>
        			</c:forEach>
        			<tr>
        				<form action="<%=request.getContextPath()%>/dealallorder" method="post">
	        			<input type="hidden" name="sumprice" value="${sump}"/>
	        			<td></td><td></td><td>${sumn}</td><td>${sump}</td><td><button type="submit" class="btn btn-primary">结算所有</button></td>
	        			</form>
	        		</tr>
        	</table>
        	</c:if>
        </div>
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