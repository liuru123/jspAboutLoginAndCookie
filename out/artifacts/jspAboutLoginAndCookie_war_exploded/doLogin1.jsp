<%--
  Created by IntelliJ IDEA.
  User: liuru
  Date: 17-7-23
  Time: 下午8:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import ="java.net.*" language="java" %>
<html>
<head>
    <title>doLogin1.jsp</title>
</head>
<body>

<%
    request.setCharacterEncoding("utf-8");
    //使用cookie存储登录的用户的信息
    String[] cookies = request.getParameterValues("isUseCookie");
    if(cookies!=null && cookies.length>0){
        //获取表单中的用户名和密码
        String username = URLEncoder.encode(request.getParameter("username"),"utf-8");
        String password = URLEncoder.encode(request.getParameter("password"),"utf-8");

        //分别创建cookie
        Cookie userCookie = new Cookie("username",username);
        Cookie passCookie = new Cookie("password",password);

        //设置cookie的最大生命周期10天
        userCookie.setMaxAge(86400);
        passCookie.setMaxAge(86400);

        //添加cookie
        response.addCookie(userCookie);
        response.addCookie(passCookie);
    }else {
        Cookie[] cookie = request.getCookies();
        if(cookie!=null && cookie.length>0){
            for(Cookie c:cookie){
                if(c.getName().equals("username") || c.getName().equals("password")){
                        c.setMaxAge(0);
                        response.addCookie(c);
                }
            }
        }
    }

%>

<a href="cookie.jsp" target="_blank">查看用户的信息</a>
</body>
</html>
