<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>首页</title>
    <link rel="stylesheet" href="<%=path%>/static/uikit-2.23.0/css/uikit.css" />
    <script src="<%=path%>/static/jquery-2.1.4.min.js"></script>
    <script src="<%=path%>/static/uikit-2.23.0/js/uikit.js"></script>
    <script type="text/javascript">
        function showPage(parentId,title, url){
        	$('#showTitle').text(title);
        	$('#showFrame').attr("src",url);
        	if(parentId != null) {
        		var p = $('#' + parentId);
            	p.removeClass('uk-open');
        	}
        }
        
        function cleft(){
	    	var img = document.getElementById("img");
	    	if(img.src =="http://localhost:8080/AlbumCenter/static/img/mn1.jpg"){
// 	    		img.src="static/img/mn2.jpg";
	    		sclick(3);
	    	}else if(img.src =="http://localhost:8080/AlbumCenter/static/img/mn2.jpg"){
// 	    		img.src="static/img/mn3.jpg";
	    		sclick(1);
	    	}else{
// 	    		img.src="static/img/mn1.jpg";
	    		sclick(2);
	    	}
    	}
    	function rleft(){
    		var img = document.getElementById("img");
	    	if(img.src =="http://localhost:8080/AlbumCenter/static/img/mn1.jpg"){
// 	    		img.src="static/img/mn2.jpg";
	    		sclick(2);
	    	}else if(img.src =="http://localhost:8080/AlbumCenter/static/img/mn2.jpg"){
// 	    		img.src="static/img/mn3.jpg";
	    		sclick(3);
	    	}else{
// 	    		img.src="static/img/mn1.jpg";
	    		sclick(1);
	    	}
    	}
    	function sclick(num){
    		var img = document.getElementById("img");
	    	if(num == 1){
	    		img.src="static/img/mn1.jpg";
	    		$("#s1").addClass("uk-active"); 
	    		$("#s2").removeClass("uk-active"); 
	    		$("#s3").removeClass("uk-active"); 
	    	}else if(num ==2){
	    		img.src="static/img/mn2.jpg";
	    		$("#s2").addClass("uk-active"); 
	    		$("#s1").removeClass("uk-active"); 
	    		$("#s3").removeClass("uk-active"); 
	    	}else{
	    		img.src="static/img/mn3.jpg";
	    		$("#s3").addClass("uk-active"); 
	    		$("#s2").removeClass("uk-active"); 
	    		$("#s1").removeClass("uk-active"); 
	    	}
    	}
    </script>
</head>
<body style="background-color: #222222">
<div style="background-color: #222222; height:100%; width:100%;">
    <div class="uk-grid" style="background-color: #222222">
        <div class="uk-width-1-1">
            <nav class="uk-navbar" style=" background-color: #222222;">
                <ul class="uk-navbar-nav" >
	                <li class="uk-parent" style="width: 100px;"><a href="index.jsp">首页</a></li>
	                <li class="uk-parent" style="width: 100px;"><a href="list.jsp">往期期刊</a></li>
	                <li class="uk-parent" style="width: 100px;"><a href="index1.jsp" >模特圈</a></li>
	                <li class="uk-parent" style="width: 100px;"><a >摄影圈</a></li>
	                <li class="uk-parent" style="width: 100px;"><a >商城</a></li>
	                <li class="uk-parent" style="width: 650px;"><a onclick"">&nbsp;</a></li>
	                <li class="uk-parent"  id="userNav" data-uk-dropdown="{mode:'hover',remaintime:0,hoverDelayIdle:0}" style="float: right;">
	                     <a href="" style="width: 100px;">用户</a>
	                     <div class="uk-dropdown uk-dropdown-navbar">
	                         <ul class="uk-nav uk-nav-navbar">
	                             <li><a  href="javascript:showPage('userNav','个人信息','user/center');">个人信息</a></li>
	                             <li><a  href="javascript:showPage('userNav','交易记录','user/recentTrans');">交易记录</a></li>
	                         </ul>
	                     </div>
	                </li>
             	</ul>
          	</nav>
        </div>

		<div style="width:95%;">
			<div style="margin-left: 5%; font-size: 32px; font-style: normal; color: purple;">第 1 期精美影像：</div>
			<br/>
			<div style="margin-left: 10%; font-size: 20px; font-style: normal; color: orange;">每张照片均千万像素以上，印刷级300DPI精度！</div>
			<br/>
			<div style="margin-left: 10%; font-size: 20px; font-style: normal; color: orange;">所有照片均为《推女郎》原创艺术作品，谨供摄影学员教学学习，谢绝任何形式的公开传播和其他用途！</div>
			<br/>
			<div style="margin-left: 10%; font-size: 20px; font-style: normal; color: orange;">本期预览（本期照片共38张，本期女郎 沙子 与她互动：<a>会员</a>可见）：</div>
		</div>
		     
		 <div  class="uk-slidenav-position" style="height:70%; width:96.86%; background-color: #222222" align="center">
        	<img id="img" style="width:100%; height:85%; opacity:0.8;" src="static/img/mn1.jpg" >
	    </div>     
		
	</div>
	</div>
</div>	
</body>
</html>