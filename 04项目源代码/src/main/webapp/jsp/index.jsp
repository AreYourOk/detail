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
	<title>湛蓝色买车网</title>
	<meta name="description" content="">
	<meta name="author" content="">
	
    <!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!-- CSS
  ================================================== -->
  	<link rel="stylesheet" href="css/zerogrid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsiveslides.css">
	
	<script src="js/jquery-latest.min.js"></script>
	<script src="js/script.js"></script>
    <script src="js/jquery183.min.js"></script>
    <script src="js/responsiveslides.min.js"></script>
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
	<style type="text/css">
		.me02{
			width: 100%;
			height: 35px;
			background-color: #434343;
			margin-top: 5px;
			border: 1px solid #7F7F7F;
		}
	</style>
	
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

<c:import url="head.jsp"></c:import>
<!--////////////////////////////////////Header-->

<div class="slider">
	<!-- Slideshow -->
	<div class="callbacks_container">
		<ul class="rslides" id="slider">
			<li>
				<img src="images/slideshow-image1.jpg" alt="">
				<div class="caption">
					<h1>福特野马</h1>
					<span>阳光·蓝色经典版</span>
				</div>
			</li>
			<li>
				<img src="images/slideshow-image2.jpg" alt="">
				<div class="caption">
					<h1>阿尔法罗密欧</h1>
					<span>热血·红色尊享版</span>
				</div>
			</li>
			<li>
				<img src="images/slideshow-image3.jpg" alt="">
				<div class="caption">
					<h1>三菱</h1>
					<span>冷酷·亚黑珍藏版</span>
				</div>
			</li>
		</ul>
	</div>
	<div class="clear"></div>
</div>

<div class="bg-theme">
	<div class="filter zerogrid">
		<h2 class="t-center">我想看这样的车</h2>
		<form action="<%=request.getContextPath()%>/showcars" method=post>
			<div class="row">
				<div class="col-1-3">
					<div class="wrap-col">
						<span>Modal :</span><br/>
						<select name="modal">
							<option>--ALL--</option>
							<c:forEach items="${modallist}" var="modal">
								<option>${modal.modalname}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="col-1-3">
					<div class="wrap-col">
						<span>Price :</span><br/>
						<select name="price">
							<option>--ALL--</option>
							<option>0~10000</option>
							<option>10000~20000</option>
							<option>20000~50000</option>
							<option>50000~100000</option>
							<option>100000~∞</option>
						</select>
					</div>
				</div>
				<div class="col-1-3">
					<div class="wrap-col">
						<br>
						<!-- <a href="showcars" class="button bt1">就是这样</a>-->
						<input type="submit" value="就是这样" class="me02"/>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>

