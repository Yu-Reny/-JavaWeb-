<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>医院评分</title>
    <link rel="stylesheet" href="/MKCV/jsp/css/rating.css">
</head>
<body>
    <div class="header">
        <h1>医院评分</h1>
    </div>
    <div class="nav">
        <div class="nav-links">
            <a href="/MKCV/jsp/startSite.jsp">网站首页</a>
            <a href="/MKCV/jsp/medWiki.jsp">对症下药</a>
            <a href="/MKCV/jsp/rating.jsp" style="background: grey;">医院评分</a>
            <a href="/MKCV/jsp/focus.jsp">病情论坛</a>
            <a href="/MKCV/jsp/TaosAI/firstgptweb.jsp">AI自查</a>
        </div>
        <div class="auth-links">
            <a href="/MKCV/jsp/login.jsp">登录</a>
            <a href="/MKCV/jsp/register.jsp">注册</a>
        </div>
    </div>
    <div class="container">
        <div class="sidebar">
            <h2>全市医院排行榜</h2>
            <ul>
                <li><a href="" data-hospital="A">1.医院A</a></li>
                <li><a href="" data-hospital="B">2.医院B</a></li>
                <li><a href="" data-hospital="C">3.医院C</a></li>
                <li><a href="" data-hospital="D">4.医院D</a></li>
            </ul>
        </div>
        <div class="main-content">
            <div id="hospital-info">
                <div class="hospital">
                    <h3 class="hospital-title">请选择医院</h3>
                    <p class="hospital-address">地址: 请选择医院以查看详细信息</p>
                    <div class="hospital-rating">
                        <label>⭐</label>
                        <label>⭐</label>
                        <label>⭐</label>
                        <label>⭐</label>
                        <label>⭐</label>
                    </div>
                    <p>详细信息将显示在这里。</p>
                </div>
            </div>
            <div id="comments-section">
                <!-- 评论区域 -->
            </div>
        </div>
    </div>
     <!-- 页脚 -->
     <footer>
        <div class="footer-container">
            <div class="footer-section">
                <h4>关于我们</h4>
                <p>"医知便民"网致力于为用户提供全面、可靠的医药信息与便捷的健康服务。<br>通过整合专业医疗知识和实用资源，我们为公众提供药物查询、健康指导等功能，帮助大家在日常生活中做出明智的健康决策。</p>
            </div>
            <div class="footer-section">
                <h4>联系我们</h4>
                <p>手机号: +86 15162537431</p>
                <p>邮箱: MedfuerAlle@outlook.com</p>
                <p>地址: 江苏省无锡市新吴区</p>
            </div>
            <div class="footer-section">
                <h4>社交媒体</h4>
                <a href="https://x.com/"><img src="/MKCV/img/icon_x.png"></a>
                <a href="https://m.weibo.cn/"><img src="/MKCV/img/icon_weibo.png"></a>
                <a href="https://www.linkedin.com/"><img src="/MKCV/img/icon_linkin.png"></a>
                <!-- a标签不自动换行 -->
            </div>
            <div class="footer-section">
                <h4>本站政策</h4>
                <p><a href="/MKCV/jsp/privacy.jsp">隐私政策</a></p>
                <p><a href="#">使用条款</a></p>
                <p><a href="#">Cookie 政策</a></p>
                <!-- p标签占行,因此换行 -->
            </div>
        </div>
        <p>&copy; 所有的数据来源于Internet</p>
    </footer>
    <script src="/MKCV/js/rating2.js"></script>
</body>
</html>
