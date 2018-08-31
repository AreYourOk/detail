<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.gjh.model.User"%>


<!--////////////////////////////////////Header-->
<header class="bg-theme">
	<div class="wrap-header zerogrid">
		<div class="row">
			<div id="cssmenu">
				<ul>
				   <li class='active'><a href="<%=request.getContextPath()%>/index">Home</a></li>
				   <li><a href="<%=request.getContextPath()%>/contact">Contact</a></li>
				   <%
				   /*Cookie[] cks= request.getCookies();
				   	String username = "";
				   	if(cks != null){
					   	for(Cookie ck:cks){
					   		if(ck.getName().equals("username")){
					   			username = ck.getValue();
					    	}
					    }
				    }*/
				    User user = (User)session.getAttribute("nowuser");
				    if(user==null){%>  
				   		<li><a href="<%=request.getContextPath()%>/join">Login</a></li>
				   <% }else{%>
				   		<c:if test="${nowuser.limition==1}"><li><a href="<%=request.getContextPath()%>/centre">
				   		<%=user.getName()%></a></li></c:if>
				   		<c:if test="${nowuser.limition==0}"><li><a href="<%=request.getContextPath()%>/myuser">
				   		<%=user.getName()%></a></li></c:if>
				   		<li><a href="<%=request.getContextPath()%>/logout">Logout</a></li>
				   <%} %>
				</ul>
			</div>
			<a href='<%=request.getContextPath()%>/index' class="logo"><img src="<%=request.getContextPath()%>/images/logo.png" /></a>
		</div>
	</div>
</header>