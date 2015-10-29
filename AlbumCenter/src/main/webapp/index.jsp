<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>首页</title>
    <link rel="stylesheet" href="<%=path%>/static/uikit-2.23.0/css/uikit.css" />
    <script src="<%=path%>/static/jquery-2.1.4.min.js"></script>
    <script src="<%=path%>/static/uikit-2.23.0/js/uikit.js"></script>
    <script type="text/javascript">
        function showPage(title, url){
        	$('#showTitle').text(title);
        	$('#showFrame').attr("src",url);
        }
    </script>
</head>
<body>
    <div class="uk-grid">
        <div class="uk-width-1-1">用户信息</div>
        <div class="uk-width-1-1">
            <nav class="uk-navbar">
                <ul class="uk-navbar-nav">
                    <li class="uk-active"><a href="javascript:showPage('','');">首页</a></li>
                    <li class="uk-parent" data-uk-dropdown>
                            <a href="">用户</a>
                            <div class="uk-dropdown uk-dropdown-navbar">
                                <ul class="uk-nav uk-nav-navbar">
                                    <li><a href="javascript:showPage('个人信息','user/center');">个人信息</a></li>
                                    <li><a href="javascript:showPage('交易记录','user/recentTrans');">交易记录</a></li>
                                </ul>
                            </div>
                       </li>
                </ul>
             </nav>
        </div>
        <div class="uk-width-1-1">
        <div class="uk-panel">
             <span id="showTitle" class="uk-panel-title"></span>
             <iframe class="uk-width-1-1" id="showFrame" src=""></iframe>
        </div>
        </div>
        <div class="uk-width-1-1">3</div>
    </div>
</div>
</body>
</html>