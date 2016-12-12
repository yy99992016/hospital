<?xml version="1.0" encoding="UTF-8" ?>
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
<title>医生推荐</title>
<style type="text/css">
select{margin:0;padding:0;border:0;font-size:12px;}
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
					 <a href="PatientIndex.jsp">首页</a>
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
				<li class = "active" >
					 <a href="appointment.jsp">预约</a>
				</li>
				<li >
					 <a href="query.jsp">预约管理</a>
				</li>
			</ul>
		</div>
			<form class="form-horizontal" role="form" action="appointment" >
				科室
				<select name="Department" size="1">
					<option value="eye" >耳鼻喉</option>
					<option value="surgery">外科</option>
					<option value="internal">内科</option>
				</select>
				月份
				<select name="Month" size="1">
					<option value="01">1</option>
					<option value="02">2</option>
					<option value="03">3</option>
					<option value="04">4</option>
					<option value="05">5</option>
					<option value="06">6</option>
					<option value="07">7</option>
					<option value="08">8</option>
					<option value="09">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select>
				日期
				<select name="Date" size="1">
					<option value="01">1</option>
					<option value="02">2</option>
					<option value="03">3</option>
					<option value="04">4</option>
					<option value="05">5</option>
					<option value="06">6</option>
					<option value="07">7</option>
					<option value="08">8</option>
					<option value="09">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					<option value="31">31</option>
				</select>
				<button type="submit" class="btn btn-default active">查询</button>
			</form>
	</div>
</div>
</body>
</html>
