<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>相册管理</title>
    <link rel="stylesheet" href="<%=path%>/static/uikit-2.23.0/css/uikit.css" />
    <script src="<%=path%>/static/jquery-2.1.4.min.js"></script>
    <script src="<%=path%>/static/uikit-2.23.0/js/uikit.js"></script>
    <script type="text/javascript">
        function info(coverUrl,cover2Url) {
        	$('#cover').attr('src',coverUrl);
        	$('#cover2').attr('src',cover2Url);
        }
    </script>
</head>
<body>
     <a class="uk-button uk-button-success" href="<%=path%>/common/go/album!add_basic">新建</a>
     <hr/>
     <div class="uk-grid">
         <div class="uk-width-1-3">
             <div class="uk-overflow-container">
			     <table class="uk-table uk-table-hover uk-table-condensed">
			         <caption>相册列表</caption>
			         <thead>
			             <tr>
			                 <th class="uk-width-1-4 uk-text-center">ID</th>
			                 <th class="uk-width-1-4 uk-text-center">名称</th>
			                 <th class="uk-width-1-4 uk-text-center">是否免费</th>
			                 <th class="uk-width-1-4 uk-text-center">价格</th>
			             </tr>
			         </thead>
			         <tbody>
			             <c:forEach items="${albumList}" var="album">
			             <tr onclick="javascript:info('<%=path%>/${album.coverImageUrl}','<%=path%>/${album.coverImage2Url}')">
			                 <td class="uk-width-1-4 uk-text-center">${album.id}</td>
			                 <td class="uk-width-1-4 uk-text-center">${album.name}</td>
			                 <td class="uk-width-1-4 uk-text-center">${album.free}</td>
			                 <td class="uk-width-1-4 uk-text-center">${album.price}</td>
			             </tr>
			             </c:forEach>
			         </tbody>
			       </table>
			   </div>
		   </div>
		   <div class="uk-width-2-3">
		       <div class="uk-grid">
		           <div class="uk-width-1-1"><img id="cover"src=""/></div>
		           <div class="uk-width-1-1"><img id="cover2"src=""/></div>
		       </div>
		   </div>
       </div>
</body>
</html>