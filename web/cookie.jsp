<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: liuru
  Date: 17-7-23
  Time: 下午9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>cookie对象</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
   Cookie[] cookie = request.getCookies();
   String username="";
   String password = "";
   if(cookie!=null && cookie.length>0){
       for(Cookie c:cookie){
           if(c.getName().equals("username")){
               username = URLDecoder.decode(c.getValue(),"utf-8");
           }
           if(c.getName().equals("password")){
               password = URLDecoder.decode(c.getValue(),"utf-8");
           }
       }
   }
%>
用户名：<%=username%>
密码：<%=password%>
</body>
</html>
