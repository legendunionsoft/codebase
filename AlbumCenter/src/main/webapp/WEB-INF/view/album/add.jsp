<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="<%=path%>/static/uikit-2.23.0/css/uikit.min.css" />
    <script src="<%=path%>/static/jquery-2.1.4.min.js"></script>
    <script src="<%=path%>/static/uikit-2.23.0/js/uikit.min.js"></script>
    <title>新建</title>
</head>
<body>
     <a class="uk-button" href="<%=path%>/album/main">返回列表</a>
     <form class="uk-form" action="<%=path%>/album/add" method="post">
         <fieldset>
            <legend>基本信息</legend>
            <div class="uk-form-row"><input type="text" name="name" placeholder="相册名称"></div>
        </fieldset>
         <fieldset>
              <legend>封面信息</legend>
        </fieldset>
        <button class="uk-button" type="submit">保存</button>
     </form>
</body>
</html>