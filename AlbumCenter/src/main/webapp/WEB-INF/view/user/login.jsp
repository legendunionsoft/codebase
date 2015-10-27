<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录</title>
    <script src="<%=path%>/static/jquery-2.1.4.min.js"></script>
    <script type="text/javascript">
    </script>
</head>
<body>
    <form method="post" action="<%=path%>/user/login">
        <input type="hidden" name="backUrl" value="${backUrl}"/>
        <table>
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="name" id="name" onblur="checkName(this)"/></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="password" id="password" /></td>
            </tr>
            <tr>
                <td><input type="submit" value="登录"/></td>
                <td><input type="reset" value="重填"/></td>
            </tr>
            <tr>
                <td colspan="2">${errorTip}</td>
            </tr>
        </table>
    </form>
</body>
</html>