<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
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

<!-- 后加的js,css -->
<style type="text/css">
.we p{
	font-size:15px;
	color:#999;
	line-height:1.8em;
	margin:0;
	
}
</style>
<script type="text/javascript">
function show(e)
{
	window.location.href = "searchdoc1?doctorName="+e.innerHTML;
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
			<div class="header" >	
					<div class="logo">
					   <a href="patientindex.jsp"><i class="glyphicon glyphicon-plus" aria-hidden="true"></i>自助挂号系统<span>为您的健康服务</span></a>
					</div>
					<div class="top-nav">
						<span class="menu"><img src="images/menu.png" alt=" " /></span>
						<ul class="nav">
							<li class="active"><a href="patientindex.jsp">主页</a></li>
							<li><a href="#News">新闻</a></li>
							<li><a href= "#DocShow">医生展示</a></li>
							<li><a href="servicesp.html">帮助</a></li>
							<li><a href="appointment.jsp">预约</a></li>
							<li class="dropdown"><s:a href="#" data-toggle="dropdown" class="dropdown-toggle">${user}<strong class="caret"></strong></s:a>
								<ul class="dropdown-menu">
									<li>
										 <a href="http://localhost:8080/HospitalS/patientSelfInfo.action">个人信息</a>
									</li>
									<li>
										 <a href="http://localhost:8080/HospitalS/Logoff.action">退出</a>
									</li>
									<li>
										 <a href="http://localhost:8080/HospitalS/query.action">预约查询</a>
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
				<form action="searchdocid1">
					<input type="text" name ="doctorID" value="按医生编号查找..." onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search DoctorID...';}" required="">
					<input type="submit" value="搜索一下你就知道" >
				</form>
				<form action="searchdocname1">
					<input type="text" name ="doctorName" value="按医生姓名查找..." onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search DoctorName...';}" required="">
					<input type="submit" value="搜索一下你就知道" >
				</form>
				<form action="doctorrecom1">
					<input type="text" name ="Disease" value="按疾病查找..." onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search Disease...';}" required="">
					<input type="submit" value="搜索一下你就知道" >
				</form>
			</div>
		</div>
	</div>
<!-- //banner -->
<!-- banner-bottom -->
	<div class="banner-bottom" id="News">
		<div class="banner-bottom-grid">
			<div class="banner-bottom-left">
				<div class="banner-bottom-left1">
					<h3>01.喜讯：我院在市规培评优表彰中斩获多奖</h3>
					<p>本报讯 （记者 傅谭娉）由北京医学教育协会和北京医学奖励基金会联合主办的“2016年度北京市住院医师规范化培训评优表彰活动”近日公布评选结果，我院荣获“最佳组织奖”。。。</p>
					<div class="more m1">
						<a href="singlep.html">阅读详情</a>
					</div>
				</div>
			</div>
			<div class="banner-bottom-right">
				<div class="banner-bottom-right1">
					<h3>02. 医疗设施展示</h3>
					<p>本院先进的医疗设施</p>
					<div class="more m1">
						<a href="galleryp.html">阅读详情</a><br/><br/><br/><br/><br/><br/>
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="banner-bottom-grid">
			<div class="banner-bottom-left banner-bottom-lft1">
				<div class="banner-bottom-left1">
					<h3>03. ICU护士下夜班偶遇路人 跪地CPR为救治赢得宝贵时间</h3>
					<p>本报讯 （记者 赵明曦 郭晶）“双手手指紧紧相扣，手掌根部垂直连续心外按压；一手按下额头，一手托起下巴，深吸一口气进而连续地人工呼吸……”这个情节不是医院的CPR培训，也不是在医院里的抢救，而是发生在东单路口的生死时速。</p>
					<div class="more m1">
						<a href="singlep2.html">阅读详情</a>
					</div>
				</div>
			</div>
			<div class="banner-bottom-right banner-bottom-rit1">
				<div class="banner-bottom-right1">
					<h3>04. 第十五届中国人口文化奖揭晓 我院荣获多项奖项</h3>
					<p>本报讯 （记者 郭晶）第十五届中国人口文化奖文学美术摄影类组委会近日在北京召开，第十一届全国政协副主席、中国人口文化促进会会长李。。.</p>
					<div class="more m1">
						<a href="singlep1.html">阅读详情</a><br/><br/><br/>
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //banner-bottom -->
<!-- welcome -->
	<div class="welcome" id = "DocShow">
		<div class="container">
			<h3>欢迎 !</h3>
			<p class="et">著名医生简介</p>
			<div class="welcome-grids">
			
				<div class="col-md-6 welcome-grid">
					<div class="welcome-grid-left">
						<h4 clickable="clickable" onclick="show(this);" id="doctorName" >小红</h4>
						<p>擅长于各种大小不同面积、不同深度烧伤的早、中、晚期及合并症的治疗。</p>
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
						<h4 clickable="clickable" onclick="show(this);" id="doctorName">金波</h4>
						<p>泌尿系统肿瘤、结石及各类泌尿系统疾病的诊断与治疗。</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
			
			<div class="welcome-grids">
				<div class="col-md-6 welcome-grid">
					<div class="welcome-grid-left">
						<h4 clickable="clickable" onclick="show(this);" id="doctorName">刘强</h4>
						<p>郭天康，男，主任医师、博士研究生导师、医学博士。长期从事外科临床医疗、教学、科研和医院管理工作。主持、参与完成省部级获奖科研10余项，在国际、国内专业学术期刊发表论文60余篇，其中，SCI20余篇，主持、指导参编普外科专著3部，现承担在研课题5项。2005被确定为甘肃省“555”创新人才工程人选， 2009年被确定为甘肃省领军人才工程第一层次人选，2010年被确定为享受国务院特殊津贴专家。</p>
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
						<h4 clickable="clickable" onclick="show(this);" id="doctorName">韩梅梅</h4>
						<p>丁进芳，女，主任检验师、硕士生导师，中共党员。毕业于兰州医学院医疗系，本科，学士学位。甘肃省临床检验中心副主任、甘肃省人民医院检验科主任、甘肃省医学会第六届常务理事、甘肃省检验专业委员会主任委员、中华医学会检验分会血液体液专家委员会委员。多次被评为甘肃省卫生厅、甘肃省人民医院优秀党员，先进工作者。</p>
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
	<div class="about" id = "AboutUS">
		<div class="container">
			<h3>About Us——xx医院</h3>
			<p class="et"> 保定市第一中心医 保定市第一中心医院最早的历史前身是1886年美国长老会在保定北关外创建的教会医院，距今已有130年的历史文
			化传承。1959年7月，在已整体迁出的河北医学院附属医院旧址上，来自这所老牌医院的医务专家团队，由院长徐校卿教授带队整建制迁入正式组建了
			当时的，集120院前急救、医疗、教学、科研、康复、社区医疗服务为一体的三级甲等综合医院，河北省卫生厅确定的四个地市级区域医疗中心之一。</p>
			<div class="about-grid">
				<div class="col-md-4 about-grid">
					<img src="images/5.jpg" alt=" " class="img-responsive" />
					<p> 保定市第一中hjddgjfhghjkfdhkjlhlkj\sghkhjgfskjjkhlghgjk就介绍随便写点</p>
				</div>
				<div class="col-md-4 about-grid abt-grid">
					<h2>优点</h2>
					<ul>
						<li>健康医疗环境</li>
						<li>强大的医生条件</li>
						<li>先进的医疗技术</li>
						<li>快速就医</li>
						<li>实在想不出来了</li>
					</ul>
					<h2>提供服务</h2>
					<ul>
						<li>自主搜索医生</li>
						<li>按病情推荐医生</li>
						<li>自主挂号</li>
						<li>医疗指南</li>
						<li>个人管理</li>
						<li>预约管理</li>
					</ul>
				</div>
				<div class="col-md-4 about-grid abt-grid1">
					<h1>我们的员工</h1>
					<div class="banner-bottom-video-grid-left">
					<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					  <div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
						  <h4 class="panel-title">
							<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
							  成员
							</a>
						  </h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
						  <div class="panel-body pannel-img">
							<p>于洋</p>
							<ul>
							</ul>
						  </div>
						</div>
					  </div>
					  <div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
						  <h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
							  成员
							</a>
						  </h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
						   <div class="panel-body pannel-img1">
							<p>郭鑫</p>
							<ul>
							</ul>
						  </div>
						</div>
					  </div>
					  <div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingThree">
						  <h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
							  成员
							</a>
						  </h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
						   <div class="panel-body pannel-img2">
							<p id = "we">马昊楠</p>
							<ul>
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