<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <base href="<%=basePath%>"/>
    <title>App维护</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/statics/vendors/bootstrap/dist/css/bootstrap.min.css"
          rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${pageContext.request.contextPath}/statics/vendors/font-awesome/css/font-awesome.min.css"
          rel="stylesheet">
    <!-- NProgress -->
    <link href="${pageContext.request.contextPath}/statics/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="${pageContext.request.contextPath}/statics/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="${pageContext.request.contextPath}/statics/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statics/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statics/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statics/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statics/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css"
          rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="${pageContext.request.contextPath}/statics/build/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>APP BMS</span></a>
                </div>

                <div class="clearfix"></div>

                <!-- menu profile quick info -->
                <div class="profile">
                    <div class="profile_pic">
                        <img src="statics/images/img.jpg" alt="..." class="img-circle profile_img">
                    </div>
                    <div class="profile_info">
                        <span>Welcome,</span>
                        <h2>${User.devName}</h2>
                    </div>
                </div>
                <!-- /menu profile quick info -->

                <br/>

                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <h3>${devUser.devName}</h3>
                        <ul class="nav side-menu">
                            <li><a><i class="fa fa-home"></i> App账户管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="index.html">Dashboard</a></li>
                                    <li><a href="index2.html">Dashboard2</a></li>
                                    <li><a href="index3.html">Dashboard3</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-edit"></i> App应用管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="${pageContext.request.contextPath}/dev/toapplist.html">APP维护</></li>
                                </ul>
                            </li>
                        </ul>
                    </div>

                </div>
                <!-- /sidebar menu -->

                <!-- /menu footer buttons -->
                <div class="sidebar-footer hidden-small">
                    <a data-toggle="tooltip" data-placement="top" title="Settings">
                        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                        <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Lock">
                        <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Logout">
                        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                    </a>
                </div>
                <!-- /menu footer buttons -->
            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <nav>
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="">

                        <li><a href="${pageContext.request.contextPath}/login/loginout.html"><i
                                class="fa fa-sign-out pull-right"></i> Log Out</a></li>

                        </li>

                        <li role="presentation" class="dropdown">
                            <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown"
                               aria-expanded="false">
                                <i class="fa fa-envelope-o"></i>
                                <span class="badge bg-green">6</span>
                            </a>
                            <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                                <li>
                                    <a>
                                        <span class="image"><img src="statics/images/img.jpg"
                                                                 alt="Profile Image"/></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img src="statics/images/img.jpg"
                                                                 alt="Profile Image"/></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img src="statics/images/img.jpg"
                                                                 alt="Profile Image"/></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img src="statics/images/img.jpg"
                                                                 alt="Profile Image"/></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <div class="text-center">
                                        <a>
                                            <strong>See All Alerts</strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="row">
                <div class="x_content">
                    <form method="post" class="form-horizontal form-label-left"
                          action="${pageContext.request.contextPath}/dev/toapplist.html">

                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="softwareName">软件名称
                                <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input id="softwareName" class="form-control col-md-7 col-xs-12"
                                       name="softwareName" placeholder="软件名称"
                                       type="text">
                            </div>
                        </div>

                        <div class="item form-group">
                            <label for="status" class="control-label col-md-3">App状态</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <select type="" id="status" name="status"
                                        class="form-control col-md-7 col-xs-12"></select>
                            </div>
                        </div>

                        <div class="item form-group">
                            <label for="flatformId" class="control-label col-md-3">所属平台</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <select type="" id="flatformId" name="flatformId"
                                        class="form-control col-md-7 col-xs-12"></select>
                            </div>
                        </div>

                        <div class="item form-group">
                            <label for="categoryLevel1"
                                   class="control-label col-md-3 col-sm-3 col-xs-12">一级分类</label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <select id="categoryLevel1" name="categoryLevel1"
                                        class="form-control col-md-7 col-xs-12"></select>
                            </div>
                        </div>

                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="categoryLevel2">二级分类
                                <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <select type="tel" id="categoryLevel2" name="categoryLevel2"
                                        class="form-control col-md-7 col-xs-12"></select>
                            </div>
                        </div>

                        <div class="item form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="categoryLevel3">三级分类
                                <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <select id="categoryLevel3" name="categoryLevel3"
                                        class="form-control col-md-7 col-xs-12"></select>
                            </div>
                        </div>

                        <div class="ln_solid"></div>
                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <button type="submit" class="btn btn-primary">查询</button>
                            </div>
                        </div>

                    </form>
                </div>

                <div class="clearfix"></div>

                <div class="row">

                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <a class="btn btn-info " href="${pageContext.request.contextPath}/dev/toaddapp.html">新增App基础信息</a>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <p class="text-muted font-12 m-b-30"/>
                                <table id="datatable" class="table table-striped table-bordered">
                                    <thead>
                                    <tr>
                                        <th class="col-md-1">软件名称</th>
                                        <th class="col-md-2">APK名称</th>
                                        <th class="col-md-1">软件大小（单位：M）</th>
                                        <th class="col-md-1">所属平台</th>
                                        <th class="col-md-2">所属分类（一级分类、二级分类、三级分类）</th>
                                        <th class="col-md-1">状态</th>
                                        <th class="col-md-1">下载次数</th>
                                        <th class="col-md-1">最新版本号</th>
                                        <th class="col-md-2">操作</th>
                                    </tr>
                                    </thead>


                                    <tbody>
                                    <c:forEach var="app" items="${applist}">
                                        <tr>
                                            <td>${app.softwareName}</td>
                                            <td>${app.APKName}</td>
                                            <td>${app.softwareSize}</td>
                                            <td>${app.flatformName}</td>
                                            <td>${app.categoryName1}-->${app.categoryName2}-->${app.categoryName3}</td>
                                            <c:choose>
                                                <c:when test="${app.status == 4}">
                                                    <td
                                                            style="background-color: #00cc33;color: whitesmoke;">${app.statusName}</td>
                                                </c:when>
                                                <c:when test="${app.status == 5}">
                                                    <td
                                                            style="background-color: #cc0033;color: white;">${app.statusName}</td>
                                                </c:when>
                                                <c:otherwise>
                                                    <td>${app.statusName}</td>
                                                </c:otherwise>
                                            </c:choose>
                                            <td>${app.downloads}</td>
                                            <td> ${app.versionNo}</td>
                                            <td>
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-danger">点击操作</button>
                                                    <button type="button" class="btn btn-danger dropdown-toggle"
                                                            data-toggle="dropdown" aria-expanded="false">
                                                        <span class="caret"></span>
                                                        <span class="sr-only">Toggle Dropdown</span>
                                                    </button>
                                                    <ul class="dropdown-menu" role="menu">
                                                        <c:if test="${app.status==4}">
                                                            <li>
                                                                <a class="saleSwichClose" saleswitch="close"
                                                                   appinfoid="${app.id}" status="${app.status}"
                                                                   appsoftwarename="${app.softwareName}" powder=""
                                                                   toy=""
                                                                   data-toggle="tooltip" data-placement="top" title=""
                                                                   data-original-title="您可以点击下架来停止发布您的APP，市场将不提供APP的下载">下架</a>
                                                            </li>
                                                        </c:if>
                                                        <c:if test="${app.status==5}">
                                                            <li>
                                                                <a class="saleSwichClose" saleswitch="close"
                                                                   appinfoid="${app.id}" status="${app.status}"
                                                                   appsoftwarename="${app.softwareName}" powder=""
                                                                   toy=""
                                                                   data-toggle="tooltip" data-placement="top" title=""
                                                                   data-original-title="您可以点击下架来停止发布您的APP，市场将不提供APP的下载">上架</a>
                                                            </li>
                                                        </c:if>

                                                        <li><a class="addVersion" appinfoid="${app.id}"
                                                               data-toggle="tooltip"
                                                               data-placement="top" title=""
                                                               data-original-title="新增APP版本信息">新增版本</a>
                                                        </li>
                                                        <li><a class="modifyVersion" appinfoid="${app.id}"
                                                               versionid="${app.versionId}"
                                                               status="4" statusname="已上架" data-toggle="tooltip"
                                                               data-placement="top" title=""
                                                               data-original-title="修改APP最新版本信息">修改版本</a>
                                                        </li>
                                                        <li><a class="modifyAppInfo" appinfoid="${app.id}" status="4"
                                                               statusname="已上架" data-toggle="tooltip"
                                                               data-placement="top" title=""
                                                               href="${pageContext.request.contextPath}/dev/toupdate.html?id=${app.id}"
                                                               data-original-title="修改APP基础信息">修改</a></li>
                                                        <li><a class="viewApp" appinfoid="${app.id}"
                                                               data-toggle="tooltip"
                                                               data-placement="top" title=""
                                                               data-original-title="查看APP基础信息以及全部版本信息">查看</a></li>
                                                        <li><a class="deleteApp" appinfoid="${app.id}"
                                                               appsoftwarename="${app.softwareName}" powder="" toy=""
                                                               data-toggle="tooltip" data-placement="top" title=""
                                                               data-original-title="删除APP基础信息以及全部版本信息">删除</a></li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="clearfix hidden"></div>
                <%--显示view--%>
                <div class="row appView ">
                    <div class="col-sm-12 col-md-12 col-xs-12">
                        <table class="table table-condensed">
                            <tr>
                                <td class="col-sm-6 col-md-6 col-xs-6">软件名称</td>
                                <td class="col-sm-6 col-md-6 col-xs-6" id="softwareNameView"></td>
                            </tr>
                            <tr>
                                <td class="col-sm-6 col-md-6 col-xs-6">APKName</td>
                                <td class="col-sm-6 col-md-6 col-xs-6" id="APKName"></td>
                            </tr>
                            <tr>
                                <td class="col-sm-6 col-md-6 col-xs-6">支持ROM</td>
                                <td class="col-sm-6 col-md-6 col-xs-6" id="supportROM"></td>
                            </tr>
                            <tr>
                                <td class="col-sm-6 col-md-6 col-xs-6">支持语言</td>
                                <td class="col-sm-6 col-md-6 col-xs-6" id="interfaceLanguage"></td>
                            </tr>
                            <tr>
                                <td class="col-sm-6 col-md-6 col-xs-6">软件大小</td>
                                <td class="col-sm-6 col-md-6 col-xs-6" id="softwareSize"></td>
                            </tr>
                            <tr>
                                <td class="col-sm-6 col-md-6 col-xs-6">软件信息</td>
                                <td class="col-sm-6 col-md-6 col-xs-6" id="appInfoView"></td>
                            </tr>
                            <tr>
                                <td class="col-sm-6 col-md-6 col-xs-6">下载量</td>
                                <td class="col-sm-6 col-md-6 col-xs-6" id="downloads"></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <%--显示新增版本号--%>
                <div class="versionForm">
                    <div class="page-title">
                        <div class="title_left">
                            <h3>新增版本信息</h3>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_content">
                                    <form class="form-horizontal form-label-left" method="post"
                                          action="${pageContext.request.contextPath}/dev/addversionsave.html"
                                          novalidate>
                                        <input type="hidden" id="appId" name="appId" value="">
                                        <input type="hidden" name="createBy" value="${User.id}">
                                        <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="versionNo">版本号
                                                <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="versionNo" class="form-control col-md-7 col-xs-12"
                                                       name="versionNo" required="required"
                                                       type="text">
                                            </div>
                                        </div>
                                        <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="versionSize">版本大小
                                                <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="versionSize" name="versionSize" required="required"
                                                       class="form-control col-md-7 col-xs-12">
                                            </div>
                                        </div>
                                        <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                                   for="publishStatus">发布状态 <span
                                                    class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="hidden" name="publishStatus" value="3"/>
                                                <p id="publishStatus" class="form-control col-md-7 col-xs-12"> 预发布</p>
                                            </div>
                                        </div>
                                        <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="versionInfo">版本介绍
                                                <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                            <textarea id="versionInfo" required="required" name="versionInfo"
                                                      class="form-control col-md-7 col-xs-12"></textarea>
                                            </div>
                                        </div>
                                        <div class="item form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="apkLocPath">apk文件
                                                <span class="required">*</span>
                                            </label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input type="file" id="apkLocPath" required="required"
                                                       name="apkLocPath"
                                                       class="form-control col-md-7 col-xs-12"/>
                                            </div>
                                        </div>
                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-6 col-md-offset-3">
                                                <button id="send" type="submit" class="btn btn-success">保存</button>
                                                <a class="btn btn-primary"
                                                   href="${pageContext.request.contextPath}/dev/toapplist.html">返回</a>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
            <div class="pull-right">
                Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
            </div>
            <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
    </div>
