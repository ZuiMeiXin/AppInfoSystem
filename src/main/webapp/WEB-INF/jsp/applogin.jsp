<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <base href="<%=basePath%>">
    <title>登录界面</title>

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

<body class="login">
<div>
    <a class="hiddenanchor" id="signup"></a>
    <a class="hiddenanchor" id="signin"></a>

    <div class="login_wrapper">
        <div class="animate form login_form">
            <section class="login_content">
                <form>
                    <h1>APP开发者平台</h1>
                    <div>
                        <input type="text" class="form-control" placeholder="Username" required=""/>
                    </div>
                    <div>
                        <input type="password" class="form-control" placeholder="Password" required=""/>
                    </div>
                    <div>
                        <button class="btn btn-default submit" href="#">登录</button>
                        <button class="btn btn-default " type="reset" href="#">重置</button>
                    </div>

                    <div class="clearfix"></div>

                    <div class="separator">
                        <div class="clearfix"></div>
                        <br/>

                        <div>
                            <p>©2016 All Rights Reserved. Gentelella Alela! is a Bootstrap 3 template. Privacy and
                                Terms</p>
                        </div>
                    </div>
                </form>
            </section>
        </div>

        <div id="register" class="animate form registration_form">
            <section class="login_content">
                <form>
                    <h1>Create Account</h1>
                    <div>
                        <input type="text" class="form-control" placeholder="Username" required=""/>
                    </div>
                    <div>
                        <input type="email" class="form-control" placeholder="Email" required=""/>
                    </div>
                    <div>
                        <input type="password" class="form-control" placeholder="Password" required=""/>
                    </div>
                    <div>
                        <a class="btn btn-default submit" href="index.html">Submit</a>
                    </div>

                    <div class="clearfix"></div>

                    <div class="separator">
                        <p class="change_link">Already a member ?
                            <a href="#signin" class="to_register"> Log in </a>
                        </p>

                        <div class="clearfix"></div>
                        <br/>

                        <div>
                            <h1><i class="fa fa-paw"></i> Gentelella Alela!</h1>
                            <p>©2016 All Rights Reserved. Gentelella Alela! is a Bootstrap 3 template. Privacy and
                                Terms</p>
                        </div>
                    </div>
                </form>
            </section>
        </div>
    </div>
</div>
</body>
</html>