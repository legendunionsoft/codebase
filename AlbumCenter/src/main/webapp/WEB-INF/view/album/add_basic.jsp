<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>相册基本信息</title>
    <link rel="stylesheet" href="<%=path%>/static/uikit-2.23.0/css/uikit.css" />
    <script src="<%=path%>/static/jquery-2.1.4.min.js"></script>
    <script src="<%=path%>/static/uikit-2.23.0/js/uikit.js"></script>
</head>
<body>
    <form method="post" action="<%=path%>/album/saveBasicInfo">
    <div class="uk-grid">
        <div class="uk-width-1-2 uk-container-center">
	        <table class="uk-table">
	            <caption>第一步：录入相册基本信息</caption>
	            <tr>
	                <th  class="uk-width-1-4 uk-text-right">名称：</th>
	                <td  class="uk-width-3-4 uk-text-left"><input type="text" name="name" id="name" /></td>
	            </tr>
	            <tr>
	                <th  class="uk-width-1-4 uk-text-right">是否免费：</th>
	                <td  class="uk-width-3-4 uk-text-left"><input type="radio" name="free"  checked="checked" value="Y" />是<input type="radio" name="free" value="N" />否</td>
	            </tr>
	            <tr>
	                <th  class="uk-width-1-4 uk-text-right">价格：</th>
	                <td  class="uk-width-3-4 uk-text-left"><input type="number" name="price" id="price" /></td>
	            </tr>
	            <tr>
	                <th  class="uk-width-1-4 uk-text-right">简介：</th>
	                <td  class="uk-width-3-4 uk-text-left"><textarea rows="3" cols="20" name="remark"></textarea></td>
	            </tr>
	            <tr>
	                <td colspan="2"   class="uk-width-1-1 uk-text-center"><input class="uk-button uk-button-success" type="submit" value="下一步"/></td>
	            </tr>
	        </table>
	    </div>
	</div>
    </form>
</body>
</html>