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

<title><s:property value="pt.PatientName" />的详细信息</title>
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
<script type="text/javascript">
function updatep(e)
{
	var id = document.getElementById("id").innerHTML;
	var age = $("#inputPatientAge").val();
	var sex = $("#inputPatientSex").val();
	var contact = $("#inputPatientContact").val();
	var details = $("#inputDetailillness").val();
	var blood = $("#inputBloodtype").val();
	if(age =="")
		age = $("#age").text();
	if(sex == "")
		sex = $("#sex").text();
	if(contact == "")
		contact = $("#contact").text();
	if(details == "")
		details = $("#details").text();
	if(blood == "")
		blood = $("#blood").text();
	window.location.href="updatep?id="+id+
			"&age="+age+
			"&sex="+sex+
			"&contact="+contact+
			"&details="+details+
			"&blood="+blood;
}
</script>
</head>
<body>
<!-- banner -->
	<div class="banner1">
		<div class="container">
<!-- header -->
			<div class="header">	
					<div class="logo">
					   <a href="index.html"><i class="glyphicon glyphicon-plus" aria-hidden="true"></i>Medical Clinic<span>We Work For Your Health</span></a>
					</div>
					<div class="top-nav">
						<span class="menu"><img src="images/menu.png" alt=" " /></span>
						<ul class="nav">
							<li class="active"><a href="patientindex.html">Home</a></li>
							<li><a href= "#DocShow">DoctorShow</a></li>
							<li><a href="#AboutUS">AboutUs</a></li>
							<li><a href="appointment.jsp">Appointment</a></li>
							<li class="dropdown"><s:a href="#" data-toggle="dropdown" class="dropdown-toggle">${user}<strong class="caret"></strong></s:a>
								<ul class="dropdown-menu">
									<li>
										 <a href="http://localhost:8080/HospitalS/patientSelfInfo.action">Selfmanagement</a>
									</li>
									<li>
										 <a href="http://localhost:8080/HospitalS/Logoff.action">Logoff</a>
									</li>
									<li>
										 <a href="http://localhost:8080/HospitalS/query.action">resmanagement</a>
									</li>
								</ul>
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
					<strong><s:property value="pt.PatientName" />的信息</strong>
				</h1>
			</div>
			<br>
			<div class="panel panel-info">
				<div class="panel-heading">
					<h3 class="panel-title">
						<font size=3>个人信息</font>
					</h3>
				</div>
				<table class="table table-bordered">
				<tbody>
					<tr>
						<td>
							用户名（PatientID）
						</td>
						<td>
							<p id="id"><s:property value="pt.PatientID" /></p>
						</td>
					</tr>
					<tr class="info">
						<td>
							姓名（PatientName）
						</td>
						<td>
							<p id="name"><s:property value=" pt.PatientName" /></p>
						</td>
					</tr>
					<tr>
						<td>
							年龄（PatientAge）
						</td>
						<td>
							<p id="age"><s:property value="pt.PatientAge" /></p>
						</td>
					</tr>
					<tr class="info">
						<td>
							性别（PatientSex）
						</td>
						<td>
							<p id="sex"><s:property value=" pt.PatientSex" /></p>
						</td>
					</tr>
					<tr>
						<td>
							联系方式(Contact)
						</td>
						<td>
							<p id="contact"><s:property value="pt.PatientContact" /></p>
						</td>
					</tr>
					<tr class="info">
						<td>
							病情详情（Detailillness）
						</td>
						<td>
							<p id="details"><s:property value="pt.Detailillness" /></p>
						</td>
					</tr>
					<tr>
						<td>
							血型（Bloodtype）
						</td>
						<td>
							<p id="blood"><s:property value="pt.Bloodtype" /></p>
						</td>
					</tr>
					<tr class="info">
						<td>
							密码（Pkey）
						</td>
						<td>
							<p id="key"><s:property value="pt.Pkey" /></p>
						</td>
					</tr>
				</tbody>
				</table>
			</div>
			<div>
				<button type="button" class="btn btn-default" data-toggle="modal" data-target="#BModal">修改个人信息</button>&nbsp
					<div class="modal fade" id="BModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				  		<div class="modal-dialog">
				    		<div class="modal-content">
				      			<div class="modal-header">
				        			<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				        			<h4 class="modal-title" id="myModalLabel">修改信息</h4>
				     			 </div>
				      			<div class="modal-body">
				        			<form role="form">
						  				<div class="form-group">
										    <label for="inputPatientAge">年龄（PatientAge：）</label>
										    <input type="text" class="form-control" id="inputPatientAge" placeholder="请输入年龄：">
						  				</div>
						  				<div class="form-group">
										    <label for="inputPatientSex">性别（PatientSex：）</label>
										    <input type="text" class="form-control" id="inputPatientSex" placeholder="请输入性别：">
						  				</div>
						  				<div class="form-group">
										    <label for="inputPatientContact">联系方式（PatientContact：）</label>
										    <input type="text" class="form-control" id="inputPatientContact" placeholder="请输入联系方式：">
						  				</div>
						  				<div class="form-group">
										    <label for="inputDetailillness">详细病症（Detailillness：）</label>
										    <input type="text" class="form-control" id="inputDetailillness" placeholder="请输入病症：">
						  				</div>
						  				<div class="form-group">
										    <label for="inputBloodtype">血型（Bloodtype：）</label>
										    <input type="text" class="form-control" id="inputBloodtype" placeholder="请输入血型：">
						  				</div>
									</form>
				      			</div>
				      			<div class="modal-footer">
				        			<button type="button" class="btn btn-default active" onclick="updatep(this);">确认修改</button>
				      			</div>
				    		</div>
				  		</div>
					</div>
				<a class="btn btn-default" href="patientindex.jsp">修改密码</a>
				<a class="btn btn-default" href="patientindex.jsp">返回首页>></a>
			</div>
			<br>
		</div>
	</div>
