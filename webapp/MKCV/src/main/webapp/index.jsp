<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>医知便民网</title>
    <link rel="stylesheet" type="text/css" href="jsp/css/startSite.css">
</head>
<body>
    <!-- 顶部标题 -->
    <header>
        <h1>医知便民网</h1>
        <p>您24小时的私人健康助理</p>
    </header>

    <!-- 导航栏: 其目的是在当前文档或其他文档中提供导航链接(MDN) -->
    <!-- <nav>作为标注一个导航链接的区域 -->
    <nav>
        <a href="jsp/startSite.jsp">网站首页</a>
        <a href="jsp/medWiki.jsp">对症下药</a>
        <a href="jsp/rating.jsp">医院评分</a>
        <a href="jsp/focus.jsp">病情论坛</a>
        <a href="jsp/TaosAI/firstgptweb.jsp">AI自查</a>
    </nav>

    <!-- 搜索框 -->
    <div class="search-bar">
        <form action="/MKCV/MedSearch" method="get">
            <input type="search" placeholder="查询详细药物信息" name="key"/>
            <input type="submit" value="搜索">
        </form>
    </div>

    <!-- 推荐区域 -->
    <div class="recommendations">
        <h2>新帖速递</h2>
        <div class="recommendation-card">
            <a href="/MKCV/jsp/forum.jsp">生活中的健康</a>
            <p>了解日常饮食、运动和心理健康的重要性。</p>
        </div>
        <div class="recommendation-card">
            <a href="/MKCV/jsp/medWiki.jsp">如何选择药物</a>
            <p>如何正确选择和使用药品，避免不良反应。</p>
        </div>
        <div class="recommendation-card">
            <a href="/MKCV/jsp/medWiki.jsp">今日医学突破</a>
            <p>关注最新的医学研究成果，了解未来的健康趋势。</p>
        </div>
    </div>

    <!-- 内容区 -->
    <div class="container">
        <a href="/MKCV/jsp/medWiki.jsp" class="content">
            <img src="/MKCV/img/startSite-Med.jpg">
            <p>学习对症下药</p>
        </a>
        <a href="/MKCV/jsp/rating.jsp" class="content">
            <img src="/MKCV/img/startSite-snake.jpg">
            <p>选择最佳医院</p>
        </a>
        <a href="/MKCV/jsp/forum.jsp" class="content">
            <img src="/MKCV/img/startSite-club.jpg">
            <p>与他人分享你的经验</p>
        </a>
        <a href="/MKCV/jsp/TaosAI/firstgptweb.jsp" class="content">
            <img src="/MKCV/img/startSite-AI.jpg">
            <p>与我们的AI沟通</p>
        </a>
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
                <p><a href="jsp/privacy.jsp">隐私政策</a></p>
                <p><a href="#">使用条款</a></p>
                <p><a href="#">Cookie 政策</a></p>
                <!-- p标签占行,因此换行 -->
            </div>
        </div>
        <p>&copy; 所有的数据来源于Internet</p>
    </footer>

</body>
</html>