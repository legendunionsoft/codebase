<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户中心</title>
    <script src="<%=path%>/static/jquery-2.1.4.min.js"></script>
    <script type="text/javascript">
    </script>
</head>
<body>
    用户中心
    用户名：${user.name}
    余额：${account.balance}
</body>
</html>