<!--////////////////////////////////////Container-->
<section id="container">
	<div class="wrap-container clearfix">
		<div id="main-content">
			<div class="wrap-box"><!--Start Box-->
				<div class="zerogrid">
					<div class="header">
						<h2>POPULAR CARS</h2>
					</div>	
					<div class="row">
						<c:forEach items='${carlist}' var='car'>
							<div class="col-1-3">
								<div class="wrap-col">
									<div class="item t-center">
										<div class="item-container">
											<a href="<%=request.getContextPath()%>/single/${car.id}">
												<div class="item-caption">
													<div class="item-caption-inner">
														<div class="item-caption-inner1">
															<span style="font-size: 18px">${car.registeryear} /  ${car.power} HP /  ${car.seat} seat / 
																${car.damage} damage / ${car.color} color / ${car.area} ㎡</span>
														</div>
													</div>
												</div>
												<img src="images/${car.picture}"/>
											</a>
										</div>
										<div class="item-info">
											<a href="<%=request.getContextPath()%>/buycar/${car.id}"><h3>${car.modal}</h3></a>
											<p>${car.mileage} km | <strong>$</strong>${car.price}</p>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="wrap-box t-center" style="background: #fff; box-shadow: 2px 2px 5px 0px rgba(0,0,0,0.3);"><!--Start Box-->
				<div class="zerogrid">
					<div class="header">
						<h2>WELCOME TO CAR DEALER WEBSITE</h2>
					</div>
					<strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</strong>
					<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo</p>
				</div>
			</div>
			<div class="wrap-box" ><!--Start Box-->
				<div class="zerogrid">
					<div class="header">
						<h2>LATEST CARS</h2>
					</div>
					<div class="row">
						<div class="col-2-3">
							<div class="wrap-col">
								<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="#">
													<div class="item-caption">
														<div class="item-caption-inner">
															<div class="item-caption-inner1">
																<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span>
															</div>
														</div>
													</div>
													<img src="images/car7.jpg" />
												</a>
											</div>
										</div>
										<div class="col-2-3">
											<div class="wrap-col">
												<div class="item-info">
													<a href="#"><h3>LAMBORGHINI GALLARDO</h3></a>
													<p>32,000 km â¬78,400</p>
													<p>ABS, Leather seats, Power Assisted Steering, Electric heated seats, New HU and AU, Xenon headlights</p>
												</div>
											</div>
										</div>
										<div class="clear"></div>
									</div>
								</div>
								<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="#">
													<div class="item-caption">
														<div class="item-caption-inner">
															<div class="item-caption-inner1">
																<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span>
															</div>
														</div>
													</div>
													<img src="images/car8.jpg" />
												</a>
											</div>
										</div>
										<div class="col-2-3">
											<div class="wrap-col">
												<div class="item-info">
													<a href="#"><h3>LAMBORGHINI GALLARDO</h3></a>
													<p>32,000 km â¬78,400</p>
													<p>ABS, Leather seats, Power Assisted Steering, Electric heated seats, New HU and AU, Xenon headlights</p>
												</div>
											</div>
										</div>
										<div class="clear"></div>
									</div>
								</div>
								<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="#">
													<div class="item-caption">
														<div class="item-caption-inner">
															<div class="item-caption-inner1">
																<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span>
															</div>
														</div>
													</div>
													<img src="images/car9.jpg" />
												</a>
											</div>
										</div>
										<div class="col-2-3">
											<div class="wrap-col">
												<div class="item-info">
													<a href="#"><h3>LAMBORGHINI GALLARDO</h3></a>
													<p>32,000 km â¬78,400</p>
													<p>ABS, Leather seats, Power Assisted Steering, Electric heated seats, New HU and AU, Xenon headlights</p>
												</div>
											</div>
										</div>
										<div class="clear"></div>
									</div>
								</div>
								<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="#">
													<div class="item-caption">
														<div class="item-caption-inner">
															<div class="item-caption-inner1">
																<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span>
															</div>
														</div>
													</div>
													<img src="images/car10.jpg" />
												</a>
											</div>
										</div>
										<div class="col-2-3">
											<div class="wrap-col">
												<div class="item-info">
													<a href="#"><h3>LAMBORGHINI GALLARDO</h3></a>
													<p>32,000 km â¬78,400</p>
													<p>ABS, Leather seats, Power Assisted Steering, Electric heated seats, New HU and AU, Xenon headlights</p>
												</div>
											</div>
										</div>
										<div class="clear"></div>
									</div>
								</div>
								<div class="row">
									<div class="item">
										<div class="col-1-3">
											<div class="item-container">
												<a href="#">
													<div class="item-caption">
														<div class="item-caption-inner">
															<div class="item-caption-inner1">
																<span>2006 / 32,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span>
															</div>
														</div>
													</div>
													<img src="images/car7.jpg" />
												</a>
											</div>
										</div>
										<div class="col-2-3">
											<div class="wrap-col">
												<div class="item-info">
													<a href="#"><h3>LAMBORGHINI GALLARDO</h3></a>
													<p>32,000 km â¬78,400</p>
													<p>ABS, Leather seats, Power Assisted Steering, Electric heated seats, New HU and AU, Xenon headlights</p>
												</div>
											</div>
										</div>
										<div class="clear"></div>
									</div>
								</div>
							</div>
						</div>
						<div id="sidebar" class="col-1-3">
							<div class="wrap-col">
								<!---- Start Widget ---->
								<div class="widget">
									<div class="wid-header">
										<h5>About Us</h5>
									</div>
									<div class="wid-content">
										<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident. </p>
										<a href="#">Read More About Us</a>
									</div>
								</div>
								<!---- Start Widget ---->
								<div class="widget wid-post">
									<div class="wid-header">
										<h5>Latest Posts</h5>
									</div>
									<div class="wid-content">
										<div class="post">
											<a href="#"><img src="images/car8.jpg"/></a>
											<div class="wrapper">
											  <h5><a href="#">Lorem ipsum dolor</a></h5>
											   <span>$25 - $26</span>
											</div>
										</div>
										<div class="post">
											<a href="#"><img src="images/car9.jpg"/></a>
											<div class="wrapper">
											  <h5><a href="#">Lorem ipsum dolor</a></h5>
											  <span>$25 - $26</span>
											</div>
										</div>
										<div class="post">
											<a href="#"><img src="images/car10.jpg"/></a>
											<div class="wrapper">
											  <h5><a href="#">Lorem ipsum dolor</a></h5>
											   <span>$25 - $26</span>
											</div>
										</div>
									</div>
								</div>
								<!---- Start Widget ---->
								<div class="widget">
									<div class="wid-header">
										<h5>SUBSCRIBE</h5>
									</div>
									<div class="wid-content">
										<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure . </p>
										<a href="#" class="button bt1">Subscribe</a>
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
				<span><strong>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="æ¨¡æ¿ä¹å®¶">æ¨¡æ¿ä¹å®¶</a> - Collect from <a href="http://www.cssmoban.com/" title="ç½é¡µæ¨¡æ¿" target="_blank">ç½é¡µæ¨¡æ¿</a></strong></span>
			</div>
		</div>
	</div>
</footer>

</div>
</body>
</html>