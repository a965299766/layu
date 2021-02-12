<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
  </head>
  
  <body>
    <%
    	String msg = (String) request.getParameter("msg");
    	if(msg != null && msg.equals("fail")){
     %>
     <script type="text/javascript">
     	alert("错误");
     </script>
     <%
     	
     	}
      %>
  </body>
</html>
