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
		<form action="register" method="post">
		<table class="table">
		<tr><td>两次密码不一致</td></tr>
		<tr><td>用  户  名：</td><td><input type="text" name ="Username" placeholder="身份证号或医保卡号"/></td></tr>
		<tr><td>密        码：</td><td><input type="password" name="Password"/></td></tr>
		<tr><td>确认密码：</td><td><input type="password" name="Password1"/></td></tr>
		<tr><td>姓        名：</td><td><input type="text" name="Name"/></td></tr>
		<tr><td>用户类型：</td><td><input type="radio" name="Style" value="doctor"/>医生
				<input type="radio" name="Style" value="patient"/>患者</td></tr>
		<tr><td>年        龄：</td><td><input type="text" name ="Age"/></td></tr>
		<tr><td>联系方式：</td><td><input type="text" name ="Contect"/></td></tr>
		</table><br/><br/>
		<h2>医生请填写下列信息</h2><br/><br/>
		<table class="table">
		<tr><td>医生编号：</td><td><input type="text" name ="Doctorid"/></td></tr>
		<tr><td>主治领域：</td><td><input type="text" name ="Area"/></td></tr>
		<tr><td>职        位：</td><td><input type="text" name ="Position"/></td></tr>
		<tr><td>办  公  室：</td><td><input type="text" name ="Office"/></td></tr>
		</table>
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