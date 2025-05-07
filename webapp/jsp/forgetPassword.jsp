<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>修改密码</title>
    <link rel="stylesheet" type="text/css" href="/MKCV/jsp/css/forgetPassword.css">
</head>
<body>
    <div class="main_body">
        <div class="forget_body">
            <div class="back_box">
                <a href="login.jsp"><img src="/MKCV/img/icon_backToStartSite.png">返回登录</a>
            </div>
            <form action="/MKCV/ResetPasswordServlet" method="post" class="forget_form">
                <h2>密码重置</h2>
                <div class="input_box">
                    <span>用户名: </span>
                    <input type="text" class="username" name="username">
                </div>
                <div class="input_box">
                    <span>新密码: </span>
                    <input type="password" class="repassword" name="password">
                </div>
                <div class="input_box">
                    <span>确认密码: </span>
                    <input type="password" class="repassword" name="repassword">
                </div>
                <div class="btn_box_father">
                    <div class="btn_box_son">
                        <a href="#"><input type="submit" class="reset" value="重置" name="reset"></a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>