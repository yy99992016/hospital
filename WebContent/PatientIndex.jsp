<!DOCTYPE html>
<html>
<head>
<title>Home</title>
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
	<div class="banner">
		<div class="container">
<!-- header -->
			<div class="header">	
					<div class="logo">
					   <a href="index.html"><i class="glyphicon glyphicon-plus" aria-hidden="true"></i>Self-service registration<span>We Work For Your Health</span></a>
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
			<div class="banner-info" id="searchthings">
				<form action="searchdocid">
					<input type="text" name ="doctorID" value="Search DoctorID..." onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search DoctorID...';}" required="">
					<input type="submit" value="Search" >
				</form>
				<form action="searchdocname">
					<input type="text" name ="doctorName" value="Search DoctorName..." onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search DoctorName...';}" required="">
					<input type="submit" value="Search" >
				</form>
				<form action="doctorrecom">
					<input type="text" name ="Disease" value="Search Disease..." onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search Disease...';}" required="">
					<input type="submit" value="Search" >
				</form>
			</div>
		</div>
	</div>
<!-- //banner -->
<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="banner-bottom-grid">
			<div class="banner-bottom-left">
				<div class="banner-bottom-left1">
					<h3>01. Quia dolor sit amet</h3>
					<p>Temporibus autem quibusdam et aut officiis debitis aut rerum 
						necessitatibus saepe eveniet ut et voluptates 
						repudiandae sint.</p>
					<div class="more m1">
						<a href="single.html">Learn More</a>
					</div>
				</div>
			</div>
			<div class="banner-bottom-right">
				<div class="banner-bottom-right1">
					<h3>02. Tempor aut quibusdam</h3>
					<p>Temporibus autem quibusdam et aut officiis debitis aut rerum 
						necessitatibus saepe eveniet ut et voluptates 
						repudiandae sint.</p>
					<div class="more m1">
						<a href="single.html">Learn More</a>
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="banner-bottom-grid">
			<div class="banner-bottom-left banner-bottom-lft1">
				<div class="banner-bottom-left1">
					<h3>03. Officiis debitis aut</h3>
					<p>Temporibus autem quibusdam et aut officiis debitis aut rerum 
						necessitatibus saepe eveniet ut et voluptates 
						repudiandae sint.</p>
					<div class="more m1">
						<a href="single.html">Learn More</a>
					</div>
				</div>
			</div>
			<div class="banner-bottom-right banner-bottom-rit1">
				<div class="banner-bottom-right1">
					<h3>04. Saepe eveniet ut et</h3>
					<p>Temporibus autem quibusdam et aut officiis debitis aut rerum 
						necessitatibus saepe eveniet ut et voluptates 
						repudiandae sint.</p>
					<div class="more m1">
						<a href="single.html">Learn More</a>
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //banner-bottom -->
<!-- welcome -->
	<div class="welcome">
		<div class="container">
			<h3>Welcome !</h3>
			<p class="et">Famous Doctors Exhibition</p>
			<div class="welcome-grids">
			
				<div class="col-md-6 welcome-grid">
					<div class="welcome-grid-left">
						<h4 clickable="clickable" onclick="show(this);" id="doctorName" >Amy</h4>
						<p>Adipisci velit, sed quia non numquam eius modi tempora incidunt 
							ut labore et dolore magnam aliquam quaerat voluptatem</p>
					</div>
					<div class="welcome-grid-right">
						<img src="images/1.jpg" alt=" " class="img-responsive" />
					</div>
					<div class="clearfix"> </div>
				</div>
				
				<div class="col-md-6 welcome-grid">
					<div class="welcome-grid-right aliquam">
						<img src="images/2.jpg" alt=" " class="img-responsive" />
					</div>
					<div class="welcome-grid-left non">
						<h4 clickable="clickable" onclick="show(this);" id="doctorName">Jack</h4>
						<p>Adipisci velit, sed quia non numquam eius modi tempora incidunt 
							ut labore et dolore magnam aliquam quaerat voluptatem</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
			
			<div class="welcome-grids">
				<div class="col-md-6 welcome-grid">
					<div class="welcome-grid-left">
						<h4 clickable="clickable" onclick="show(this);" id="doctorName">Tom</h4>
						<p>Adipisci velit, sed quia non numquam eius modi tempora incidunt 
							ut labore et dolore magnam aliquam quaerat voluptatem</p>
					</div>
					<div class="welcome-grid-right">
						<img src="images/3.jpg" alt=" " class="img-responsive" />
					</div>
					<div class="clearfix"> </div>
				</div>
				
				<div class="col-md-6 welcome-grid">
					<div class="welcome-grid-right aliquam">
						<img src="images/4.jpg" alt=" " class="img-responsive" />
					</div>
					<div class="welcome-grid-left non">
						<h4 clickable="clickable" onclick="show(this);" id="doctorName">Lily</h4>
						<p>Adipisci velit, sed quia non numquam eius modi tempora incidunt 
							ut labore et dolore magnam aliquam quaerat voluptatem</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //welcome -->

