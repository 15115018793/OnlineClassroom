<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--适口 只对移动端有用 -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>腾讯课堂首页</title>

		<!-- Bootstrap -->
		<link href="${pageContext.request.contextPath }/static/lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/index.css" />
	</head>

	<body>
		<!--
	作者：offline
	时间：2019-02-25
	描述：导航条
-->
		<nav class="navbar navbar-default navbar-static-top">
			<div class="container">
				<div class="navbar-header">
					<!--按钮折叠 -->
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#kt_navbar">
					<span class="icon-bar"></span> <!-- 折叠按钮线-->
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
					<a href="#" class="navbar-brand">腾讯课堂</a>

				</div>
				<div id="kt_navbar" class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li>
							<a href="">首页</a>
						</li>
						<li>
							<a href="">全部课程</a>
						</li>
						<li>
							<a href="">问题讨论</a>
						</li>
						<li>
							<a href="">学习路线</a>
						</li>
						<li>
							<a href="">资料下载</a>
						</li>

					</ul>

					<div class="navbar-form navbar-left">
						<form accept="#" method="get">

							<div class="input-group">
								<input type="text" name="search_str" class="form-control" placeholder="课程名称..." />
								<span class="input-group-btn">
										<button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-search"></span></button>

								</span>

							</div>
						</form>

					</div>
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href=""><span class="glyphicon glyphicon-user" style="color: #337AB7;"></span>登陆</a>
						</li>
						<li>
							<a href=""><span class="glyphicon glyphicon-plus" style="color: #337AB7;"></span>注册</a>
						</li>
					</ul>

				</div>

			</div>

		</nav>
		<!--
        	作者：offline
        	时间：2019-02-26
        	描述：轮播图
        -->
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				<li data-target="#carousel-example-generic" data-slide-to="3"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active" style="background: url(${pageContext.request.contextPath }/static/image/0.jpg) no-repeat; background-color: #01021E;">
				</div>
				<div class="item" style="background: url(${pageContext.request.contextPath }/static/image/1.jpg) no-repeat; background-color: #451FBF;">
				</div>
				<div class="item" style="background: url(${pageContext.request.contextPath }/static/image/2.jpg) no-repeat; background-color: #34C276;">
				</div>
				<div class="item" style="background: url(${pageContext.request.contextPath }/static/image/3.png) no-repeat; background-color: #0D073C;">
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<!--
        	作者：offline
        	时间：2019-02-26
        	描述：缩略图
        -->
		<div id="courelist" class="container">
			<div class="page-header">
				<h3 class="text-center">最新发布课程<a href="#">全部课程<span class="glyphicon glyphicon-menu-right"></span></a></h3>

			</div>
				<div class="row">
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/356.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">JAVA高级开发架构师课程</a></h3>
								<h3 class="cource_price">￥2000.00<a href="#" class="cource_groud">JAVAEE课程</a></h3>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/356.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">JAVA高级开发架构师课程</a></h3>
								<h3 class="cource_price">￥2000.00<a href="#" class="cource_groud">JAVAEE课程</a></h3>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/356.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">JAVA高级开发架构师课程</a></h3>
								<h3 class="cource_price">￥2000.00<a href="#" class="cource_groud">JAVAEE课程</a></h3>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/356.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">JAVA高级开发架构师课程</a></h3>
								<h3 class="cource_price">￥2000.00<a href="#" class="cource_groud">JAVAEE课程</a></h3>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/356.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">JAVA高级开发架构师课程</a></h3>
								<h3 class="cource_price">￥2000.00<a href="#" class="cource_groud">JAVAEE课程</a></h3>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/356.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">JAVA高级开发架构师课程</a></h3>
								<h3 class="cource_price">￥2000.00<a href="#" class="cource_groud">JAVAEE课程</a></h3>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/356.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">JAVA高级开发架构师课程</a></h3>
								<h3 class="cource_price">￥2000.00<a href="#" class="cource_groud">JAVAEE课程</a></h3>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/356.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">JAVA高级开发架构师课程</a></h3>
								<h3 class="cource_price">￥2000.00<a href="#" class="cource_groud">JAVAEE课程</a></h3>
							</div>
						</div>
					</div>
				</div>
				

		</div>
		
		<div id="courelist" class="container">
			<div class="page-header">
				<h3 class="text-center">前端课程<a href="#">全部课程<span class="glyphicon glyphicon-menu-right"></span></a></h3>

			</div>
				<div class="row">
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/357.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">JWeb前端零基础到高薪就业课程</a></h3>
								<h3 class="cource_price">￥3999.00<a href="#" class="cource_groud">Web课程</a></h3>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/357.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">JWeb前端零基础到高薪就业课程</a></h3>
								<h3 class="cource_price">￥3999.00<a href="#" class="cource_groud">Web课程</a></h3>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/357.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">JWeb前端零基础到高薪就业课程</a></h3>
								<h3 class="cource_price">￥3999.00<a href="#" class="cource_groud">Web课程</a></h3>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/357.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">JWeb前端零基础到高薪就业课程</a></h3>
								<h3 class="cource_price">￥3999.00<a href="#" class="cource_groud">Web课程</a></h3>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/357.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">JWeb前端零基础到高薪就业课程</a></h3>
								<h3 class="cource_price">￥3999.00<a href="#" class="cource_groud">Web课程</a></h3>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/357.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">JWeb前端零基础到高薪就业课程</a></h3>
								<h3 class="cource_price">￥3999.00<a href="#" class="cource_groud">Web课程</a></h3>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/357.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">JWeb前端零基础到高薪就业课程</a></h3>
								<h3 class="cource_price">￥3999.00<a href="#" class="cource_groud">Web课程</a></h3>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/357.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">JWeb前端零基础到高薪就业课程</a></h3>
								<h3 class="cource_price">￥3999.00<a href="#" class="cource_groud">Web课程</a></h3>
							</div>
						</div>
					</div>
				</div>
				

		</div>
		
		
		<div id="courelist" class="container">
			<div class="page-header">
				<h3 class="text-center">Python课程<a href="#">全部课程<span class="glyphicon glyphicon-menu-right"></span></a></h3>

			</div>
				<div class="row">
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/358.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">年薪30万的Python课程</a></h3>
								<h3 class="cource_price">￥5188.00<a href="#" class="cource_groud">Python课程</a></h3>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/358.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">年薪30万的Python课程</a></h3>
								<h3 class="cource_price">￥5188.00<a href="#" class="cource_groud">Python课程</a></h3>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/358.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">年薪30万的Python课程</a></h3>
								<h3 class="cource_price">￥5188.00<a href="#" class="cource_groud">Python课程</a></h3>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/358.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">年薪30万的Python课程</a></h3>
								<h3 class="cource_price">￥5188.00<a href="#" class="cource_groud">Python课程</a></h3>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/358.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">年薪30万的Python课程</a></h3>
								<h3 class="cource_price">￥5188.00<a href="#" class="cource_groud">Python课程</a></h3>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/358.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">年薪30万的Python课程</a></h3>
								<h3 class="cource_price">￥5188.00<a href="#" class="cource_groud">Python课程</a></h3>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/358.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">年薪30万的Python课程</a></h3>
								<h3 class="cource_price">￥5188.00<a href="#" class="cource_groud">Python课程</a></h3>
							</div>
						</div>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="thumbnail">
							<a href="#"><img src="${pageContext.request.contextPath }/static/image/358.jpg" alt="cource"></a>
							<div class="caption">
								<h3><a href="#">年薪30万的Python课程</a></h3>
								<h3 class="cource_price">￥5188.00<a href="#" class="cource_groud">Python课程</a></h3>
							</div>
						</div>
					</div>
				</div>
		</div>
		<!--
        	作者：offline
        	时间：2019-02-27
        	描述：脚注
        -->
		<div class="footer hidden-xs">
				<div class="footericon">
					<span>
						<img src="${pageContext.request.contextPath }/static/image/tengxun2.png"/>
						
					</span>
					
				</div>
				<p class="p1">Copyright © 2019 Tencent. All Rights Reserved.

</p>
<p class="cer"><a href="#">腾讯在线课堂 版权所有</a> | <a href="#">腾讯课堂服务协议 </a>| <a href="#">站点地图</a> | <a href="#">侵权投诉</a> | <a href="#">问题反馈</a> | <a href="#">帮助</a></p>
			
		</div>
		
		
	<script src="${pageContext.request.contextPath }/static/lib/bootstrap/js/tests/vendor/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/static/lib/bootstrap/dist/js/bootstrap.min.js"></script>
	</body>

</html>
</html>