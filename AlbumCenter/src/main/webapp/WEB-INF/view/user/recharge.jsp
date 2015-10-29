<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>充值</title>
    <link rel="stylesheet" href="<%=path%>/static/uikit-2.23.0/css/uikit.css" />
    <script src="<%=path%>/static/jquery-2.1.4.min.js"></script>
    <script src="<%=path%>/static/uikit-2.23.0/js/uikit.js"></script>
    <script type="text/javascript">
    </script>
</head>
<body>
    <form class="uk-form" method="post" action="<%=path%>/user/recharge">
        <div class="uk-grid">
	        <div class="uk-width-3-1">充值金额：<input name="amount" type="number" placeholder=""/></div>
	        <div class="uk-width-3-2">支付方式：<input name="channel" type="radio" placeholder=""/>支付宝</div>
	        <div class="uk-width-3-3"><button class="uk-button uk-button-success" type="submit">提交</button></div>
       </div>
    </form>
</body>
</html>