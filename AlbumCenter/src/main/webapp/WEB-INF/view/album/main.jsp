<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>相册管理</title>
</head>
<body>
     <a href="<%=path%>/common/go/album!add_basic">新建</a>
     <hr/>
     <table>
         <thead>
             <tr>
                 <td>ID</td>
                 <td>名称</td>
                 <td>是否免费</td>
                 <td>价格</td>
             </tr>
         </thead>
         <tbody>
             <c:forEach items="${albumList}" var="album">
             <tr>
                 <td>${album.id}</td>
                 <td>${album.name}</td>
                 <td>${album.free}</td>
                 <td>${album.price}</td>
             </tr>
             </c:forEach>
         </tbody>
     </table>
</body>
</html>