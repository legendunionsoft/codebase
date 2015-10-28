<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>最近的交易记录</title>
    <link rel="stylesheet" href="<%=path%>/static/uikit-2.23.0/css/uikit.css" />
    <script src="<%=path%>/static/jquery-2.1.4.min.js"></script>
    <script src="<%=path%>/static/uikit-2.23.0/js/uikit.js"></script>
    <script type="text/javascript">
    </script>
</head>
<body>
    <table class="uk-table">
    <caption>最近的交易记录</caption>
    <thead>
        <tr>
            <th>交易类型</th>
            <th>交易内容</th>
            <th>交易数量</th>
            <th>交易状态</th>
            <th>交易备注</th>
            <th>交易时间</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${transList}" var="tran">
             <tr>
                 <td>${tran.type}</td>
                 <td>${tran.subjectName}</td>
                 <td>${tran.amount}</td>
                 <td>${tran.status}</td>
                 <td>${tran.remark}</td>
                 <td><fmt:formatDate value="${tran.createTime}" type="both"/></td>
             </tr>
             </c:forEach>
    </tbody>
</table>
</body>
</html>