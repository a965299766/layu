<%@ page language="java" import="java.util.*,vip.dulaogou.beans.*,vip.dulaogou.service.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <%
  		Product product = (Product) request.getAttribute("product");
   	%>
    <title><%=product.getPname() %></title>
	<link rel="stylesheet" type="text/css" href="css/productinfostyle.css"/>
	<script type="text/javascript" src="js/productinfo.js">
	</script>

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
				<input type="text" name="search" placeholder="在此输入要搜索的商品信息"/>
				<a href="search.jsp"><img alt="search" src="image/search.jpg"/></a>
			</div>
		</div>
		<div class="mainframe">
			
			<div class="preview">
				<a href="<%=product.getPpicloc() %>" target="_blank"><img alt="商品图片" src="<%=product.getPpicloc() %>" /></a>
			</div>
			
			<div class="productinfo">
				
				<div class="productname">
					<%=product.getPname() %>
				</div>
				
				<div class="productprice">
					¥<%=product.getPprice() %>
				</div>
				
				<div class="productcontent">
					<%=product.getPcontent() %>
				</div>
				
				<div class="producttype">
				
					分类：<%=product.getPfirsttype() %>
					<%=product.getPsecondtype() %>
					
				</div>
				
				<div class="productnum">
					剩余库存：<%=product.getPnum() %>件
				</div>
				
				<div class="productpublisher">
				<%
					String publisherName = (String) request.getAttribute("publisherName");
				 %>
					发布者：<%=publisherName %><br />
					发布时间：<%=product.getPdate() %>
				</div>
				
				<div class="divide">
				</div>
				
				<div class="selectnum">
					<b>选择数量:&nbsp;&nbsp;&nbsp;&nbsp;</b>
					<button id="num_minus" onclick="selectNum_minus()">-</button>
					<b id="num">1</b>
					<button id="num_plus" onclick="selectNum_plus(<%=product.getPnum() %>)">+</button>
				</div>
				
				<%
					if(nowUser != null && nowUser.getUid() != product.getPpublisherid()){
				 %>
				 <b id="pid" style="display: none;"><%=product.getPid() %></b>
				<a href="" onclick="alert('添加购物车成功！');location='addtocart.do?num=' + document.getElementById('num').innerHTML + '&pid=' + document.getElementById('pid').innerHTML;" target="_blank">
					<div class="productconfirm">
						加入购物车
					</div>
				</a>
				<%
					}else{
				 %>
				 	<div class="displaybutton">
						加入购物车
					</div>
				 <%
				 	}
				  %>
			</div>
			
		</div>
		
  </body>
</html>
