<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="<%=path%>/static/jquery-2.1.4.min.js"></script>
    <script src="<%=path%>/static/uploadify/jquery.uploadify.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/uploadify/uploadify.css" />
    <title>新建</title>
    <script type="text/javascript">
    
            function uploadifyDeleteFile(instanceID, fileID){
            	alert(instanceID + "->" + fileID);
            	var instance = $('#' + instanceID);
            	instance.uploadify('cancel', fileID);
            }
            
		   $(function() {
		       $('#coverImage').uploadify({
		           'swf': '<%=path%>/static/uploadify/uploadify.swf',
		           'uploader' : '<%=path%>/file/upload',
		           'fileSizeLimit' : '10MB',
		           'fileTypeExts' : '*.gif; *.jpg; *.png',
		           'uploadLimit' : 100,
		           'fileObjName' : 'file',
		           'removeCompleted' : false,
		           'multi' : true,
		           'buttonText':'选择文件',
		           'height' : 20,
		           'width' : 100,
		           'onUploadSuccess' : function(file, data, response) {
		        	   var result = eval( "(" + data + ")" );
		        	   if(result.status == 'success') {
			        	   $('#coverImageUrl').val(result.data.fileUrl);
			        	   $('#coverImageShow').attr("src", '<%=path%>/' + result.data.fileUrl);
		        	   } else {
		        		   alert(result.msg);
		        	   }
		           },
		           'onUploadError' : function(file, errorCode, errorMsg, errorString) {
		        	   alert(errorMsg);
		           }
		       });
		       
		       $('#coverImage2').uploadify({
		           'swf': '<%=path%>/static/uploadify/uploadify.swf',
		           'uploader' : '<%=path%>/file/upload',
		           'fileSizeLimit' : '10MB',
		           'fileTypeExts' : '*.gif; *.jpg; *.png',
		           'uploadLimit' : 100,
		           'fileObjName' : 'file',
		           'removeCompleted' : false,
		           'multi' : true,
		           'buttonText':'选择文件',
		           'height' : 20,
		           'width' : 100,
		           'onUploadSuccess' : function(file, data, response) {
		        	   var result = eval( "(" + data + ")" );
		        	   if(result.status == 'success') {
			        	   $('#coverImage2Url').val(result.data.fileUrl);
			        	   $('#coverImage2Show').attr("src", '<%=path%>/' + result.data.fileUrl);
		        	   } else {
		        		   alert(result.msg);
		        	   }
		           },
		           'onUploadError' : function(file, errorCode, errorMsg, errorString) {
		        	   alert(errorMsg);
		           }
		       });
		   });
    </script>
</head>
<body>
    <form method="post" action="<%=path%>/album/setCoverInfo">
        <input type="hidden" name="id" value="${albumId}"/>
        <input type="hidden" id="coverImageUrl" name="coverImageUrl" value=""/>
        <input type="hidden" id="coverImage2Url" name="coverImage2Url" value=""/>
        <table>
            <tr>
                <td colspan="4"><input type="submit" value="下一步"/></td>
            </tr>
            <tr>
                <td>封面图片：</td>
                <td><input type="file" name="coverImage" id="coverImage" /></td>
                 <td>封二图片：</td>
                <td><input type="file" name="coverImage2" id="coverImage2" /></td>
            </tr>
            <tr>
                <td colspan="2"><img id="coverImageShow" src=""></td>
                <td colspan="2"><img id="coverImage2Show" src=""></td>
            </tr>
        </table>
    </form>
</body>
</html>