<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
<title>自主挂号系统</title>
<style type="text/css">
.a{
	text-decoration:none;
}
</style>
</head>
<body>
	<div>
			<s:a href="http://localhost:8080/Hospital/logoff.action" style="float:right;">退出</s:a>

		<s:a href="http://localhost:8080/Hospital/patientSelfInfo.action" style="float:right;">${user}</s:a>
	</div>
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
				<li >
					 <a href="PatientIndex">首页</a>
				</li>
				<li>
					 <a href="PatientdoctorSearch.jsp">医生检索</a>
				</li>
				<li >
					 <a href="Patientdoctorinfo.jsp">医生信息查询</a>
				</li>
				<li >
					 <a href="Patientdoctorrecommend.jsp">按病情推荐医生</a>
				</li>
				<li >
					 <a href="appointment.jsp">预约</a>
				</li>
				<li class="active">
					 <a href="query.jsp">查看预约</a>
				</li>
			</ul>
		</div>
		<div>
			<form action="query" method="post">
				<button type="submit" class="btn btn-default active" name="Name" value="${user}">检索</button>
			</form>
		</div>
		<div>
			<form class="form-horizontal" role="form" action="appointment" method="post">
			<table>
				   <caption>${user}预约表</caption>
				   <tr><th>科室</th><th>医生姓名</th><th>日期</th><th>时间</th><th></th></tr>
				   <s:iterator value="PatList" var="i">
				   <tr>
				   		<td><s:property value="#i.Department"/></td>
				   		<td><s:property value="#i.Doctor"/></td>
				   		<td><s:property value="#i.Date"/></td>
				   		<td><s:property value="#i.Time"/></td>
				   		<td><s:url action="canapp" var="show" ><s:param name="Date" value="#i.Date"></s:param><s:param name="Time" value="#i.Time"></s:param><s:param name="Department" value="#i.Department"></s:param><s:param name="DocName" value="#i.Doctor"></s:param></s:url><s:a href="%{show}">取消预约</s:a></td>
				   </s:iterator> 
			</table>
		</form>
		</div>
	</div>
</div>
</body>
</html>
