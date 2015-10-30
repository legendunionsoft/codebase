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
        function showPage(parentId,title, url){
        	$('#showTitle').text(title);
        	$('#showFrame').attr("src",url);
        	if(parentId != null) {
        		var p = $('#' + parentId);
            	p.removeClass('uk-open');
        	}
        }
    </script>
</head>
<body>
    <div class="uk-grid">
        <div class="uk-width-1-1">
            <div class="uk-grid">
                <div class="uk-width-2-3"></div>
                <div class="uk-width-1-3">
	                <div class="uk-grid uk-grid-divider">
	                     <div class="uk-width-1-3"><a href="<%=path %>/common/go/user!register">注册</a></div>
	                     <div class="uk-width-1-3"><a href="<%=path %>/common/go/user!login">登录</a></div>
	                     <div class="uk-width-1-3"><a href="<%=path %>/album/main">后台相册管理</a></div>
	                </div>
                </div>
            </div>
        </div>
        <div class="uk-width-1-1">
            <nav class="uk-navbar">
                <ul class="uk-navbar-nav">
                    <li class="uk-active"><a href="javascript:showPage(null,'','');">首页</a></li>
                    <li class="uk-parent"  id="userNav" data-uk-dropdown="{mode:'hover',remaintime:0,hoverDelayIdle:0}">
                            <a href="">用户</a>
                            <div class="uk-dropdown uk-dropdown-navbar">
                                <ul class="uk-nav uk-nav-navbar">
                                    <li><a  href="javascript:showPage('userNav','个人信息','user/center');">个人信息</a></li>
                                    <li><a  href="javascript:showPage('userNav','交易记录','user/recentTrans');">交易记录</a></li>
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
        <div class="uk-width-1-1"></div>
    </div>
</div>
</body>
</html>