<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >手机网站模板</a></div>
<!-- about -->
	<div class="about">
		<div class="container">
			<h3>About Us</h3>
			<p class="et">Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, 
				consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt 
				ut labore et dolore magnam aliquam quaerat voluptatem.</p>
			<div class="about-grid">
				<div class="col-md-4 about-grid">
					<img src="images/5.jpg" alt=" " class="img-responsive" />
					<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, 
						consectetur, adipisci velit ut labore et dolore magnam aliquam quaerat voluptatem.</p>
					<ul>
						<li><a href="#" class="facebook"></a></li>
						<li><a href="#" class="twitter"></a></li>
						<li><a href="#" class="g"></a></li>
						<li><a href="#" class="in"></a></li>
					</ul>
				</div>
				<div class="col-md-4 about-grid abt-grid">
					<h2>Advantages</h2>
					<ul>
						<li><a href="#">Labore et dolore magnam</a></li>
						<li><a href="#">Qui dolorem ipsum quia</a></li>
						<li><a href="#">Neque porro quisquam est</a></li>
						<li><a href="#">Dolore magnam aliquam</a></li>
						<li><a href="#">Velit ut labore et dolore</a></li>
					</ul>
					<h2>What We Offer</h2>
					<ul>
						<li><a href="#">Labore et dolore magnam</a></li>
						<li><a href="#">Qui dolorem ipsum quia</a></li>
						<li><a href="#">Neque porro quisquam est</a></li>
						<li><a href="#">Dolore magnam aliquam</a></li>
						<li><a href="#">Velit ut labore et dolore</a></li>
					</ul>
				</div>
				<div class="col-md-4 about-grid abt-grid1">
					<h1>Meet Our Staff</h1>
					<div class="banner-bottom-video-grid-left">
					<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					  <div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
						  <h4 class="panel-title">
							<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
							  Staff Member
							</a>
						  </h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
						  <div class="panel-body pannel-img">
							<p>Anim pariatur cliche reprehenderit.</p>
							<ul>
								<li><a href="#" class="f"></a></li>
								<li><a href="#" class="f1"></a></li>
								<li><a href="#" class="f2"></a></li>
							</ul>
						  </div>
						</div>
					  </div>
					  <div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
						  <h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
							  Staff Member
							</a>
						  </h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
						   <div class="panel-body pannel-img1">
							<p>Anim pariatur cliche reprehenderit.</p>
							<ul>
								<li><a href="#" class="f"></a></li>
								<li><a href="#" class="f1"></a></li>
								<li><a href="#" class="f2"></a></li>
							</ul>
						  </div>
						</div>
					  </div>
					  <div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingThree">
						  <h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
							  Staff Member
							</a>
						  </h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
						   <div class="panel-body pannel-img2">
							<p>Anim pariatur cliche reprehenderit.</p>
							<ul>
								<li><a href="#" class="f"></a></li>
								<li><a href="#" class="f1"></a></li>
								<li><a href="#" class="f2"></a></li>
							</ul>
						  </div>
						</div>
					  </div>
					  
				</div>
				</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //about -->
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