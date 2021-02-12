<%@ page language="java" import="java.util.*,vip.dulaogou.beans.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>发布商品</title>
    <link rel="stylesheet" type="text/css" href="css/publishstyle.css" />
	<script type="text/javascript" src="js/publish.js"></script>
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
				发布商品
			</div>
			<div class="productform">
				
				<form action="uploadproductinfo.do" method="POST" onsubmit="return check()" enctype="multipart/form-data">
					
					<table style="border-spacing: 10px;">
						<tr>
							<td>商品名称：</td>
							<td><input type="text" name="pname" style="width: 500px;height: 30px; font-size: 20px;" maxlength="20" id="pname"/></td>
						</tr>
						<tr>
							<td>商品类别：</td>
							<td>
								<select style="width: 150px;height: 30px; font-size: 20px;" id="firstselect" onchange="changeSelect()" name="pfirsttype">
									<option value="">---请选择---</option>
									<option value="数码3C">数码3C</option>
									<option value="服装饰品">服装饰品</option>
									<option value="生活百货">生活百货</option>
									<option value="家用电器">家用电器</option>
									<option value="运动户外">运动户外</option>
									<option value="虚拟道具">虚拟道具</option>
									<option value="其他">其他</option>
								</select>
								<select style="width: 150px;height: 30px; font-size: 20px;" id="secondselect"  name="psecondtype">
									<option value="">---请选择---</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>单价：</td>
							<td>
								<input type="number" style="width: 150px;height: 30px; font-size: 20px;" value="1" name="pprice" min="1" max="99999999" id="pprice" step="0.01"/>
								¥
							</td>
						</tr>
						<tr>
							<td>库存：</td>
							<td>
								<input type="number" style="width: 150px;height: 30px; font-size: 20px;" value="1" name="pnum" min="1" max="99999" id="pnum"/>
							</td>
						</tr>
						<tr>
							<td>商品描述：</td>
							<td>
								<textarea style="width: 500px; height: 150px; resize: none; font-size: 18px;" maxlength="150" name="pcontent" id="pcontent"></textarea>
							</td>
						</tr>
						<tr>
							<td>上传图片：</td>
							<td>
								<input type="file" id="img_file" onchange="showImg()" name="ppic"/>
							</td>
						</tr>
						<tr>
							<td>
							</td>
							<td>
								<img src="image/publish/upload.jpg" alt="" id="img_id" style="width: 300px; height: 300px;">
							</td>
						</tr>
						<tr>
							<td>
								<center><input type="submit" value="发布" class="submit"/></center>
							</td>
						</tr>
					</table>
				</form>
				
			</div>
			
		</div>
    
  </body>
</html>
