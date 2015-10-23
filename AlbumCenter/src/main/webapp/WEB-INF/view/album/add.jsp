<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="<%=path%>/static/jquery-2.1.4.min.js"></script>
    <script src="<%=path%>/static/uploadify/jquery.uploadify.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/uploadify/uploadify.css" />
    <title>新建</title>
    <script type="text/javascript">
		   $(function() {
		       $('#file_upload').uploadify({
		           'swf': '<%=path%>/static/uploadify/uploadify.swf',
		           'uploader' : '<%=path%>/file/upload',
		           'fileSizeLimit' : '10MB',
		           'fileTypeExts' : '*.gif; *.jpg; *.png',
		           'uploadLimit' : 1,
		           'fileObjName' : 'file',
		           'removeCompleted' : false,
		           'multi' : true,
		           'buttonText':'选择文件',
		           'height' : 20,
		           'width' : 100,
		            'onUploadSuccess' : function(file, data, response) {
		                alert('The file ' + file.name + ' was successfully uploaded with a response of ' + response + ':' + data);
		            },
		            'onUploadError' : function(file, errorCode, errorMsg, errorString) {
		                alert(errorCode);
		            },
		            'onCancel' : function(file) {
		            	debugger;
		                alert('The file ' + file.name + ' was cancelled.');
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