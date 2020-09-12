<%--
  Created by IntelliJ IDEA.
  User: HiSoft
  Date: 2020/9/11
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <base href="<%=basePath%>">
    <title>后台管理系统</title>

    <!-- Bootstrap -->
    <link href="vendor/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendor/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="vendor/css/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="vendor/css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="vendor/css/custom.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-5 col-md-offset-5">
            <div>
                <h1>APP信息管理平台</h1>
            </div>
            <div>
                <a class="btn btn-default " href="${pageContext.request.contextPath }/login/backendlogin.html">后台管理系统 入口</a>
            </div>
            <div>
                <a class="btn btn-default " href="${pageContext.request.contextPath }/login/applogin.html">开发者平台 入口</a>
            </div>
        </div>
    </div>
</div>

</body>
</html>
