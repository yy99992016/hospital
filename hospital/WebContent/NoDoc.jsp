<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<title>医生预约</title>
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
<!-- 后加的js ，css-->
<style type="text/css">
select{margin:0;padding:0;border:0;font-size:12px;}
</style>
<script type="text/javascript">
function show(e)
{
	window.location.href = "searchdoc?doctorName="+e.innerHTML;
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
			<div class="header">	
					<div class="logo">
					   <a href="index.html"><i class="glyphicon glyphicon-plus" aria-hidden="true"></i>Medical Clinic<span>We Work For Your Health</span></a>
					</div>
					<div class="top-nav">
						<span class="menu"><img src="images/menu.png" alt=" " /></span>
						<ul class="nav">
							<li class="active"><a href="index.html">Home</a></li>
							<li><a href= #searchthings>Sear&Recom</a></li>
							<li><a href="gallery.html">SelfManage</a></li>
							<li><a href="appointment">Appointment</a></li>
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
					<strong>预约</strong>
				</h1>
			</div>
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
			<p>无查询结果！</p>
			<br>
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
