<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="SHIRO" uri="http://shiro.apache.org/tags" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    hello world!
    <h1>系统主页v1.0</h1>

    <H1><shiro:principal/></H1>

    <shiro:authenticated>
        认证之后展示的内容<br>
    </shiro:authenticated>
    <shiro:notAuthenticated>
        没有认证之后展示的内容<br>
    </shiro:notAuthenticated>

    <a href="${pageContext.request.contextPath}/user/logout">用户退出</a>
    <ul>
        <shiro:hasAnyRoles name="user,admin">
        <li><a href="">用户管理</a>
            <ul>
                <shiro:hasPermission name="user:add:*">
                <li><a href="${pageContext.request.contextPath}/order/save">添加</a></li>
                </shiro:hasPermission>
                <shiro:hasPermission name="user:delete:*">
                <li><a href="">删除</a></li>
                </shiro:hasPermission>
                <shiro:hasPermission name="user:update:*">
                <li><a href="">修改</a></li>
                </shiro:hasPermission>
                <shiro:hasPermission name="user:select:*">
                <li><a href="">查询</a></li>
                </shiro:hasPermission>
            </ul>
        </li>
        </shiro:hasAnyRoles>
        <shiro:hasRole name="admin">
        <li><a href="">商品管理</a></li>
        <li><a href="">订单管理</a></li>
        <li><a href="">物流管理</a></li>
        </shiro:hasRole>
    </ul>
</body>
</html>