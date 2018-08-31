<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<!--[if lt IE 7 ]><jsp class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><jsp class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><jsp class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><jsp lang="en"> <!--<![endif]-->
<head>

    <!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8">
	<title>车辆信息</title>
	<meta name="description" content="">
	<meta name="author" content="">
	
    <!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!-- CSS
  ================================================== -->
   	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.css">
 
  	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/zerogrid.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/responsiveslides.css">
	
	<script src="<%=request.getContextPath()%>/js/jquery-latest.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/script.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery183.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/responsiveslides.min.js"></script>
    <script>
		// You can also use "$(window).load(function() {"
		$(function () {
		  // Slideshow 
		  $("#slider").responsiveSlides({
			auto: true,
			pager: false,
			nav: true,
			speed: 500,
			namespace: "callbacks",
			before: function () {
			  $('.events').append("<li>before event fired.</li>");
			},
			after: function () {
			  $('.events').append("<li>after event fired.</li>");
			}
		  });
		});
	</script>
	
	
	<!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
      </div>
    <![endif]-->
    <!--[if lt IE 9]>
		<script src="js/jsp5.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
	<![endif]-->
    
</head>
<body>
<div class="wrap-body">

<!--////////////////////////////////////Header-->
<c:import url="head.jsp"></c:import>


<!--////////////////////////////////////Container-->
<section id="container">
	<div class="">
		<div class="wrap-container clearfix">
			<div id="main-content">
				<div class="wrap-box" style="background: #fff; box-shadow: 2px 2px 5px 0px rgba(0,0,0,0.3);"><!--Start Box-->
					<div class="zerogrid">
						<div class="header">
							<h1>车辆相关信息</h1>
						</div>	
						<div class="row">
							<div class="col-2-3">
								<div class="wrap-col">
									<img src="<%=request.getContextPath()%>/images/${showcar.picture}" width="100%" hright="100%">
								</div>
							</div>
							<div class="col-1-3">
								<div class="wrap-col">
									<h3 class="price">$${showcar.price}</h3><br>
									<ul class="specs">
										<li><strong>品牌</strong> <span>${showcar.modal}</span></li>
										<li><strong>注册年份 </strong> <span>${showcar.registeryear}</span></li>
										<li><strong>里程(km)</strong> <span>${showcar.mileage}</span></li>
										<li><strong>马力(HP)</strong> <span>${showcar.power}</span></li>
										<li><strong>座位数(个)</strong> <span>${showcar.seat}</span></li>
										<li><strong>颜色</strong> <span>${showcar.color}</span></li>
										<li><strong>安全气囊数(个)</strong> <span>${showcar.airbags}</span></li>
										<li><strong>磨损程度</strong> <span>${showcar.damage}</span></li>
										<li><strong>库存</strong> <span>${showcar.stock}</span></li>
										<li><strong>已售</strong> <span>${showcar.saled}</span></li>
										<hr color="pink" width="100%" style="height: 2px;margin-top: 5px;margin-bottom: 5px;"/>
										<form action="<%=request.getContextPath()%>/buycar" method=post>
										<input type="hidden" name="carid" value="${showcar.id}"/>
										<input type="hidden" name="carmodal" value="${showcar.modal}"/>
										<input type="hidden" name="price" value="${showcar.price}"/>
										<li><strong>现在就要？</strong><span><button type="submit" class="btn btn-primary">立即购买</button></span></li>
										</form>
										<hr color="yellow" width="100%" style="height: 2px;margin-top: 5px;margin-bottom: 5px;"/>
										<form action="<%=request.getContextPath()%>/addshopcar" method="post">
										<input type="hidden" name="carid2" value="${showcar.id}"/>
										<input type="hidden" name="carmodal2" value="${showcar.modal}"/>
										<input type="hidden" name="price2" value="${showcar.price}"/>
										<li><strong>以后再买？</strong><strong><button type="submit" class="btn btn-primary">加入购物车</button></strong></li>
										</form>
										<hr color="#D6B6E6" width="100%" style="height: 2px;margin-top: 5px;margin-bottom: 5px;"/>
									</ul>
								</div>
							</div>
						</div>
					</div> 
				</div>
				<div class="wrap-box">
					<div class="zerogrid">
						<div class="row">
							<div class="col-2-3">
								<div class="wrap-col">
									<div class="info">
										<h2 class="h3">特征集</h2>
										
										<p>ABS、辅助加热、中央锁定、巡航控制、电热座椅、电动车窗、ESP、四轮驱动、防盗器、皮革座椅、导航系统、停车传感器、助力转向、天窗、挂车联轴器、氙气大灯</p>
									</div><!-- /.post -->

									<div class="info">
										<h2 class="h3">车辆描述</h2>
										
										<p>黄昏降临峡谷，然后在山上投下昏暗的阴影，这四个轮子的家伙用90年代的设计吸引了你的目光。无尘挡风玻璃和明亮的身体告诉我们，它一直保持在一个谨慎的方式。它的钢锻体是圆锥形的，锋利的，作为90年代的车辆，它既不坚固，也不闷热，但很灵巧。下面的大衣、镜子、门帘和窗边都涂上金属银，轮毂上也涂上一层冰冷的光泽。然而，当它与黑色部分形成对比时，这种金属灰色会发出冰冷的光泽。头灯和拖曳灯设置在车上，前灯可以打开显示你前面的路，而尾灯比闪电更像是一个信号装置。应用一个旧的GasOnLink引擎使其整个车身比二十一世纪的汽车更长，甚至保险杠可以被计算为当前的两倍。它不是凿成的角，而是作为平原轿车的一种。</p>
									</div><!-- /.post -->
								</div>
							</div>
							<div class="col-1-3">
								<div class="wrap-col">
									<div class="info">
										<h3>联系细节</h3>
										<ul class="specs">
											<li><span>名字</span> <strong>帅先生</strong></li>
											<li><span>电话</span> <strong>123234345456</strong></li>
											<li><span>邮箱</span> <a href="mailto:110@qq.com">110@qq.com</a></li>
											<li><span>地址</span> <strong>福建厦门</strong></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!--////////////////////////////////////Footer-->
<footer>
	<div class="zerogrid">
		<div class="wrap-footer">
			<div class="row">
				<h3>Contact</h3>
				<span>Phone / +80 999 99 9999 </span></br>
				<span>Email / info@domain.com  </span></br>
				<span>Studio / Moonshine St. 14/05 Light City </span></br>
				<span><strong>Copyright &copy; 2016.Company name All rights reserved.More Templates </strong></span>
			</div>
		</div>
	</div>
</footer>

</div>
</body></html>