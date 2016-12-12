<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>登陆</title>
<style type="text/css">
 body{
  background-image:url(Login.jpg);
  background-repeat:no-repeat;
  background-size:100%;
 }
.login_table{
	margin-left: auto; 
	margin-right: auto;
	margin-top: 50%; 
	margin-down: auto;
	background-color:#4DFFFF;	
}
.login_btn{
	width:75px;
	margin:40px auto 0 auto;
}

.login_btn{
	margin-top:0;
	margin-left: auto; 
	margin-right: auto;
	padding:.5em 0;
	-webkit-border-radius:.3em;
	-moz-border-radius: .3em;
	border:#1263be solid 1px;
	background:#1b85fd;
	color:#FFF;
	font-size:17px;
	font-weight:bolder;
	letter-spacing:1em;
}

.login_btn input:hover{
	background:#1263be;
	}
	
.main{
	width:100%;
}

.main .center{
	text-align:center;
	align:center;
	width:40%;
	margin: 6em auto;
}
.r{
	margin-right:0;
	margin-top:0;
	float:right;
}
.login_btn{
	width:50;
	text-align:center;
}
 </style>
</head>
<body>
<div class="main">
	<div class="center">
		<form  action="login" method="post" name="forml">
			<table width="200" border="0" cellspacing="10" cellpadding="10" class="login_table">
				<tr><td width="50">Username </td><td width="100"><input type="text" name="Username"/></td></tr>
				<tr><td width="50">Password </td><td width="100"><input type="password" name="Password"/></td></tr>
		    </table>
		    <input type="submit" value="登陆" class="login_btn"/>
		    <input type="button" value="注册" onclick="forml.action='jump1.action';forml.submit()" class="login_btn"/>
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