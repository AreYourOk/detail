<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>添加汽车</title>
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
        	<h3 style="color: green">管理>汽车管理>汽车信息管理>汽车信息添加</h3><br>
			<table class="table table-hover">
  				<form action="<%=request.getContextPath()%>/doaddcar" method=post>
	  				<tr>
	  					<td>品牌：<br>
	  					<select name="modal">
								<c:forEach items="${listmodal}" var="modal">
									<option>${modal.modalname}</option>
								</c:forEach>
						</select>
						</td>
	  					<td>注册年份：<br><input type="text" name="registeryear" required=""></input></td>
	  					<td>里程：<br><input type="text" name="mileage" required=""></input></td>
	  				</tr>
	  				<tr>	
	  					<td>马力：<br><input type="text" name="power" required=""></input></td>
	  					<td>座位数：<br><input type="text" name="seat" required=""></input></td>
	  					<td>颜色：<br><input type="text" name="color" required=""></input></td>
	  				</tr>
	  				<tr>
	  					<td>安全气囊数：<br><input type="text" name="airbags" required=""></input></td>
	  					<td>损伤程度：<br><select name="damage">
	  							<option>none</option>
	  							<option>little</option>
	  							<option>lot</option>
	  						</select>
	  					</td>
	  					<td>汽车图片:<br>
	  					<input type="file" name="picture" style="display: inline"></input></td>
	  				</tr>
	  				<tr>
	  					<td>价格：<br><input type="text" name="price" required=""></input></td>
	  					<td>车身规格：<br><input type="text" name="area" required=""></input></td>
	  					<td>库存：<br><input type="text" name="stock" required=""></input></td>
	  				</tr>
	  				<tr>
	  					<td></td>
	  					<td></td>
	  					<td><input type="submit" value="确定"></input></td>
	  				</tr>
  				</form>
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