</div>

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/statics/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="${pageContext.request.contextPath}/statics/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath}/statics/vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="${pageContext.request.contextPath}/statics/vendors/nprogress/nprogress.js"></script>
<!-- iCheck -->
<script src="${pageContext.request.contextPath}/statics/vendors/iCheck/icheck.min.js"></script>
<!-- Datatables -->
<script src="${pageContext.request.contextPath}/statics/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/statics/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/vendors/jszip/dist/jszip.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/vendors/pdfmake/build/pdfmake.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/vendors/pdfmake/build/vfs_fonts.js"></script>

<!-- Custom Theme Scripts -->
<script src="${pageContext.request.contextPath}/statics/build/js/custom.min.js"></script>

<!-- Datatables -->
<script>
    $(document).ready(function () {
        var handleDataTableButtons = function () {
            if ($("#datatable-buttons").length) {
                $("#datatable-buttons").DataTable({
                    dom: "Bfrtip",
                    buttons: [
                        {
                            extend: "copy",
                            className: "btn-sm"
                        },
                        {
                            extend: "csv",
                            className: "btn-sm"
                        },
                        {
                            extend: "excel",
                            className: "btn-sm"
                        },
                        {
                            extend: "pdfHtml5",
                            className: "btn-sm"
                        },
                        {
                            extend: "print",
                            className: "btn-sm"
                        },
                    ],
                    responsive: true
                });
            }
        };

        TableManageButtons = function () {
            "use strict";
            return {
                init: function () {
                    handleDataTableButtons();
                }
            };
        }();

        $('#datatable').dataTable();

        $('#datatable-keytable').DataTable({
            keys: true
        });

        $('#datatable-responsive').DataTable();

        $('#datatable-scroller').DataTable({
            ajax: "js/datatables/json/scroller-demo.json",
            deferRender: true,
            scrollY: 380,
            scrollCollapse: true,
            scroller: true
        });

        $('#datatable-fixed-header').DataTable({
            fixedHeader: true
        });

        var $datatable = $('#datatable-checkbox');

        $datatable.dataTable({
            'order': [[1, 'asc']],
            'columnDefs': [
                {orderable: false, targets: [0]}
            ]
        });
        $datatable.on('draw.dt', function () {
            $('input').iCheck({
                checkboxClass: 'icheckbox_flat-green'
            });
        });

        TableManageButtons.init();
    });

    /*ajax实现分类的选择显示*/

    $(function () {
        $(".appView").hide();
        $(".versionForm").hide();
    })


    $(function () {
        $.ajax({
            url: "${pageContext.request.contextPath}/dev/getCategory",
            type: "post",
            dataType: "json",
            success: function (data) {
                var categoryLevel1optionsoptions = "<option value=\"0\" >请选择</option>";
                for (let i = 0; i < data.length; i++) {
                    categoryLevel1optionsoptions += "<option value=\"" + data[i].id + " \">" + data[i].categoryName + "</option>";
                }
                $("#categoryLevel1").html(categoryLevel1optionsoptions);
            }
        });

        $.ajax({
            url: "${pageContext.request.contextPath}/dev/getStatus",
            type: "post",
            dataType: "json",
            success: function (data) {
                let options = "<option value=\"0\">请选择</option>";
                for (let i = 0; i < data.length; i++) {
                    options += "<option value=\"" + data[i].valueId + "\">" + data[i].valueName + "</option>";
                }
                $("#status").html(options);
            }
        });


        $.ajax({
            url: "${pageContext.request.contextPath}/dev/getFlatForm",
            type: "post",
            dataType: "json",
            success: function (data) {
                let options = "<option value=\"0\">请选择</option>";
                for (let i = 0; i < data.length; i++) {
                    options += "<option value=\"" + data[i].valueId + "\">" + data[i].valueName + "</option>";
                }
                $("#flatformId").html(options);
            }
        });


    })
    $("#categoryLevel1").blur(function () {
        let lid = $("#categoryLevel1").val();
        $.ajax({
            url: "${pageContext.request.contextPath}/dev/getCategoryLevel2?id=" + lid,
            type: "post",
            dataType: "json",
            success: function (data) {
                let options = "<option value=\"0\">请选择</option>";
                for (let i = 0; i < data.length; i++) {
                    options += "<option value=\"" + data[i].id + " \">" + data[i].categoryName + "</option>";
                }
                $("#categoryLevel2").html(options);
            }
        });
    })
    $("#categoryLevel2").blur(function () {
        let lid = $("#categoryLevel2").val();
        $.ajax({
            url: "${pageContext.request.contextPath}/dev/getCategoryLevel2?id=" + lid,
            type: "post",
            dataType: "json",
            success: function (data) {
                let options = "<option value=\"0\">请选择</option>";
                for (let i = 0; i < data.length; i++) {
                    options += "<option value=\"" + data[i].id + " \">" + data[i].categoryName + "</option>";
                }
                $("#categoryLevel3").html(options);
            }
        });
    })


    $(".deleteApp").click(function () {
        let b = confirm("确定要删除吗？");
        if (b) {
            let id = $(this).attr('appinfoid');
            let obj = $(this);
            $.ajax({
                url: "${pageContext.request.contextPath}/dev/deleteapp?id=" + id,
                type: "post",
                dataType: "json",
                success: function (data) {
                    alert("删除成功");
                    obj.parents("tr").remove();
                },
                errors: function (data) {
                    if (data == null) {
                        alert("删除失败");
                    }
                }
            })
        }
    })

    /*下架操作*/
    let click = $(".saleSwichClose").click(function () {
        let softwareName = $(this).attr("appsoftwarename");
        let actionName = $(this).html();
        let b = confirm("确定要" + actionName + softwareName + "？");
        let id = $(this).attr("appinfoid");
        let status = $(this).attr("status");
        let obj = $(this);
        if (b) {
            $.ajax({
                url: "${pageContext.request.contextPath}/dev/changestatus",
                data: {id: id, status: status},
                type: "post",
                dataType: "json",
                success: function (data) {
                    debugger;
                    if (data) {
                        alert(actionName + "成功");
                        if (obj.parents("td").siblings("#statusName").html() == "已上架") {
                            obj.parents("td").siblings("#statusName").html("已下架");
                            obj.parents("td").siblings("#statusName").html("已下架").css("background", "#cc0033");
                            obj.html("上架")
                            return;
                        } else {
                            obj.parents("td").siblings("#statusName").html("已上架");
                            obj.parents("td").siblings("#statusName").html("已上架").css("background", "#00cc33");
                            obj.html("下架")
                            return;
                        }
                    }
                    alert("下架失败");
                },
                errors: function (data) {
                    alert(data);
                }
            })
        }
    });


    $(".viewApp").click(function () {
        let id = $(this).attr("appinfoid");
        $(".appView").show();
        $.ajax({
            url: "${pageContext.request.contextPath}/dev/viewapp?id=" + id,
            type: "post",
            dataType: "json",
            success: function (data) {
                $("#softwareNameView").html(data.softwareName);
                $("#softwareSize").html(data.softwareSize);
                $("#APKName").html(data.aPKName);
                $("#supportROM").html(data.supportROM);
                $("#interfaceLanguage").html(data.interfaceLanguage);
                $("#appInfoView").html(data.appInfo);
                $("#downloads").html(data.downloads);
            }
        })
    })

    $(".addVersion").click(function () {
        $(".versionForm").show();
       let appId= $(this).attr("appinfoid");
        $("#appId").val(appId);
    })

</script>
<!-- /Datatables -->
</body>
</html>
