<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="<%=path%>/static/jquery-2.1.4.min.js"></script>
    <script src="<%=path%>/static/uploadify/jquery.uploadify.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/uploadify/uploadify.css" />
    <title>添加相册内容</title>
    <script type="text/javascript">
    
            function uploadifyDeleteFile(instanceID, fileID){
            	alert(instanceID + "->" + fileID);
            	var instance = $('#' + instanceID);
            	instance.uploadify('cancel', fileID);
            }
            
		   $(function() {
		       $('#coverContent').uploadify({
		           'swf': '<%=path%>/static/uploadify/uploadify.swf',
		           'uploader' : '<%=path%>/album/uploadContent',
		           'fileSizeLimit' : '10MB',
		           'fileTypeExts' : '*.gif; *.jpg; *.png',
		           'uploadLimit' : 100,
		           'fileObjName' : 'file',
		           'removeCompleted' : false,
		           'multi' : false,
		           'buttonText':'选择文件',
		           'height' : 20,
		           'width' : 100,
		           'onUploadStart' : function(file) {
		        	   var albumId = $('#albumId').val();
		               $("#coverContent").uploadify("settings", "formData", {'albumId': albumId});
		           },
		           'onUploadSuccess' : function(file, data, response) {
		        	   var result = eval( "(" + data + ")" );
		        	   if(result.status == 'success') {
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
    <form method="post" action="">
        <input type="hidden" id="albumId" name="albumId" value="${albumId}"/>
        <table>
            <tr>
                <td colspan="2"><a href="<%=path %>/album/main">返回列表</a></td>
            </tr>
            <tr>
                <td>相册内容：</td>
                <td><input type="file" name="coverContent" id="coverContent" /></td>
            </tr>
        </table>
    </form>
</body>
</html>