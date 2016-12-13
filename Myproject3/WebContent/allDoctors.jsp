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
<title>图书列表</title>
<script type="text/javascript">
function show(e)
{
	var au = document.getElementById("author");
	window.location.href = "detail?title="+e.innerHTML+"&author="+au.innerHTML;
}
function del(e)
{
	var au = document.getElementById("isbn");
	window.location.href = "delete?isbn="+au.innerHTML;
}
</script>
</head>
<body>
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="page-header">
				<h1>
					<strong>医生列表</strong> 
				</h1>
			</div>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>
							ID
						</th>
						<th>
							姓名
						</th>
						<th>
						</th>
					</tr>
				</thead>
				<tbody>
				<s:iterator id="titleofbooks" value="allDoctors">
					<tr>
						<td>
							<p clickable="clickable" onclick="show(this);"><s:property value="value"/> </p>
						</td>
						<td>
						<p clickable="clickable" onclick="show(this);" id="id" ><s:property value="key"/> </p>
						</td>
					</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>
</html>