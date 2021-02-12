<%@ page language="java" import="java.util.*,vip.dulaogou.beans.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>主页</title>

  </head>
  
  <body>
    <center>
    	<h1>你好</h1><br/>
    	<h1>ID：<%=((User)request.getAttribute("user")).getUid() %></h1>
    	<h1>用户名：<%=((User)request.getAttribute("user")).getUname() %></h1>
    	<h1>密码：<%=((User)request.getAttribute("user")).getUpassword() %></h1>
    	<h1>EMAIL：<%=((User)request.getAttribute("user")).getUemail() %></h1>
    	<h1>电话：<%=((User)request.getAttribute("user")).getUphone() %></h1>
    
    </center>
  </body>
</html>
