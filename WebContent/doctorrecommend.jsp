<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>医生推荐</title>
</head>
<body>
<br>
<br>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="page-header">
				<h1  class="text-center">
					<strong>自主挂号系统  </strong> <small>by Mafaldae</small>
				</h1>
			</div>
			<br>
			<br>
			<ul class="nav nav-tabs">
				<li>
					 <a href="">首页</a>
				</li>
				<li>
					 <a href="doctorSearch.jsp">医生检索</a>
				</li>
				<li >
					 <a href="doctorinfo.jsp">医生信息查询</a>
				</li>
				<li class = "active" >
					 <a href="doctorrecommend.jsp">按病情推荐医生</a>
				</li>
			</ul>
		</div>
			<form class="form-horizontal" role="form" action="doctorrecom" >
				<div class="form-group">
					 <label for="inputDoc" class="col-sm-2 text-center" >按病情查询:</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" name ="Disease" id="inputDoc"  placeholder="请输入查询病症:">
					</div>
					<div class=" col-sm-1 text-center">
						 <button type="submit" class="btn btn-default active">检索</button>
					</div>
				</div>
			</form>
	</div>
</div>
</body>
</html>
