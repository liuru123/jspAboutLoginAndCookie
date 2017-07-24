<%--
  Created by IntelliJ IDEA.
  User: liuru
  Date: 17-7-19
  Time: 上午9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import ="java.net.*" language="java" %>
<html>
<head>
    <title>登录界面</title>
</head>
<body>
<form name="loginForm" method = "post" action = "doLogin1.jsp">
    <table>
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
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="username" value="<%=username%>"></td>
        </tr>
        <tr>
            <td>密码：</td>
             <td><input type = "password"  name="password" value="<%=password%>"></td>

        </tr>
        <tr>
            <td>

            </td>
            <td><input type="checkbox" name="isUseCookie" checked="checked">十天之内记住登录状态</td>
        </tr>
        <tr>
            <td></td>
            <td><input type = "submit" name="submit" value="确定"></td>
        </tr>
    </table>
</form>
</body>
</html>
