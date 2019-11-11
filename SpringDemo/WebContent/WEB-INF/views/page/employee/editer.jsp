<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>编辑</title>
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
					<i class="icon-ok bigger-110"></i> 确定
				</button>
				&nbsp; &nbsp; &nbsp;
				<button class="btn" type="reset" id="rest">
					<i class="icon-undo bigger-110"></i> 重置
				</button>
			</div>
		</div>
	</form>


</body>
</html>