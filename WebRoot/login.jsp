<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>辣鱼——登录</title>
	<link rel="stylesheet" type="text/css" href="css/loginstyles.css">
  </head>
  
  <body>
    <div id="bigBox">
    	<h1>登录</h1>
    	<form action="login.do" method="post" name="loginform" onsubmit="return LoginCheck();">
    	
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
	    		<input type="submit" class="inputButton" value="登 录"/>&emsp;&emsp;&emsp;&emsp;
	    		<a href="register.jsp"><input type="button" class="inputButton" value="注 册"/></a>
	    	</div>
	    	
    	</form>
    </div>
    
<!--     以下代码用以显示注册成功信息 -->
    <%
    	String registerMsg = (String) request.getAttribute("registerMsg");
    	if(registerMsg == "success"){
    	request.setAttribute("registerMsg", "");
     %>
    <script type="text/javascript">
    	alert("恭喜你，注册成功！");
    </script>
    <%
    	}
     %>
<!--      end -->

<!--   以下代码用以显示登陆失败信息 --> 
  <% 
	String loginMsg = (String) request.getAttribute("loginMsg"); 
	if(loginMsg == "fail"){ 
 		request.setAttribute("loginMsg", ""); 
   %> 
    <script type="text/javascript"> 
 		alert("登陆失败，请检查您的用户名和密码输入是否正确！"); 
	</script> 
	<% 
	}
	%>
<!--     end --> 
     
    <script src="js/check.js"></script>
  </body>
</html>
