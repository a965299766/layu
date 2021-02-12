<%@ page language="java" import="java.util.*,vip.dulaogou.beans.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>搜索页面</title>
    
	<link rel="stylesheet" type="text/css" href="css/searchstyle.css" />

  </head>
  
  <body>
    
    <div class="topinfo">
		<%
    		User nowUser = (User) request.getSession().getAttribute("nowUser");
    		if(nowUser == null){
    	 %>
			<ul>
				<li>
					<a href="login.jsp">请登录</a>
					<a href="register.jsp">点我注册</a>
				</li>
			</ul>
		<%
			}
			else{
		 %>
		 	<ul>
		 		<li>
					<a href="exit.do">退出登录</a>
				</li>
				<li>
					<a href="personalcenter.do">个人中心</a>
				</li>
				<li>
					<a href="publish.do">我要发布</a>
				</li>
				<li>
					<a href="cart.do">购物车</a>
				</li>
				<li>
					<a href="order.do">我的订单</a>
				</li>
				<li>
					<a>欢迎，<%=nowUser.getUname() %> </a>
				</li>
			</ul>
		 <%
		 	}
		  %>
		</div>
		
		<div class="logoandsearch">
			<div class="logo">
				<a href="main.do"><img alt="辣鱼" src="image/logo.png"/></a>
			</div>
			<div class="search">
				<input type="text" name="search" placeholder="在此输入要搜索的商品信息" id="keywords" value="<%=request.getAttribute("keywords") %>"/>
				<a href="" onclick="location='searchproduct.do?keywords='+document.getElementById('keywords').value;" target="_blank"><img alt="search" src="image/search.jpg"/></a>
			</div>
		</div>
		
		<div class="mainframe">
			<div class="text">
				搜索到的结果：
			</div>
			<%
				List<Product> searchedProducts = (List<Product>) request.getAttribute("searchedProducts");
				if(searchedProducts != null && searchedProducts.size() > 0){
					for(Product product : searchedProducts){
						String hrefPath = "getoneproduct.do?pid=" + product.getPid();
			 %>
			<div class="products">
				<div class="product">
					<a href="<%=hrefPath %>" target="_blank">
						<img alt="图片" src="<%=product.getPpicloc() %>"/>
						<br/>
						<b class="price">¥<%=product.getPprice() %></b>
						<b class="name"><%=product.getPname() %></b>
					</a>
				</div>
				<%
						}
					}else{
				 %>
				 
				 <b class="errormsg" style="font-size: 35px;font-weight: 600; padding: 30px 0 0 30px;">
				 	没有找到你要的商品呢
				 </b>
				 
				 <%
				 	}
				  %>
				
			</div>
			
		</div>
    
  </body>
</html>
