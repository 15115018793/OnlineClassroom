<%@page import="org.apache.catalina.connector.Request"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%>
<!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--适口 只对移动端有用 -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>用户管理页</title>

		<!-- Bootstrap -->
		<link href="${pageContext.request.contextPath }/static/css/user.css" rel="stylesheet"/>
		<link href="${pageContext.request.contextPath }/static/lib/datetimepicker/css/bootstrap-datetimepicker.css" />
		<link href="${pageContext.request.contextPath }/static/lib/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath }/static/lib/bootstrapSelect/css/bootstrap-select.min.css" rel="stylesheet">
	</head>
	<body>
		用户管理
		<div class="container-fluid">
			<div class="row">
				<div class="search_titie_bar">
					搜索
					
				</div>
				
			</div>
			<div class="row">
				<form class="form-inline" id="search_form">
					<div class="form-group">
						<label>报名时间：</label>
						<input class="form-control input-sm form_datetime"  type="text" name="regCourseStartTime"/>
					</div>
					<div class="form-group">
						<label>至</label>
						<input class="form-control input-sm form_datetime"  type="text" name="regCourseEndTime"/>
					</div>
					&nbsp;
					<div class="form-group">
						<label>报名课程：</label>
						<input class="form-control input-sm"  type="text" name="regCourse" placeholder="课程名称"/>
					</div>
					<div class="form-group">
						<label>学员信息：</label>
						<input class="form-control input-sm"  type="text" name="regCourseInfo" placeholder="用户名/手机号"/>
					</div>
				</form>
				
			</div>
			<div class="seach_btn" class="row">
				<button class="btn btn-default" type="button">查询</button>
				<button class="btn btn-default"  data-toggle="modal" data-target="#addModal" type="button">添加</button>
				<button class="btn btn-default" type="button">删除</button>
				<button class="btn btn-default" type="button">导入</button>
				<button class="btn btn-default" type="button">导出</button>
				
			</div>
			<div id="content_table" class="row">
				<div class="table-responsive">
					<table class="table table-bordered table-hover">
						<tr>
							<td><input type="checkbox" name="allcheck" id="allcheck">用户名</td>
							<td>手机号</td>
							<td>邮箱地址</td>
							<td>角色</td>
							<td>用户状态</td>
							<td>操作</td>
						</tr>
						<c:forEach items="${userDataByPage.list}" var="user">
						<tr>
							<td><input type="checkbox" name="allcheck" id="allcheck">用户名</td>
							<td>${user.username}</td>
							<td>${user.phone}</td>
							<td>${user.email}</td>
							<td>
								<c:forEach items="${user.roles}" var="role">
									${role.name}
								</c:forEach>
							</td>
							<td>${user.enable}</td>
							<td><a href="${pageContext.request.contextPath }/admin/updataUser.html?id=${user.id}" data-target="#updateModal" data-toggle="modal">编辑</a> <a href="#">删除</a></td>
						</tr>
						</c:forEach>
					</table>
					
				</div>
				
			</div>
			
			<div id="pager" class="row">
				<p class="pull-left">总共有<span>${userDataByPage.total}</span>条记录，当前页<span>${userDataByPage.pageNum} / ${userDataByPage.pages} </span> 页</p>
				<div class="btn-group pull-right">
					<button type="button" class="btn btn-default"><a href="${pageContext.request.contextPath }/admin/userManager.html?pageNum=1&pageSize=5">首页</a></button>
					<button type="button" class="btn btn-default"><a href="${pageContext.request.contextPath }/admin/userManager.html?pageNum=${userDataByPage.prePage}&pageSize=5" >上一页</a></button>
					<button class="btn btn-default"><a href="${pageContext.request.contextPath }/admin/userManager.html?pageNum=${userDataByPage.nextPage}&pageSize=5">下一页</a></button>
					<button type="button" class="btn btn-default"><a href="${pageContext.request.contextPath }/admin/userManager.html?pageNum=${userDataByPage.pages}&pageSize=5">尾页</a></button>
				</div>
			</div>
			
		</div>
		
		<!-- Modal 添加-->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">添加用户</h4>
      </div>
      <div class="modal-body">
        <form id="addUserForm" action="<%=basePath%>admin/addUser.html" method="post">
        	<div class="form-group">
        		<label>用户名：</label>
        		<input type="text" name="username" class="form-control" placeholder="用户名"/>
        	</div>
        	<div class="form-group">
        		<label>密码：</label>
        		<input type="password" name="password" class="form-control" placeholder="密码"/>
        	</div>
        		<div class="form-group">
        		<label>关联的角色：</label>
        		<select name="roleId" class="selectpicker form-control">
        		<option value="1">超级管理员</option>
        		<option value="2">教师</option>
        		<option value="3">学员</option>
        		</select>
        	</div>
        	<div class="form-group">
        		<label>手机号：</label>
        		<input type="text" name="phone" class="form-control" placeholder="手机号"/>
        	</div>
        	<div class="form-group">
        		<label>邮箱：</label>
        		<input type="text" name="email" class="form-control" placeholder="邮箱"/>
        	</div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button id="addUserBtn" type="submit" class="btn btn-primary">添加用户</button>
      </div>
        </form>
      </div>
    </div>
  </div>
</div>
	

		<!-- Modal 修改-->
<div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog">
    <div class="modal-content">
     
    </div>
  </div>
</div>
	
<script type="text/javascript">
		$(function(){
			
	
				/* $("#updateModal").on("hidden.bs.modal",function(){
					$(this).removeData("bs.modal");
				}); */
				function updateUserSubmit(){
					$("#UpdateUserFrom").submit();
					
				}
		});
</script>
  <script src="${pageContext.request.contextPath }/static/lib/bootstrap/js/tests/vendor/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/static/lib/bootstrap/dist/js/bootstrap.min.js"></script>
 
	<script src="${pageContext.request.contextPath }/static/lib/datetimepicker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/user.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/lib/datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
		
	<script type="text/javascript" src="${pageContext.request.contextPath }/static/lib/bootstrapSelect/js/bootstrap-select.min.js"></script>
	

	</body>
</html>
