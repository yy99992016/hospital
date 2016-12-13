<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" 

xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>推荐医生列表</title>
<style type="text/css">
body{ text-align:center;}
.main .div{
	text-align:center;
	align:center;
	margin: 4em auto;
}
.r{
	margin-right:0;
	float:right;
}
table tr td{
	width:40;
}
.td{
	border:solid #00E3E3;
	border-width:0px 1px 1px 0px; 
}
.tab{
	background-color:#BBFFFF;
	border:solid #00E3E3;
	border-width:1px 0px 0px 1px;
	border:1;
	cellspacing:30;
	cellpadding:30;
	margin-left: auto; 
	margin-right: auto;
	padding:3;
}
.but {
	margin:0;
	padding:.5em 0;
	-webkit-border-radius:.3em;
	-moz-border-radius: .3em;
	border:#1263be solid 1px;
	background:#1b85fd;
	color:#FFF;
	font-size:10px;
	width:80px;
	margin:0 auto 0 auto;
	text-align:center;
}
.but1 {
	margin:0;
	padding:.5em 0;
	-webkit-border-radius:.3em;
	-moz-border-radius: .3em;
	border:#1263be solid 1px;
	background:#97CBFF;
	font-size:10px;
	width:80px;
	margin:0 auto 0 auto;
	text-align:center;
}
.a{
	text-decoration:none;
}
a:link{color:#ACD6FF;}
a:visited{color:purple;}
a:hover{color:yellow;
	text-decoration:underline;
}
a:actived{color:red}
  </style>
</head> 
<body>
<div class="main">
	<div class="div">
			<h1>推荐医生</h1>
	</div>
	<div class="div">
	<table class="tab"><tbody>
		<s:iterator value="DoctorList" var="i">
		<tr><td width="140" class="td"><s:property value="#i"/></td><td width="" class="td">
		<s:url action="searchdoc" var="详细信息" ><s:param name="doctorName" value="#i"></s:param></s:url>
		<s:a href="%{详细信息}" class="a">详细信息</s:a></td><td width="" class="td">
		<s:url action="delete" var="预约挂号" ><s:param name="Title" value="#i"></s:param></s:url>
		<s:a href="%{预约挂号}" class="a">预约挂号</s:a></td></tr></s:iterator>
		</tbody></table>
	</div>
	<div class="div">
		<table class="r">
			<tr><td><a href="index.jsp"><button class="but1">返回首页</button></a></td></tr>
		</table>
	</div>
</div>
</body>
</html>