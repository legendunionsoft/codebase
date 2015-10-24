<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>相册基本信息</title>
</head>
<body>
    <span>第一步：录入相册基本信息</span>
    <form method="post" action="<%=path%>/album/saveBasicInfo">
        <table>
            <tr>
                <td>名称：</td>
                <td><input type="text" name="name" id="name" /></td>
            </tr>
            <tr>
                <td>是否免费：</td>
                <td><input type="radio" name="free"  checked="checked" value="Y" />是<input type="radio" name="free" value="N" />否</td>
            </tr>
            <tr>
                <td>价格：</td>
                <td><input type="number" name="price" id="price" /></td>
            </tr>
            <tr>
                <td>简介：</td>
                <td><textarea rows="3" cols="20" name="remark"></textarea></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="下一步"/></td>
            </tr>
        </table>
    </form>
</body>
</html>