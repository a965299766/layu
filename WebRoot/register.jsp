<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>辣鱼——注册</title>
	<link rel="stylesheet" type="text/css" href="css/registerstyles.css">
  </head>
  
  <body>
    <div id="bigBox">
    	<h1>注 册</h1>
    	<form action="register.do" method="post" name="registerform" onsubmit="return RegisterCheck();">
	    	<div class="inputBox">
	    		<div class="inputText">
	    			<i class="icon"><img alt="usericon" src="image/icons/usericon.png"/></i>
	    			<input type="text" placeholder="用户名" name="uname" maxlength="20"/>
	    			<i class="icon"></i>
	    		</div>
	    		
	    		<div class="inputText">
	    			<i class="icon"><img alt="passwordicon" src="image/icons/passwordicon.png"/></i>
	    			<input type="password" placeholder="密码" name="upassword" maxlength="18"/>
	    		</div>
	    		
	    		<div class="inputText">
	    			<i class="icon"><img alt="passwordicon" src="image/icons/passwordicon.png"/></i>
	    			<input type="password" placeholder="确认密码" name="uensurepassword" maxlength="18"/>
	    		</div>
	    		
	    		<div class="inputText">
	    			<i class="icon"><img alt="passwordicon" src="image/icons/emailicon.png"/></i>
	    			<input type="email" placeholder="邮箱" name="uemail" maxlength="20"/>
	    		</div>
	    		
	    		<div class="inputText">
	    			<i class="icon"><img alt="passwordicon" src="image/icons/phoneicon.png"/></i>
	    			<input type="tel" placeholder="手机号" name="uphone" maxlength="11"/>
	    		</div>
	    		<input type="submit" class="inputButton" value="注 册"/>&emsp;&emsp;&emsp;&emsp;
	    		<a href="login.jsp"><input type="button" value="返回登录页" class="inputButton"/></a>
	    	</div>
	    	
    	</form>
    </div>
    
<!--   以下代码用以判断注册用户名是否已注册 --> 
  <% 
	String registerMsg = (String) request.getAttribute("registerMsg"); 
	if(registerMsg == "fail"){ 
 		request.setAttribute("registerMsg", ""); 
   %> 
    <script type="text/javascript"> 
 		alert("用户名已被注册！"); 
	</script> 
	<% 
	}
	%>
<!--     end --> 
    
    <script src="js/check.js"></script>
  </body>
</html>
