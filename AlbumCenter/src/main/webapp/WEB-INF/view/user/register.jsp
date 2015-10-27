<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>注册</title>
    <script src="<%=path%>/static/jquery-2.1.4.min.js"></script>
    <script type="text/javascript">
        function checkName(obj){
        	$.ajax( {  
        		 url:'<%=path%>/user/checkName',  
        		 data:{  
        		     name:obj.value  
        		 },  
        		type:'post',  
        		cache:false,  
        		dataType:'json',
        		success:function(data) {  
        		    if(data.status == 'success') {
        		    	if(data.data){
        		    		
        		    	} else {
        		    		$('#nameTip').html('用户名已存在');
        		    	}
        		    } else {
        		    	alert(data.msg);
        		    }
        		},  
        		error : function() {  
        		    alert("异常！");  
        		}  
            });
        }
        function check(){
        	return true;
        }
    </script>
</head>
<body>
    <form method="post" action="<%=path%>/user/register" onsubmit="return check()">
        <table>
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="name" id="name" onblur="checkName(this)"/></td>
                <td id="nameTip"></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="password" id="password" /></td>
                <td></td>
            </tr>
            <tr>
                <td><input type="submit" value="注册"/></td>
                <td></td>
                <td><input type="reset" value="重填"/></td>
            </tr>
        </table>
    </form>
</body>
</html>