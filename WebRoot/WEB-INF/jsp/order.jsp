<%@ page language="java" import="java.util.*,vip.dulaogou.beans.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的订单</title>
	<link rel="stylesheet" type="text/css" href="css/orderstyle.css" />

  </head>
  
  <body>
    <div class="topinfo">
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
					<a>欢迎，<%=((User) request.getSession().getAttribute("nowUser")).getUname() %> </a>
				</li>
			</ul>
		</div>
		
		<div class="logo">
			<a href="main.do"><img alt="辣鱼" src="image/logo.png"/></a>
		</div>
		
		<div class="mainframe">
			<div class="text">
				我的订单
			</div>
			
			<div class="cart">
				<table class="carttable" border="1">
					<tr>
						<th>缩略图</th>
						<th>商品名</th>
						<th>数量</th>
						<th>单价</th>
						<th>总价</th>
						<th>订单生成日期</th>
					</tr>
					<tr>
					<%
						List<Order> orders = (List<Order>) request.getAttribute("orders");
						if(orders != null && orders.size() > 0){
							for(Order order : orders){
					 %>
						<td><img alt="图片" src="<%=order.getPpicloc() %>" class="pic" style="width: 50px;height: 50px;"/></td>
						<td><%=order.getPname() %></td>
						<td><%=order.getOnum() %></td>
						<td>¥<%=order.getPprice() %></td>
						<td>¥<%=order.getPsum() %></td>
						<td><%=order.getOdate() %></td>
					</tr>
					<%
							}
						}
					 %>
				</table>
			</div>
		</div>
  </body>
</html>
