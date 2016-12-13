<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<title>医生列表</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Medical Clinic Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Archivo+Narrow:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!-- 后加的js -->
<script type="text/javascript">
function show(e)
{
	window.location.href = "searchdocid?doctorID="+e.innerHTML;
}
function patientlog(e)
{
	var patientID = $("#inputPatientID").val();
	var pkey = $("#inputPkey").val();
	if(patientID =="")
		patientID = $("#patientID").text();
	if(pkey == "")
		pkey = $("#pkey").text();
	window.location.href="patientlog?patientID="+patientID+
			"&pkey="+pkey;
}
</script>
</head>
<body>
<!-- banner -->
	<div class="banner1">
		<div class="container">
<!-- header -->
			<div class="header" >	
					<div class="logo">
					   <a href="index.html"><i class="glyphicon glyphicon-plus" aria-hidden="true"></i>自助挂号系统<span>为您的健康服务</span></a>
					</div>
					<div class="top-nav">
						<span class="menu"><img src="images/menu.png" alt=" " /></span>
						<ul class="nav">
							<li ><a href="index.html">主页</a></li>
							<li><a data-toggle="modal" data-target="#BModal" href="">登陆</a>
							<div class="modal fade" id="BModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="myModalLabel">登录</h4>
							      </div>
							      <div class="modal-body">
							        <form role="form">
									  <div class="form-group">
									    <label for="inputPatientID">用户名:</label>
									    <input type ="text" class="form-control" id="inputPatientID" placeholder="请输入用户名：">
									  </div>
									  <div class="form-group">
									    <label for="inputPkey">密码:</label>
									    <input type="password" class="form-control" id="inputPkey" placeholder="请输入密码">
									  </div>
									  <button type="button" class="btn btn-default active" onclick="patientlog(this);">登录</button>
									</form>
							      </div>
							      <div class="modal-footer">
							      <a href="register.jsp">立即注册</a>
							      </div>
							    </div>
							  </div>
							</div>
							</li>
						</ul>
								<!-- script-for-menu -->
								 <script>
								   $( "span.menu" ).click(function() {
									 $( "ul.nav" ).slideToggle( 300, function() {
									 // Animation complete.
									  });
									 });
								</script>
								<!-- /script-for-menu -->
					</div>
					<div class="clearfix"> </div>
			</div>
<!-- //header -->	
		</div>
	</div>
<!-- //banner -->
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="page-header">
				<h1 class="text-center">
					<strong>医生列表</strong>
				</h1>
			</div>
			<div class="panel panel-info">
				<table  class="table table-bordered table-hover table-striped">
				<thead>
					<tr class="info">
						<th>
							医生ID（DoctorID）
						</th>
						<th>
							姓名(DoctorName)
						</th>
				</thead>
				<tbody>
				<s:iterator id="titleofdoctors" value="allDoctors">
					<tr>
						<td>
							<p clickable="clickable" onclick="show(this);" id = "doctorID"><s:property value="key"/> </p>
						</td>
						<td>
						 <p> <s:property value="value"/> </p>
						</td>
					</tr>
				</s:iterator>
				</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="footer-grds">
				<div class="footer-grds-left">
					<p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/"></a></p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //footer -->
<!-- for bootstrap working -->
		<script src="js/bootstrap.js"> </script>
<!-- //for bootstrap working -->
</body>
</html>