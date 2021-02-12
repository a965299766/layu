<%@ page language="java" import="java.util.*,vip.dulaogou.beans.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人中心</title>
    <link type="text/css" rel="stylesheet" href="css/personalcenterstyle.css" />
	<script type="text/javascript" src="js/personalcenter.js"></script>
    

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

			<div class="select">
				<div class="choice">
					<button onclick="changeToInfo()">个人信息</button>
				</div>
				<div class="choice">
					<button onclick="changeToRelease()">我发布的</button>
				</div>
				<div class="choice">
					<button onclick="changeToSold()">我卖出的</button>
				</div>
			</div>
				
			<div class="info">
				<div class="personalinfo" id="personalinfo">
					<form class="personalinfoform" action="updateuserinfo.do" method="POST" name="personalinfoform" onsubmit="return checkUpdate()">
					<%
						User nowUser = (User) request.getSession().getAttribute("nowUser");
					 %>
						<table style="border-spacing: 10px;">
							<tr>
								<td>UID：</td>
								<td><label><%=nowUser.getUid() %></label></td>
							</tr>
							<tr>
								<td>用户名：</td>
								<td><input type="text" value="<%=nowUser.getUname() %>" style="width: 300px;height: 30px; font-size: 20px;" name="uname"/></td>
							</tr>
							<tr>
								<td>密码：</td>
								<td>
									<input type="text" value="<%=nowUser.getUpassword() %>" style="width: 300px;height: 30px; font-size: 20px;" name="upassword"/>
								</td>
							</tr>
							<tr>
								<td>邮箱：</td>
								<td><input type="email" value="<%=nowUser.getUemail() %>" style="width: 300px;height: 30px; font-size: 20px;" name="uemail"/></td>
							</tr>
							<tr>
								<td>电话号码：</td>
								<td><input type="text" value="<%=nowUser.getUphone() %>" style="width: 300px;height: 30px; font-size: 20px;" name="uphone"/></td>
							</tr>
							<tr>
								<td>收货地址：</td>
								<%
								String uaddress = nowUser.getUaddress();
								if(uaddress == null || uaddress.equals("null")){
									uaddress = "";
								}
								 %>
								<td><input type="text" value="<%=uaddress %>" style="width: 500px;height: 30px; font-size: 20px;" name="uaddress"/></td>
							</tr>
							<tr>
								<td></td>
								<td>
									<input type="submit" class="confirm" value="确认修改"/>
								</td>
							</tr>
						</table>
					</form>
				</div>
				
				<div class="myrelease" id="myrelease">
					 <table border="1" cellspacing="0">
						<tr>
							<th>缩略图</th>
							<th>商品编号</th>
							<th>商品名称</th>
							<th>商品类型</th>
							<th>商品价格</th>
							<th>库存</th>
							<th>操作</th>
						</tr>
						<%
						List<Product> publishedProducts = (List<Product>) request.getAttribute("publishedProducts");
						if(publishedProducts.size() > 0){
							for(Product product : publishedProducts){
						%>
						<tr>
							<td>
								<a href="<%=product.getPpicloc() %>" target="_blank"><img alt="图片" src="<%=product.getPpicloc() %>" style="width: 70px;height: 50px;"/></a>
							</td>
							<td><%=product.getPid() %> </td>
							<td><%=product.getPname() %></td>
							<% 
								String productType = product.getPfirsttype() + "、" + product.getPsecondtype();
							%>
							<td><%=productType %></td>
							<td><%=product.getPprice() %></td>
							<td><%=product.getPnum() %></td>
							<td>
								<a href="toupdate.do?pid=<%=product.getPid() %>">修改</a>
								<a href="deleteproduct.do?pid=<%=product.getPid() %>" onclick="alert('删除成功！');">删除</a>
							</td>
						</tr>
						<%
							}
						}
						 %>
					
					</table>
				</div>
				
				<div class="mysold" id="mysold">
					<table border="1" cellspacing="0">
						<tr>
							<th>缩略图</th>
							<th>商品名称</th>
							<th>卖出数量</th>
							<th>总收益</th>
							<th>日期</th>
						</tr>
						<tr>
						<%
							List<Order> mysolds = (List<Order>) request.getAttribute("mysolds");
							if(mysolds != null && mysolds.size() > 0){
								for(Order order : mysolds){
						 %>
							<td>
								<img alt="图片" src="<%=order.getPpicloc() %>" style="width: 70px;height: 50px;"/>
							</td>
							<td><%=order.getPname() %></td>
							<td><%=order.getOnum() %></td>
							<td>¥<%=order.getPsum() %></td>
							<td><%=order.getOdate() %></td>
						</tr>
						<%		}
							}
						 %>
					</table>
				</div>
				
			</div>
			
			
			
		</div>

  </body>
</html>
