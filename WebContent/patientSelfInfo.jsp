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

<title>《<s:property value="bo.title"/>》及其作者(<s:property value="au.name"/>)的详细信息</title>
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
				<table class="table table-hover table-striped">
				<tbody>
					<tr class="success">
						<td>
							用户名（PatientID）
						</td>
						<td>
							<p id="id"><s:property value="pt.PatientID" /></p>
						</td>
					</tr>
					<tr>
						<td>
							姓名（PatientName）
						</td>
						<td>
							<p id="name"><s:property value=" pt.PatientName" /></p>
						</td>
					</tr>
					<tr class="success">
						<td>
							年龄（PatientAge）
						</td>
						<td>
							<p id="age"><s:property value="pt.PatientAge" /></p>
						</td>
					</tr>
					<tr>
						<td>
							性别（PatientSex）
						</td>
						<td>
							<p id="sex"><s:property value=" pt.PatientSex" /></p>
						</td>
					</tr>
					<tr class="success">
						<td>
							联系方式(Contact)
						</td>
						<td>
							<p id="contact"><s:property value="pt.PatientContact" /></p>
						</td>
					</tr>
					<tr>
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
					<tr>
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
				<button type="button" class="btn btn-default active" data-toggle="modal" data-target="#BModal">修改个人信息</button>&nbsp
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
				<a class="btn btn-default active" href="PatientIndex.jsp">修改密码</a>
				<a class="btn btn-default active" href="PatientIndex.jsp">返回首页>></a>
			</div>
		</div>
	</div>
</div>
</body>
</html>