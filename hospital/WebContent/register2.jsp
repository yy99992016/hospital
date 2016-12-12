<!DOCTYPE html>
<html>
<head>
<title>Contact</title>
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
							<li><a href="index.html">Home</a></li>
							<li><a href="news.html">News</a></li>
							<li><a href="services.html">Services</a></li>
							<li><a href="gallery.html">Gallery</a></li>
							<li class="active"><a href="contact.html">Contact</a></li>
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
<!-- contact -->
	<div class="contact main">
		<div class="container div">
			<h3>Register</h3>
			<p class="et">welcome to register</p>
			<div class="contact-grid">
				<div class="col-md-12 contact-grid-left">
					<form action="patientreg">
						<table class="table">
						<tr><td>用  户  名：</td><td><input type="text" name ="patientID" placeholder="身份证号或医保卡号" required="required"/></td></tr>
						<tr><td>姓        名：</td><td><input type="text" name="patientName" required="required"/></td></tr>
						<tr><td>密        码：</td><td><input type="password" name="pkey" required="required"/></td></tr>
						<tr><td>确认密码：</td><td><input type="password" name="pkey1" required="required"/></td></tr>
						<tr><td>年        龄：</td><td><input type="text" name ="patientAge"/></td></tr>
						<tr><td>性        别：</td><td><input type="text" name ="patientSex" list = "sex_list"/>
						<datalist id="sex_list">
						 <option value="man" />
						 <option value="woman" />
						 </datalist>
						</td></tr>
						<tr><td>联系方式：</td><td><input type="text" name ="patientContact" required="required"/></td></tr>
						<tr><td>详细病情：</td><td><input type="text" name ="detailillness"/></td></tr>
						<tr><td>血型：</td><td><input type="text" name ="bloodtype" list = "blood_list"/>
						<datalist id="blood_list">
						 <option value="A" />
						 <option value="B" />
						 <option value="O" />
						 <option value="AB" />
						 <option value="Rh" />
						 <option value="HLA" />
						 <option value="other" />
						 </datalist>
						</td></tr>
						</table>
						<input type="submit" value="register" >
					</form>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //contact -->
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