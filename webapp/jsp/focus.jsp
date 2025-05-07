<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>病情论坛</title>
    <link rel="stylesheet" href="/MKCV/jsp/css/focus.css">
</head>
<body>
    <div class="header">
        <h1>病情论坛</h1> <!-- 页头标题 -->
    </div>
    <div class="nav">
        <div class="nav-links">
            <!-- 导航链接 -->
            <a href="/MKCV/jsp/startSite.jsp">网站首页</a>
            <a href="/MKCV/jsp/medWiki.jsp">对症下药</a>
            <a href="/MKCV/jsp/rating.jsp">医院评分</a>
            <a href="/MKCV/jsp/focus.jsp" style="background: gray;">病情论坛</a>
            <a href="/MKCV/jsp/TaosAI/firstgptweb.jsp">AI自查</a>
        </div>
        <div class="auth-links">
            <!-- 登录和注册链接 -->
            <a href="/MKCV/jsp/login.jsp">登录</a>
            <a href="/MKCV/jsp/register.jsp">注册</a>
        </div>
    </div>
    <div class="container">
        <!-- 侧边栏 -->
        <div class="sidebar">
            <h2>版块分类</h2>
            <ul>
                <li class="now"><a href="/MKCV/jsp/focus.jsp">老年人板块</a></li>
                <li><a href="/MKCV/jsp/forum.jsp">青少年板块</a></li>
                <li><a href="https://www.netdoktor.de/">更多内容</a></li>
            </ul>
        </div>
        <!-- 主内容区域 -->
        <div class="main-content">
            <h2>我的关注</h2>
            <div class="posts">
                <!-- 帖子列表 -->
                <a href="/MKCV/jsp/post1.jsp">
                    <div class="post" data-type="official">
                        <h3 class="post-title">晚饭吃太晚,血压找上门</h3>
                        <p class="post-meta">发帖时间：2024-11-15</p>
                        <p>你经常几点吃晚饭?每家人的晚餐时间，其实都不大一样...</p>
                        <div class="post-label">官方发帖</div>
                    </div>
                </a>
                <div class="post" data-type="user">
                    <h3 class="post-title">老龄化与健康</h3>
                    <p class="post-meta">发帖日期:2024.10.30</p>
                    <p>世界各地人们的寿命在延长。今天，大多数人的期望寿命已达六十岁以上...</p>
                    <div class="post-label">网友发帖</div>
                </div>
                <div class="post" data-type="official">
                    <h3 class="post-title">老年人必须知道的那些健康知识</h3>
                    <p class="post-meta">发帖日期:2024.10.7</p>
                    <p>老年人要正确认识衰老，树立积极的老龄观，通过科学、权威的渠道获取健康知识和技能...</p>
                    <div class="post-label">官方发帖</div>
                </div>
                <div class="post" data-type="user">
                    <h3 class="post-title">中国健康老龄化之路</h3>
                    <p class="post-meta">发帖日期:2024.9.17</p>
                    <p>纵观全球，人口老龄化进程比以往更快，这种人口结构转变将会对社会的方方面面产生影响...</p>
                    <div class="post-label">网友发帖</div>
                </div>
                <a href="/MKCV/jsp/post2.jsp">
                    <div class="post" data-type="user">
                            <h3 class="post-title">一文详解膝关节骨性关节炎的治疗</h3>
                            <p class="post-meta">发帖日期:2024.10.31</p>
                            <p>很多中老年人因膝关节疼痛到医院拍片后大都被告知“骨质增生”...</p>
                            <div class="post-label">网友发帖</div>
                    </div>
                </a>
                <div class="post" data-type="user">
                    <h3 class="post-title">完善老年健康服务体系</h3>
                    <p class="post-meta">发帖日期:2024.9.13</p>
                    <p>加快推进老年医学发展，健全老年医疗服务体系，打通“堵点”，消除“痛点”...</p>
                    <div class="post-label">网友发帖</div>
                </div>
                <div class="post" data-type="official">
                    <h3 class="post-title">中国的老龄化与健康</h3>
                    <p class="post-meta">发帖日期:2024.10.28</p>
                    <p>中国是世界上人口老龄化速度最快的国家之一。由于期望寿命增加和死亡率下降...</p>
                    <div class="post-label">官方发帖</div>
                </div>
                <div class="post" data-type="user">
                    <h3 class="post-title">老年人的精神卫生</h3>
                    <p class="post-meta">发帖日期:2024.10.20</p>
                    <p>世界人口正在快速老龄化。到2020年，全世界有十亿人口的年龄达到60岁及以上...</p>
                    <div class="post-label">网友发帖</div>
                </div>
                <!-- 可以在这里添加更多帖子 -->
            </div>
            <div class="pagination" id="pagination">
                <!-- 分页按钮将在这里动态添加 -->
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
    <script src="/MKCV/js/forum.js"></script>
</body>
</html>
