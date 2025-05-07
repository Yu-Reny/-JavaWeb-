<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>注册账号</title>
<link rel="stylesheet" type="text/css" href="/MKCV/jsp/css/register.css">
</head>
<body>
    <div class="main_body">
        <div class="register_body">
            <div class="back_box">
                <a href="/MKCV/jsp/forum.jsp"><img src="/MKCV/img/icon_backToStartSite.png">返回病情论坛</a>
            </div>
            <form action="/MKCV/RegisterServlet" method="post" class="register_form">
                <h2>注册</h2>
                <div class="input_box">
                    <span>用户名: </span>
                    <input type="text" class="username" name="username">
                </div>
                <div class="input_box">
                    <span>邮箱: </span>
                    <input type="email" class="email" name="email">
                </div>
                <div class="input_box">
                    <span>电话: </span>
                    <input type="tel" class="number"  placeholder="+86" maxlength="11" required name="number">
                </div>
                <div class="input_box">
                    <span>密码: </span>
                    <input type="password" class="password" name="password">
                </div>
                <div class="input_box">
                    <span>确认密码: </span>
                    <input type="password" class="repassword" name="repassword">
                </div>
                <div class="btn_box_father">
                    <div class="have_account">
                        <a href="login.jsp">已有账号?前往登录!</a>
                    </div>
                    <div class="btn_box_son">
                        <a href="#"><input type="submit" class="regis" value="注册" name="register"></a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>