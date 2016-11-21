<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!-- 可选的Bootstrap主题文件（一般不使用） -->
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>医生<s:property value="dc.DoctorName" />的详细信息</title>
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="page-header">
				<h1 class="text-center">
					<strong>医生<s:property value="dc.DoctorName" />的信息</strong>
				</h1>
			</div>
			<ul class="nav nav-tabs">
				<li>
					 <a href="index.jsp">首页</a>
				</li>
				<li>
					 <a href="doctorSearch.jsp">医生检索</a>
				</li>
				<li class = "active">
					 <a href="">医生信息查询</a>
				</li>
				<li >
					 <a href="">按病情推荐医生</a>
				</li>
				<li >
					 <a href="">个人管理</a>
				</li>
				<li >
					 <a href="">预约管理</a>
				</li>
			</ul>
			<br>
			<br>
			<div class="panel panel-info">
				<div class="panel-heading">
					<h3 class="panel-title">
						<font size=3>医生信息</font>
					</h3>
				</div>
				<table class="table table-hover table-striped">
				<tbody>
					<tr>
						<td>
							医生ID（DoctorID）
						</td>
						<td>
							<p id="doctorid"><s:property value="dc.DoctorID"/></p>
						</td>
					</tr>
					<tr class="success">
						<td>
							姓名(DoctorName)
						</td>
						<td>
							<s:property value="dc.DoctorName" />
						</td>
					</tr>
					<tr>
						<td>
							年龄(DoctorAge)
						</td>
						<td>
							<p id="doctorage"><s:property value="dc.DoctorAge" /></p>
						</td>
					</tr>
					<tr class="success">
						<td>
							主治领域(Area)
						</td>
						<td>
							<p id="area"><s:property value="dc.Area" /></p>
						</td>
					</tr>
					<tr>
						<td>
							职位(Position)
						</td>
						<td>
							<p id="position"><s:property value="dc.Position" /></p>
						</td>
					</tr>
					<tr class="success">
						<td>
							办公室(Office)
						</td>
						<td>
							<p id="office"><s:property value="dc.Office" /></p>
						</td>
					</tr>
					<tr>
						<td>
							联系方式(Contact)
						</td>
						<td>
							<p id="contact "><s:property value="dc.Contact" /></p>
						</td>
					</tr>
				</tbody>
				</table>
			</div>
			<div>
			<button type="button" class="btn btn-default active" >预约挂号</button>
			<a class="btn btn-default active" href="index.jsp">返回首页>></a>
			</div>
		</div>
	</div>
</div>
</body>
</html>