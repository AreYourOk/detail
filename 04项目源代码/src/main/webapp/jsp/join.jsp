<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>您的身份</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/loginstyle.css" type="text/css" rel="stylesheet" media="all">
	<link href="css/jquerysctipttop.css" rel="stylesheet" type="text/css">
	
  </head>
  
  <body>
  	<%
  		String tip = (String)request.getAttribute("tip");
  		if(tip == null){	
  	%>
	<h1>你是谁？</h1>
	<%}else{ %>
	<h1 style="color: red"><%=tip %></h1>
	<%} %>
	<section>
  		<div class="controls w3l">
    		<div class="cbcontrol" id="cbControlRight"><</div>
    		<div class="cbcontrol" id="cbControlLeft">></div>
    		<div class="clear"></div>
  		</div>
  	<div class="stage">
   
   		<div class="cbImage active signin agileits">
			<h3>登录</h3>
			<form action="<%=request.getContextPath()%>/dologin" method="post">
				<input type="text" name="username" class="rname" placeholder="Username" required="">
				<input type="password" name="password" class="password" placeholder="Password" required="">
				<input type="submit" value="登录">
				<p style="margin-top: 35px">Nice to see you again.</p>
				<a href="<%=request.getContextPath()%>/index" class="lterms">Come back to home.</a>
			</form>
		</div>
		
    	<div class="cbImage w3">
			<h3>注册</h3>
			<form action="<%=request.getContextPath()%>/doregister" method="post">
				<input type="text" class="username" name="rusername" placeholder="用户名" required="">
				<input type="text" class="password" name="rpassword" placeholder="密码" required="">
				<input type="text" class="password2" name="rpassword2" placeholder="请再次输入密码" required="">
				<input type="text" class="name" name="rname" placeholder="真实姓名" required="">
				<input type="text" class="phone" name="rphone" placeholder="电话号码" required="">
				<input type="text" class="address" name="raddress" placeholder="收件地址" required="">
				<input type="submit" class="done" value="注册">
			</form>
			<p style="margin-top: 35px">Welcome to join us.</p>
			<a href="<%=request.getContextPath()%>/index" class="rterms">Come back to home.</a>
		</div>
    	
  	</div>
  	<div class="clear"></div>
  	<div class="footer">
  		<p>&copy; 2018 Sliding Forms Widget. All Rights Reserved | Design by null</p>
  	</div>
	</section>
	<script src="js/jquery-2.1.4.min.js"></script>
	<script src="js/coverflow-slideshow.js"></script>
	<div style="text-align:center;">
	</div>
  </body>
</html>
