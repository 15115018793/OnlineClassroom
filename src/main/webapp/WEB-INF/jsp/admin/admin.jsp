<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--适口 只对移动端有用 -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>腾讯课堂 后台首页</title>

		<!-- Bootstrap -->
		<link href="${pageContext.request.contextPath }/static/lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<!--	<link rel="stylesheet" href="css/index.css" />-->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/admin.css" />

	</head>

	<body>
		<div id="admin_top" class="container-fluid">
			<div class="row">
				<div class="navbar navbar-inverse navbar-static-top">
					
					<div class="navbar-header col-md-8">
					<span class="navbar-brand"/><img src="${pageContext.request.contextPath }/static/image/tengxun3.png" style="position: absolute; left: -2px; margin-top: -5px;" />在线课堂后台管理页</span>
						
					</div>
					<div class="col-md-8 col-md-offset-8" style="text-align: center; margin-top: 25px;">
						<a href="#" style="padding: 20px;"><img src="${pageContext.request.contextPath }/static/image/user.png" /></a>
						<a href="#"><img src="${pageContext.request.contextPath }/static/image/diyuan.png"/></a>
					</div>
					
					
				</div>
				
			</div>
			
			
			
		</div>
		<div id="slib_bar">
			<div class="slidebar-title">
				<p>
					<span>导航模块 /</span>
					<span>Nav Model</span>
				</p>
				
			</div>
			<div class="slidebar-content">
				<a href="#ullist" data-toggle = "collapse" ><img src="${pageContext.request.contextPath }/static/image/jia.png"/>系统设置</a>
				<ul class="collapse collapse_all" id="ullist">
					<li><a href="" data-iframesrc="${pageContext.request.contextPath }/admin/userManager.html?pageNum=1&pageSize=10"><img src="${pageContext.request.contextPath }/static/image/shu.png" />用户管理</a></li>
				<li><a href="" data-iframesrc="${pageContext.request.contextPath }/admin/roleManager.html"><img src="${pageContext.request.contextPath }/static/image/shu.png" />角色管理</a></li>
				<li><a href="" data-iframesrc="${pageContext.request.contextPath }/admin/resourceManager.html"><img src="${pageContext.request.contextPath }/static/image/shu.png" />资源管理</a></li>
				<li><a href=""><img src="${pageContext.request.contextPath }/static/image/shu.png" />信息管理</a></li>
					
				</ul>
				<a href="#shiping" data-toggle = "collapse" ><img src="${pageContext.request.contextPath }/static/image/jia.png"/>视频管理</a>
				<ul class="collapse collapse_all" id="shiping">
					<li><a href="#"><img src="${pageContext.request.contextPath }/static/image/shu.png" />视频管理</a></li>
						<li><a href="#"><img src="${pageContext.request.contextPath }/static/image/shu.png" />视频管理</a></li>
				
					<li><a href="#"><img src="${pageContext.request.contextPath }/static/image/shu.png" />视频管理</a></li>
				
					<li><a href="#"><img src="${pageContext.request.contextPath }/static/image/shu.png" />视频管理</a></li>
				
				
				</ul>
				<a href="#kc" data-toggle = "collapse" ><img src="${pageContext.request.contextPath }/static/image/jia.png"/>课程管理</a>
				<ul class="collapse collapse_all" id="kc">
					<li><a href="#"><img src="${pageContext.request.contextPath }/static/image/shu.png" />课程管理</a></li>
					<li><a href="#"><img src="${pageContext.request.contextPath }/static/image/shu.png" />课程管理</a></li>
				
				<li><a href="#"><img src="${pageContext.request.contextPath }/static/image/shu.png" />课程管理</a></li>
				
				<li><a href="#"><img src="${pageContext.request.contextPath }/static/image/shu.png" />课程管理</a></li>
				
				
					
				</ul>
				<a href="#ziliao" data-toggle = "collapse" ><img src="${pageContext.request.contextPath }/static/image/jia.png"/>资料管理</a>
				<ul class="collapse in collapse_all" id="ziliao">
					<li><a href="#"><img src="${pageContext.request.contextPath }/static/image/shu.png" />资料管理</a></li>
					<li><a href="#"><img src="${pageContext.request.contextPath }/static/image/shu.png" />资料管理</a></li>
					<li><a href="#"><img src="${pageContext.request.contextPath }/static/image/shu.png" />资料管理</a></li>
					<li><a href="#"><img src="${pageContext.request.contextPath }/static/image/shu.png" />资料管理</a></li>
				
					
				</ul>
			</div>
			
			
		</div>
		<div id="path_nav">
			
		<ol class="breadcrumb">
		  <li><a href="#">后台首页</a></li>
		  <li><a href="#">系统管理</a></li>
		  <li class="active">系统信息</li>
		</ol>
			
		</div>
		<script src="${pageContext.request.contextPath }/static/lib/bootstrap/js/tests/vendor/jquery.min.js "></script>
		<script src="${pageContext.request.contextPath }/static/lib/bootstrap/dist/js/bootstrap.min.js "></script>
		<script>
			$(function() {

			$(".collapse_all > li > a ").click(function(el) {
		
				el.preventDefault(); //禁用a标签原有的功能
				var $this = $(this);
				$(".collapse_all > li > a").removeClass("navactive");
				$this.addClass("navactive");
				$("#iframe-content").attr('src',$this.data("iframesrc"))
				var text=$this.text();
				var mnav=$this.parent().parent().prev().text();
				$("#path_nav > .breadcrumb > li:last-child").html(text);
				$("#path_nav > .breadcrumb > li:last-child").prev().html(mnav);
	})

})
			
		</script>
	</body>

</html>

<iframe id="iframe-content" class="navbar-fixed-bottom" frameborder="no" scrolling="auto" width="100%" height="100%"
allowtransparency="true" src="${pageContext.request.contextPath }/static/html/admin_welcone.html"
	></iframe>