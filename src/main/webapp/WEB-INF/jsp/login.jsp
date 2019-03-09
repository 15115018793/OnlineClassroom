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
		<title>腾讯课堂首页</title>

		<!-- Bootstrap -->
		<link href="${pageContext.request.contextPath }/static/lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<!--	<link rel="stylesheet" href="css/index.css" />-->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/main.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/login.css" />
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
		<div class="loginhtml" class="container">
			<div class="row">

				<div class="col-md-7 col-sm-6 col-xm-5"></div>
				<div class="col-md-10 col-sm-12 col-xm-14 login-col">

					<ul class="nav nav-tabs">
						<li class="active col-xs-12">
							<a href="#logfrom" data-toggle="tab">登陆账号</a>
						</li>
						<li class="col-xs-12">
							<a href="#regform" data-toggle="tab">注册账号</a>
						</li>

					</ul>
					<div class="tab-content">
						<div id="logfrom" class="tab-pane fade in active">
							<form action="#" method="post">
								<div class="form-group">
									<label>账号：</label>
									<input type="text" name="username" class="form-control" placeholder="邮箱/手机/用户名" />
								</div>
								<div class="form-group">
									<label>密码：</label>
									<input type="password" name="password" class="form-control" placeholder="密码" />
								</div>
								<div class="checkbox">
									<label><input type="checkbox" namme="rembermi"/>记住密码</label>
								</div>
								<div class="form-group">
									<input type="submit" class="form-control btn btn-primary" value="登陆" />
								</div>
								<div class="form-group">
									<p>
										<a href="#">找回密码</a> | 还没有账号？ |
										<a href="#">注册账号</a>
									</p>
									<p style="text-align: right;">使用第三方账号登录:</p>
								<p style="text-align: right;">
										<a href="#"><img src="${pageContext.request.contextPath }/static/image/QQ.png "/></a>
										<a href="# "><img src="${pageContext.request.contextPath }/static/image/微信.png "/></a>
									</p>
								</div>
						</form>
							</div>
						<div id="regform" class="tab-pane fade ">
								<form action="#" method="post">
								<div class="form-group">
									<label>手机号：</label>
									<input type="text" name="username" class="form-control" placeholder="常用手机号码" />
								</div>
								<div class="form-group">
									<label>账号：</label>
									<input type="text" name="username" class="form-control" placeholder="用户名" />
								</div>
								<div class="form-group">
									<label>密码：</label>
									<input type="password" name="password" class="form-control" placeholder="密码" />
								</div>
								<div class="form-group" style="margin-bottom: 20px;">
									<label>手机验证码：</label>
									<div class="row">
										<div class="col-xs-12">
										<input type="text" namme="phoneCode"  class="form-control"/>
									</div>
									<div class="col-xs-12">
										<input value="点击获取验证码" type="button" namme="phoneCode"  class="form-control btn btn-default"/>
									</div>
										
									</div>
									
									
								</div>
								<div class="form-group">
									<input type="submit" class="form-control btn btn-primary" value="登陆" />
								</div>
							</form>
							
							
						</div>

					</div>
				</div>

				<div class="col-md-7 "></div>
			</div>

		</div>

		<div class="footer hidden-xs ">
			<div class="footericon ">
				<span>
						<img src="${pageContext.request.contextPath }/static/image/tengxun2.png "/>
						
					</span>

			</div>
			<p class="p1 ">Copyright © 2019 Tencent. All Rights Reserved.

			</p>
			<p class="cer ">
				<a href="# ">腾讯在线课堂 版权所有</a> |
				<a href="# ">腾讯课堂服务协议 </a>|
				<a href="# ">站点地图</a> |
				<a href="# ">侵权投诉</a> |
				<a href="# ">问题反馈</a> |
				<a href="# ">帮助</a>
			</p>

		</div>

		<script src="${pageContext.request.contextPath }/static/lib/bootstrap/js/tests/vendor/jquery.min.js "></script>
		<script src="${pageContext.request.contextPath }/static/lib/bootstrap/dist/js/bootstrap.min.js "></script>
	</body>

</html>