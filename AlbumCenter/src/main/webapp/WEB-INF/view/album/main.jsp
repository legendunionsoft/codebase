<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="<%=path%>/static/uikit-2.23.0/css/uikit.min.css" />
    <script src="<%=path%>/static/jquery-2.1.4.min.js"></script>
    <script src="<%=path%>/static/uikit-2.23.0/js/uikit.min.js"></script>
    <title>相册管理</title>
</head>
<body>
     <a class="uk-button" href="<%=path%>/common/go/album-add">新建</a>
    <div class="uk-grid">
        <div class="uk-width-1-2">列表</div>
        <div class="uk-width-1-2">图片展示区</div>
    </div>
</body>
</html>