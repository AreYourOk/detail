<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>修改汽车信息</title>
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
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
        	<h3 style="color: green">管理>汽车管理>汽车信息管理>汽车信息修改</h3><br>
			<table class="table">
				<form action="<%=request.getContextPath()%>/doupdcar" method=post>
					<input type="hidden" name="id" value="${car.id}"/>
					<input type="hidden" name="pic" value="${car.picture}"/>
	  				<tr>
	  					<td>品牌：<br>
	  						<select name="modal">
								<c:forEach items="${listmodal}" var="modal">
									<option <c:if test="${car.modal==modal.modalname}">selected</c:if>>${modal.modalname}</option>
								</c:forEach>
							</select>
	  					</td>
	  					<td>注册年份：<br><input type="text" name="registeryear" placeholder="注册年份" value="${car.registeryear}"></input></td>
	  					<td>里程：<br><input type="text" name="mileage" placeholder="里程" value="${car.mileage}"></input></td>
	  				</tr>
	  				<tr>	
	  					<td>马力：<br><input type="text" name="power" placeholder="马力" value="${car.power}"></input></td>
	  					<td>座位数：<br><input type="text" name="seat" placeholder="座位数" value="${car.seat}"></input></td>
	  					<td>颜色：<br><input type="text" name="color" placeholder="颜色" value="${car.color}"></input></td>
	  				</tr>
	  				<tr>
	  					<td>安全气囊数：<br><input type="text" name="airbags" placeholder="安全气囊数" value="${car.airbags}"></input></td>
	  					<td>损伤程度：<br><select name="damage">
	  							<option <c:if test="${car.damage=='none'}">selected</c:if>>none</option>
	  							<option <c:if test="${car.damage=='little'}">selected</c:if>>little</option>
	  							<option <c:if test="${car.damage=='lot'}">selected</c:if>>lot</option>
	  						</select>
	  					</td>
	  					<td>汽车图片:<%=request.getContextPath()%>/images/${car.picture}<br>
	  					<input type="file" name="picture" style="display: inline"></input></td>
	  				</tr>
	  				<tr>
	  					<td>价格：<br><input type="text" name="price" placeholder="价格" value="${car.price}"></input></td>
	  					<td>车身规格：<br><input type="text" name="area" placeholder="车身规格" value="${car.area}"></input></td>
	  					<td></td>
	  				</tr>
	  				<tr>
	  					<td>库存：<br><input type="text" name="stock" placeholder="库存" value="${car.stock}"></input></td>
	  					<td>已售：<br>${car.saled}</td>
	  					<td><input type="submit" value="确定" class="btn btn-primary"></input></td>
	  				</tr>
  				</form>
			</table>
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="<%=request.getContextPath()%>/assets/js/jquery-1.10.2.js"></script>
    <!-- Bootstrap Js -->
    <script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="<%=request.getContextPath()%>/assets/js/jquery.metisMenu.js"></script>
    <!-- Morris Chart Js -->
    <script src="<%=request.getContextPath()%>/assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/morris/morris.js"></script>
    <!-- Custom Js -->
    <script src="<%=request.getContextPath()%>/assets/js/custom-scripts.js"></script>


</body>

</html>