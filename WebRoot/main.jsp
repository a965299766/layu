<%@ page language="java" import="java.util.*,vip.dulaogou.beans.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>辣鱼——校园二手交易商城</title>
    <link rel="stylesheet" type="text/css" href="css/mainstyle.css"/>
	<script type="text/javascript" src="js/changebigpic.js">
	</script>
  </head>
  
  <body>
<!--   从数据库中拿随机商品数据 -->
  		<%
			String isFirstLoad = (String) request.getAttribute("isFirstLoad");
			isFirstLoad = isFirstLoad == null ? "true" : "false";
		 %>
		<form action="main.do" style="display: none;" method="POST" id="submitform">
			<input type="text" id="isfirstload" value="<%=isFirstLoad %>"/>
		</form>
		<script type="text/javascript">
			var isFirstLoad = document.getElementById("isfirstload").value;
			if(isFirstLoad == "true"){
				document.getElementById("submitform").submit();
			}
		</script>
  
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
					<a href=personalcenter.do>个人中心</a>
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
				<a href="main.do"><img alt="辣魚" src="image/logo.png"/></a>
			</div>
			<div class="search">
				<input type="text" name="search" placeholder="在此输入要搜索的商品信息" id="keywords"/>
				<a href="" onclick="location='searchproduct.do?keywords='+document.getElementById('keywords').value;" target="_blank"><img alt="search" src="image/search.jpg"/></a>
			</div>
		</div>
		
		<div class="mainframe">
			<div class="category">
				<ul>
					<li>
						<a href="searchproduct.do?keywords=数码3C" target="_blank">数码3C/</a>
						<a href="searchproduct.do?keywords=电脑" target="_blank">电脑/</a>
						<a href="searchproduct.do?keywords=手机" target="_blank">手机/</a>
						<a href="searchproduct.do?keywords=电子配件" target="_blank">电子配件/</a>
					</li>
					<li>
						<a href="searchproduct.do?keywords=服装饰品" target="_blank">服装饰品/</a>
						<a href="searchproduct.do?keywords=男士服装" target="_blank">男士服装/</a>
						<a href="searchproduct.do?keywords=女士服装" target="_blank">女士服装/</a>
						<a href="searchproduct.do?keywords=美妆首饰" target="_blank">美妆首饰/</a>
					</li>
					<li>
						<a href="searchproduct.do?keywords=生活百货" target="_blank">生活百货/</a>
						<a href="searchproduct.do?keywords=生活用品" target="_blank">生活用品/</a>
						<a href="searchproduct.do?keywords=学习文具" target="_blank">学习文具/</a>
					</li>
					<li>
						<a href="searchproduct.do?keywords=家用电器" target="_blank">家用电器/</a>
						<a href="searchproduct.do?keywords=小功率电器" target="_blank">小功率电器/</a>
						<a href="searchproduct.do?keywords=大功率电器" target="_blank">大功率电器/</a>
					</li>
					<li>
						<a href="searchproduct.do?keywords=运动户外" target="_blank">运动户外/</a>
						<a href="searchproduct.do?keywords=运动鞋服" target="_blank">运动鞋服/</a>
						<a href="searchproduct.do?keywords=运动器材" target="_blank">运动器材/</a>
					</li>
					<li>
						<a href="searchproduct.do?keywords=虚拟道具" target="_blank">虚拟道具/</a>
						<a href="searchproduct.do?keywords=游戏充值" target="_blank">游戏充值/</a>
						<a href="searchproduct.do?keywords=游戏道具" target="_blank">游戏道具/</a>
					</li>
				</ul>
			</div>
			<div class="bigshow">
				<a href="getoneproduct.do?pid=21" id="bigpichref" target="_blank"><img alt="图片" src="image/main/bigpic1.jpg" id="bigpic"/></a>
			</div>
			
			<div class="word">
				<h1>精选好货</h1>
			</div>
			
			<div class="selected">
				<%
					List<Product> randomProducts = (ArrayList<Product>) request.getAttribute("randomProducts");
					if(randomProducts != null && randomProducts.size() > 0){
						for(Product product : randomProducts){
							String hrefPath = "getoneproduct.do?pid=" + product.getPid();
				 %>
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
					}
				 %>
				
			</div>
			
		</div>
		
		<div class="bottominfo">
			<i>@Author dyw</i>
		</div>
		
		<script type="text/javascript">
			function search(){
				var keywords = document.getElementById("keywords").value;
				var hrefPath = "searchproduct.do";
				if(keywords == null || keywords == ""){
					window.location.href = hrefPath;
				}else{
					hrefPath = "searchproduct.do?keywords=" + keywords;
					window.location.href = hrefPath;
				}
			}
		</script>
  </body>
</html>
