<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>密码修改</title>
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
		function chk1(obj){
			var pwd = document.getElementById("pwd").value;
			if(obj.value==pwd){
				document.getElementById("i1").disabled=true;
				document.getElementById("i2").disabled=false;
				document.getElementById("i3").disabled=false;
				document.getElementById("t1").innerHTML="原密码验证成功！";
			}
			else{
				document.getElementById("t1").innerHTML="原密码验证失败！";
			}			
		}
		function chk2(){
			var i1 = document.getElementById("i2").value;
			var i2 = document.getElementById("i3").value;
			if(i1 == i2){
				document.getElementById("b1").disabled=false;
				document.getElementById("t2").innerHTML="合法的密码";
			}
			else{
				document.getElementById("t2").innerHTML="两次密码输入不一致";
				document.getElementById("b1").disabled=true;
			}
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
        	<h3 style="color: green">管理>信息管理>密码修改</h3><br>
        	<form action="userdoupdpwd" method="post">
        	<input id="pwd" type="hidden" name="pwd" value="${nowuser.password}"/>
        	<table class="table">
        		<tr>
        			<td>原密码：</td><td><input id="i1" type="text" onblur="chk1(this)"/><span id="t1"></span></td>
        		</tr>
        		<tr>
        			<td>新密码：</td><td><input id="i2" type="text" onblur="chk2()" disabled="true"/></td>
        		</tr>
        		<tr>
        			<td>再输一次新密码：</td><td><input id="i3" type="text" onblur="chk2()" disabled="true" name="password"/><span id="t2"></span></td>
        		</tr>
        	</table>
			<button class="btn btn-primary" type="submit" id="b1" disabled="true">完成</button>
        	</form>
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