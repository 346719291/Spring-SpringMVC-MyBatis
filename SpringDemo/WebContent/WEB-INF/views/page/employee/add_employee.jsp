<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="jpath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>界面框架</title>
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0" />
<!-- basic styles -->
<link href="${jpath }/static/plugins/assets/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="${jpath }/static/plugins/assets/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="${jpath }/static/plugins/assets/css/ace.min.css" />
<link rel="stylesheet"
	href="${jpath }/static/plugins/assets/css/ace-rtl.min.css" />
<link rel="stylesheet"
	href="${jpath }/static/plugins/assets/css/ace-skins.min.css" />
<script src="${jpath }/static/plugins/assets/js/ace-extra.min.js"></script>
<script src="${jpath }/js/system_chajiantable.js"></script>

<link rel="stylesheet"
	href="${jpath }/static/WebUpLoder/image-upload/style.css" />
<script type="text/javascript"
	src="${jpath }/static/WebUpLoder/css/webuploader.css"></script>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
</script>
</head>
<body>
	<form class="form-horizontal" id="forme" role="form">
		<div class="form-group">
			<label class="col-sm-3 control-label no-padding-right"
				for="form-field-1">姓名 </label>
			<div class="col-sm-9">
				<input type="text" id="name" name="Login_account"
					value="${conboxjson.Login_account }" placeholder="姓名"
					class="col-xs-10 col-sm-5" />
			</div>
		</div>

		<div class="space-4"></div>

		<div class="form-group">
			<label class="col-sm-3 control-label no-padding-right"
				for="form-field-2">身份证 </label>

			<div class="col-sm-9">
				<input type="password" id="sfz" name="Last_landing_time"
					value="${conboxjson.Last_landing_time }" placeholder="身份证"
					class="col-xs-10 col-sm-5" /> 
					<span
					class="help-inline col-xs-12 col-sm-7"> <span class="middle">
				</span>
				</span>
			</div>
		</div>
		<div class="clearfix form-actions">
			<div class="col-md-offset-3 col-md-9">
				<button class="btn btn-info" id="subBtn" type="button">
					<i class="icon-ok bigger-110"></i> 注册
				</button>
				&nbsp; &nbsp; &nbsp;
				<button class="btn" type="reset" id="rest">
					<i class="icon-undo bigger-110"></i> 重置
				</button>
			</div>
		</div>
	</form>
	
	<script type="text/javascript">
		$(function() {
			$(".icon-undo").click(function(){
				$("#name").val(" ");
				$("#sfz").val(" ");
			});
			$("#subBtn").click(function(){
				 var name=$("#name").val();
				var sfz= $("#sfz").val();
				var regname = /^[A-Za-z\u4e00-\u9fa5]+$/;
				var regsfz = /^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$|^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/;
				if(!regname.test(name) && !regsfz.test(sfz)){
	                alert("输入错误");
	                reture;
	            }else{
	            	alrt("成功");
	            	var prem={
							name:name,
							crad_id:sfz
					}
					$.post("${jpath }/manager/add_em",prem);
	            	
	            } 
			});
		})
	</script>
</body>
</html>