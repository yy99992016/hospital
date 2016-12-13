<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>注册</title>
<style type="text/css">
.main .div{
	text-align:center;
	align:center;
	margin: 4em auto;
}
.main .div1{
	
}
.table{
	text-align:left;
	margin-left:auto;
	margin-right:auto;
}
.table tr{
	height:40px;
}
.r{
	margin-right:0;
	float:right;
}
</style>
</head>
<body>
<div class="main">
	<div class="div">
		<h1>注册</h1>
	</div>
	<div class="div">
		<form action="patientreg">
			<table class="table">
			<tr><td>两次密码不一致</td></tr>
			<tr><td>用  户  名：</td><td><input type="text" name ="patientID" placeholder="身份证号或医保卡号" required="required"/></td></tr>
			<tr><td>姓        名：</td><td><input type="text" name="patientName" required="required"/></td></tr>
			<tr><td>年        龄：</td><td><input type="text" name ="patientAge"/></td></tr>
			<tr><td>性        别：</td><td><input type="text" name ="patientSex"/></td></tr>
			<tr><td>联系方式：</td><td><input type="text" name ="patientContact" required="required"/></td></tr>
			<tr><td>详细病情：</td><td><input type="text" name ="detailillness"/></td></tr>
			<tr><td>血型：</td><td><input type="text" name ="bloodtype"/></td></tr>
			<tr><td>密        码：</td><td><input type="password" name="pkey" required="required"/></td></tr>
			<tr><td>确认密码：</td><td><input type="password" name="pkey1" required="required"/></td></tr>
			</table>
			<button type="submit" >立即注册</button>
		</form>
	</div>
	<div>
		<table class="r">
			<tr><td><a href="index.jsp"><button class="but1">返回首页</button></a></td></tr>
		</table>
	</div>
</div>
</body>
</html>
