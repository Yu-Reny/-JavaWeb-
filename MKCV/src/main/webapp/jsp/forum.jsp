<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>病情论坛</title>
    <link rel="stylesheet" href="/MKCV/jsp/css/forum.css">
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
                <li><a href="/MKCV/jsp/focus.jsp">老年人板块</a></li>
                <li class="now"><a href="/MKCV/jsp/forum.jsp">青少年板块</a></li>
                <li><a href="https://www.netdoktor.de/">更多内容</a></li>
            </ul>
        </div>
        <!-- 主内容区域 -->
        <div class="main-content">
            <h2>最新热帖</h2>
            <div class="posts">
                <!-- 帖子列表 -->
                <a href="/MKCV/jsp/post3.jsp">
                    <div class="post" data-type="official">
                        <h3 class="post-title">官方《儿童零食指南》来了！可别再给孩子瞎吃了！</h3>
                        <p class="post-meta">发帖时间：2024-11-13</p>
                        <p>儿童吃零食也有权威指南...</p>
                        <div class="post-label">官方发帖</div>
                    </div>
                </a>
                <div class="post" data-type="user">
                    <h3 class="post-title">12~15岁儿童零食怎么吃？——《中国儿童青少年零食指南》</h3>
                    <p class="post-meta">发帖时间：2024-10-12</p>
                    <p> 儿童生长发育的关键阶段，也是培养良好饮食行为的重要时期...</p>
                    <div class="post-label">网友发帖</div>
                </div>
                <div class="post" data-type="official">
                    <h3 class="post-title">中国儿童青少年饮食健康情况研究报告</h3>
                    <p class="post-meta">发帖日期:2024.10.30</p>
                    <p>儿童青少年饮食健康行为直接影响着儿童青少年的健康状况...</p>
                    <div class="post-label">官方发帖</div>
                </div>
                <div class="post" data-type="user">
                    <h3 class="post-title">青少年（14~17岁）一日食谱推荐</h3>
                    <p class="post-meta">发帖日期:2024.9.30</p>
                    <p>据中国居民营养与健康状况监测数据显示，我国各地区6~17岁的群体中，超重率为9.6%，肥胖率为6.4%...</p>
                    <div class="post-label">网友发帖</div>
                </div>
                <a href="/MKCV/jsp/post4.jsp">
                    <div class="post" data-type="user">
                        <h3 class="post-title">这些常见零食孩子真的不能吃！很多家长每天都在犯错</h3>
                        <p class="post-meta">发帖时间：2024-11-12</p>
                        <p>6月15日，由中国副食流通协会等联合发布的《儿童零食通用要求》团体标准正式实施...</p>
                        <div class="post-label">网友发帖</div>
                    </div>
                </a>
                <div class="post" data-type="official">
                    <h3 class="post-title">国家卫生健康委：儿童青少年肥胖食养指南</h3>
                    <p class="post-meta">发帖日期2024.9.27</p>
                    <p>肥胖是一种慢性代谢性疾病。近些年来，我国儿童青少年肥胖率快速上升...</p>
                    <div class="post-label">官方发帖</div>
                </div>
                <div class="post" data-type="user">
                    <h3 class="post-title">营养不均、超重肥胖……改善儿童青少年营养状况如何发力？</h3>
                    <p class="post-meta">发帖日期:2024.11.09</p>
                    <p>我国学龄儿童营养健康状况有待持续改善...</p>
                    <div class="post-label">网友发帖</div>
                </div>
                <div class="post" data-type="official">
                    <h3 class="post-title">青少年饮食搭配4原则，切记饮食要多样化</h3>
                    <p class="post-meta">发帖日期:2024.11.01</p>
                    <p>据教育部发布信息显示，近20年来，我国11-18岁的青少年平均身高比日本同龄人矮2-3公分...</p>
                    <div class="post-label">官方发帖</div>
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
