<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="jpath" value="${pageContext.request.contextPath }"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>员工添加</title>
<script src="${jpath}/js/jquery-2.0.3.min.js" type="text/javascript"></script>

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
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

.STYLE1 {
	font-size: 12px
}

.STYLE3 {
	font-size: 12px;
	font-weight: bold;
}

.STYLE4 {
	color: #03515d;
	font-size: 12px;
}
-->
</style>

<script>
var  highlightcolor='#c1ebff';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}
</script>

</head>

<body>
	<div class="boder_two">
		<form class="form-horizontal" id="forme" role="form">
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"
					for="form-field-1">姓名 </label>
				<div class="col-sm-9">
					<input type="text" id="name" name="Login_account"
						value="${list.name }" placeholder="姓名" class="col-xs-10 col-sm-5" />
				</div>
			</div>
			<div class="space-4"></div>


			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"
					for="form-field-2">身份证 </label>

				<div class="col-sm-9">
					<input type="password" id="sfz" name="Last_landing_time"
						value="${list.crad_id}" placeholder="身份证"
						class="col-xs-10 col-sm-5" /> <span
						class="help-inline col-xs-12 col-sm-7"> <span
						class="middle"> </span>
					</span>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"
					for="form-field-1">地址 </label>
				<div class="col-sm-9">
					<input type="text" id="adress" name="Login_account"
						value="${list.address}" placeholder="地址"
						class="col-xs-10 col-sm-5" />
				</div>
			</div>
			<div class="space-4"></div>

			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"
					for="form-field-1">邮政编码 </label>
				<div class="col-sm-9">
					<input type="text" id="post_code" name="Login_account"
						value="${list.post_code}" placeholder="邮政编码"
						class="col-xs-10 col-sm-5" />
				</div>
			</div>
			<div class="space-4"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"
					for="form-field-1">座机 </label>
				<div class="col-sm-9">
					<input type="text" id="post_code" name="Login_account"
						value="${list.tel}" placeholder="座机" class="col-xs-10 col-sm-5" />
				</div>
			</div>
			<div class="space-4"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"
					for="form-field-1">手机 </label>
				<div class="col-sm-9">
					<input type="text" id="post_code" name="Login_account"
						value="${list.phone}" placeholder="手机" class="col-xs-10 col-sm-5" />
				</div>
			</div>
			<div class="space-4"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"
					for="form-field-1">qq</label>
				<div class="col-sm-9">
					<input type="text" id="qq_num" name="Login_account"
						value="${list.qq_num}" placeholder="qq" class="col-xs-10 col-sm-5" />
				</div>
			</div>
			<div class="space-4"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"
					for="form-field-1">邮箱</label>
				<div class="col-sm-9">
					<input type="text" id="email" name="Login_account"
						value="${list.email}" placeholder="邮箱" class="col-xs-10 col-sm-5" />
				</div>
			</div>
			<div class="space-4"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"
					for="form-field-1">性别</label>
				<div class="col-sm-9">
					<input type="text" id="sex" name="Login_account"
						value="${list.sex}" placeholder="性别" class="col-xs-10 col-sm-5" />
				</div>
			</div>
			<div class="space-4"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"
					for="form-field-1">生日</label>
				<div class="col-sm-9">
					<input type="text" id="party" name="Login_account"
						value="${list.party}" placeholder="生日" class="col-xs-10 col-sm-5" />
				</div>
			</div>
			<div class="space-4"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"
					for="form-field-1">出生日期</label>
				<div class="col-sm-9">
					<input type="text" id="birthday" name="Login_account"
						value="${list.birthday}" placeholder="出生日期"
						class="col-xs-10 col-sm-5" />
				</div>
			</div>
			<div class="space-4"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"
					for="form-field-1">名族</label>
				<div class="col-sm-9">
					<input type="text" id="race" name="Login_account"
						value="${list.race}" placeholder="名族" class="col-xs-10 col-sm-5" />
				</div>
			</div>
			<div class="space-4"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"
					for="form-field-1">学历</label>
				<div class="col-sm-9">
					<input type="text" id="education" name="Login_account"
						value="${list.education}" placeholder="学历"
						class="col-xs-10 col-sm-5" />
				</div>
			</div>
			<div class="space-4"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"
					for="form-field-1">优点</label>
				<div class="col-sm-9">
					<input type="text" id="speciality" name="Login_account"
						value="${list.speciality}" placeholder="优点"
						class="col-xs-10 col-sm-5" />
				</div>
			</div>
			<div class="space-4"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"
					for="form-field-1">爱好</label>
				<div class="col-sm-9">
					<input type="text" id="hobby" name="Login_account"
						value="${list.hobby}" placeholder="爱好" class="col-xs-10 col-sm-5" />
				</div>
			</div>
			<div class="space-4"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"
					for="form-field-1">谈论</label>
				<div class="col-sm-9">
					<input type="text" id="remark" name="Login_account"
						value="${list.remark}" placeholder="谈论" class="col-xs-10 col-sm-5" />
				</div>
			</div>
			<div class="space-4"></div>
			<div class="form-group">
				<label class="col-sm-3 control-label no-padding-right"
					for="form-field-1">注册时间</label>
				<div class="col-sm-9">
					<input type="text" id="create_date" name="Login_account"
						value="${list.create_date}" placeholder="注册时间"
						class="col-xs-10 col-sm-5" />
				</div>
			</div>
			<div class="space-4"></div>
			<div class="clearfix form-actions">
				<div class="col-md-offset-3 col-md-9">
					<button class="btn btn-info" id="subBtn" type="button">
						<i class="icon-ok bigger-110"></i>添加
					</button>
					&nbsp; &nbsp; &nbsp;
					<button class="btn" type="reset" id="rest">
						<i class="icon-undo bigger-110"></i> 重置
					</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
<script>
	
</script>