</div>
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-3 footer-grid">
					<h3>patients & Visitors</h3>
					<ul>
						<li><a href="#">Find a Doctor</a></li>
						<li><a href="#">Information For patients</a></li>
						<li><a href="#">Information For visitors</a></li>
						<li><a href="#">Pay Hospital Bills In Online</a></li>
						<li><a href="#">Financial Services</a></li>
						<li><a href="#">Our Commitment to</a></li>
						<li><a href="#">Quality Care</a></li>
						<li><a href="#">Events</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid">
					<h3>research</h3>
					<ul>
						<li><a href="#">Reaserch Highlights</a></li>
						<li><a href="#">Resources For Professionals</a></li>
						<li><a href="#">Finding Opportunities</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid">
					<h3>education & Training</h3>
					<ul>
						<li><a href="#">Patient Health Library</a></li>
						<li><a href="#">Residency & Fellowship</a></li>
						<li><a href="#">Information</a></li>
						<li><a href="#">Nursing Professional</a></li>
						<li><a href="#">Development</a></li>
						<li><a href="#">Professional Training</a></li>
						<li><a href="#">Professional Development</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid">
					<h3>community</h3>
					<ul>
						<li><a href="#">Community Health & Wellness</a></li>
						<li><a href="#">Community Relations</a></li>
						<li><a href="#">Community Services & Resources</a></li>
						<li><a href="#">Community Reports</a></li>
						<li><a href="#">News & Events</a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="footer-grds">
				<div class="footer-grds-left">
					<ul>
						<li><a href="#">Privacy Policy |</a></li>
						<li><a href="contact.html">Sitemap |</a></li>
						<li><a href="#">Terms of Use</a></li>
					</ul>
					<p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
				</div>
				<div class="footer-grds-right">
					<ul>
						<li><a href="#" class="fa"></a></li>
						<li><a href="#" class="fb"></a></li>
						<li><a href="#" class="fc"></a></li>
						<li><a href="#" class="fd"></a></li>
					</ul>
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