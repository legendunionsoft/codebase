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
		       $('#file_upload').uploadify({
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
		           },
		           'onUploadError' : function(file, errorCode, errorMsg, errorString) {
		           }
		       });
		   });
    </script>
</head>
<body>
    <form>
        <input type="file" name="file_upload" id="file_upload" />
    </form>
</body>
</html>