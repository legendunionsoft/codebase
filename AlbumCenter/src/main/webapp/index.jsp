<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>首页</title>
    <link rel="stylesheet" href="<%=path%>/static/uikit-2.23.0/css/uikit.css" />
    <link rel="stylesheet" href="<%=path%>/static/uikit-2.23.0/css/components/slidenav.almost-flat.css" />
    <link rel="stylesheet" href="<%=path%>/static/uikit-2.23.0/css/components/dotnav.almost-flat.css" />
    <link rel="stylesheet" href="<%=path%>/static/uikit-2.23.0/css/components/slideshow.almost-flat.css" />
    <script src="<%=path%>/static/jquery-2.1.4.min.js"></script>
    <script src="<%=path%>/static/uikit-2.23.0/js/uikit.js"></script>
    <script src="../vendor/jquery.js"></script>
    <script src="js/uikit.min.js"></script>
    <script src="../vendor/highlight/highlight.js"></script>
    <script src="../src/js/components/slideshow.js"></script>
    <script src="../src/js/components/slideshow-fx.js"></script>
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
<body >
    <div class="uk-grid" >
        <div class="uk-width-1-1">
            <nav class="uk-navbar" style=" background-color: #222222;">
                <ul class="uk-navbar-nav" >
	                <li class="uk-parent" style="width: 100px;"><a href="">首页</a></li>
	                <li class="uk-parent" style="width: 100px;"><a >往期期刊</a></li>
	                <li class="uk-parent" style="width: 100px;"><a href="index1.jsp">模特圈</a></li>
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
       
       <div  class="uk-slidenav-position" style="height:100%; width:97.36%; background-color: #222222" align="center">
<!--        		<ul class="uk-slideshow" data-uk-slideshow="{animation: 'random-fx'}" style="height: 411px;"> -->
<!--               	<li id="img1" aria-hidden="false" class="uk-active" style="-webkit-animation: 500ms; height: 411px;"><div class="uk-cover-background uk-position-cover" style="background-image: url(static/img/mn1.jpg);"></div><img src="static/img/mn1.jpg" width="100%" height="85%" alt="" style="width: 100%; height: auto;"></li> -->
<!--               	<li id="img2" aria-hidden="true" style="-webkit-animation: 500ms; height: 411px;" class=""><div class="uk-cover-background uk-position-cover" style="background-image: url(static/img/mn2.jpg);"></div><img src="static/img/mn2.jpg" width="100%" height="85%" alt="" style="width: 100%; height: auto;"></li> -->
<!--               	<li id="img3" aria-hidden="true" style="-webkit-animation: 500ms; height: 411px;" class=""><div class="uk-cover-background uk-position-cover" style="background-image: url(static/img/mn3.jpg);"></div><img src="static/img/mn3.jpg" width="100%" height="85%" alt="" style="width: 100%; height: auto;"></li> -->
<!--           	</ul> -->
	        	<a href="detail.jsp"><img id="img" style="width:100%; height:85%; opacity:0.8;" src="static/img/mn1.jpg" ></a>
	        <a href="#" onclick="cleft();" class="uk-slidenav uk-slidenav-previous"></a>
		 	<a href="#" onclick="rleft();" class="uk-slidenav uk-slidenav-next"></a>
		 	<div align="center">
				<ul class="uk-dotnav uk-dotnav-contrast uk-flex-center" >
				    <li id="s1" class="uk-active"><a href="#" onclick="sclick(1)">...</a></li>
				    <li id="s2"><a href="#" onclick="sclick(2)">...</a></li>
				    <li id="s3"><a href="#" onclick="sclick(3)">...</a></li>
				</ul>
			</div>	
	    </div>
	    
	    
	    
	    
      
<!--       <div  class="uk-slidenav-position" style="height:100%; width:97.36%; background-color: #222222" align="center"> -->
<!--        		<ul class="uk-slideshow" data-uk-slideshow="{animation: 'random-fx'}" style="height: 411px;"> -->
<!--               	<li id="img1" aria-hidden="false" class="uk-active" style="-webkit-animation: 500ms; height: 411px;"><div class="uk-cover-background uk-position-cover" style="background-image: url(static/img/mn1.jpg);"></div><img src="static/img/mn1.jpg" width="100%" height="85%" alt="" style="width: 100%; height: auto;"></li> -->
<!--               	<li id="img2" aria-hidden="true" style="-webkit-animation: 500ms; height: 411px;" class=""><div class="uk-cover-background uk-position-cover" style="background-image: url(static/img/mn2.jpg);"></div><img src="static/img/mn2.jpg" width="100%" height="85%" alt="" style="width: 100%; height: auto;"></li> -->
<!--               	<li id="img3" aria-hidden="true" style="-webkit-animation: 500ms; height: 411px;" class=""><div class="uk-cover-background uk-position-cover" style="background-image: url(static/img/mn3.jpg);"></div><img src="static/img/mn3.jpg" width="100%" height="85%" alt="" style="width: 100%; height: auto;"></li> -->
<!--           	</ul> -->
<!-- <!-- 	        <img id="img" style="width:100%; height:85%; opacity:0.8;" src="static/img/mn1.jpg" > --> -->
<!-- 	        <a href="#" onclick="cleft();" class="uk-slidenav uk-slidenav-previous"></a> -->
<!-- 		 	<a href="#" onclick="rleft();" class="uk-slidenav uk-slidenav-next"></a> -->
<!-- 		 	<div align="center"> -->
<!-- 				<ul class="uk-dotnav uk-dotnav-contrast uk-flex-center" > -->
<!-- 				    <li id="s1" class="uk-active"><a href="#" onclick="sclick(1)">...</a></li> -->
<!-- 				    <li id="s2"><a href="#" onclick="sclick(2)">...</a></li> -->
<!-- 				    <li id="s3"><a href="#" onclick="sclick(3)">...</a></li> -->
<!-- 				</ul> -->
<!-- 			</div>	 -->
<!-- 	    </div> -->
		
	    
<!--         <div class="uk-width-1-1" style="float: right;"> -->
<!--         <div class="uk-panel" > -->
<!--              <span id="showTitle" class="uk-panel-title"></span> -->
<!--              <iframe class="uk-width-1-1" style="height:260px;" id="showFrame" src=""></iframe> -->
<!--         </div> -->
<!--         </div> -->
<!-- 	        <div class="uk-width-1-1">3</div> -->
<!-- 	    </div> -->
</div>
</body>
</html>