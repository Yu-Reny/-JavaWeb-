<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>AI问答</title>
    <link rel="stylesheet" type="text/css" href="/MKCV/jsp/css/TaosAI/styles.css">
    <!-- 从 html/TaosAI 文件夹返回两级目录到 css/TaosAI 文件夹，加载 styles.css 文件。 -->
</head>
<body>
    <!-- 导航栏 -->
    <nav>
        <a href="/MKCV/jsp/startSite.jsp">网站首页</a>
        <a href="/MKCV/jsp/medWiki.jsp">对症下药</a>
        <a href="/MKCV/jsp/rating.jsp">医院评分</a>
        <a href="/MKCV/jsp/focus.jsp">病情论坛</a>
        <a href="/MKCV/jsp/TaosAI/firstgptweb.jsp" style="background:grey">AI自查</a>
    </nav>

    <!-- AI部分 -->
    <div class="container">
        <h1>医知助手</h1>

        <div id="output-text">
			<dl id="theList">
			</dl>
		</div>

        <textarea id="input-text" placeholder="请输入要查询的健康问题"></textarea>
        <button id="submit-button">发送</button>		

		<script src="/MKCV/js/TaosAI/script.js"></script>
    </div>
</body>
</html>