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
	<div class="border_one">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="30"
					background="${jpath}/static/image_tab/images/tab_05.gif"><table
						width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="12" height="30"><img
								src="${jpath}/static/image_tab/images/tab_03.gif" width="12"
								height="30" /></td>
							<td><table width="100%" border="0" cellspacing="0"
									cellpadding="0">
									<tr>
										<td width="46%" valign="middle"><table width="100%"
												border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td width="5%"><div align="center">
															<img src="${jpath}/static/image_tab/images/tb.gif"
																width="16" height="16" />
														</div></td>
													<td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[业务中心]-[我的邮件]</td>
												</tr>
											</table></td>
										<td width="54%"><table border="0" align="right"
												cellpadding="0" cellspacing="0">
												<tr>
													<td width="60"><table width="87%" border="0"
															cellpadding="0" cellspacing="0">
															<tr>
																<td class="STYLE1"><div align="center">
																		<input type="checkbox" name="checkbox62"
																			value="checkbox" />
																	</div></td>
																<td class="STYLE1"><div align="center">全选</div></td>
															</tr>
														</table></td>
													<td width="60"><table width="90%" border="0"
															cellpadding="0" cellspacing="0">
															<tr>
																<td class="STYLE1"><div align="center">
																		<img src="${jpath}/static/image_tab/images/22.gif"
																			width="14" height="14" />
																	</div></td>
																<td class="STYLE1"><div align="center">新增</div></td>
															</tr>
														</table></td>
													<td width="60"><table width="90%" border="0"
															cellpadding="0" cellspacing="0">
															<tr>
																<td class="STYLE1"><div align="center">
																		<img src="${jpath}/static/image_tab/images/33.gif"
																			width="14" height="14" />
																	</div></td>
																<td class="STYLE1"><div align="center">修改</div></td>
															</tr>
														</table></td>
													<td width="52"><table width="88%" border="0"
															cellpadding="0" cellspacing="0">
															<tr>
																<td class="STYLE1"><div align="center">
																		<img src="${jpath}/static/image_tab/images/11.gif"
																			width="14" height="14" />
																	</div></td>
																<td class="STYLE1"><div align="center">删除</div></td>
															</tr>
														</table></td>
												</tr>
											</table></td>
									</tr>
								</table></td>
							<td width="16"><img
								src="${jpath}/static/image_tab/images/tab_07.gif" width="16"
								height="30" /></td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td><table width="100%" border="0" cellspacing="0"
						cellpadding="0">
						<tr>
							<td width="8"
								background="${jpath}/static/image_tab/images/tab_12.gif">&nbsp;</td>
							<td><table width="100%" border="0" cellpadding="0"
									cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"
									onmouseout="changeback()">
									<tr>
										<td width="3%" height="22"
											background="${jpath}/static/image_tab/images/bg.gif"
											bgcolor="#FFFFFF"><div align="center">
												<input type="checkbox" name="checkbox" value="checkbox" />
											</div></td>
										<td width="3%" height="22"
											background="${jpath}/static/image_tab/images/bg.gif"
											bgcolor="#FFFFFF"><div align="center">
												<span class="STYLE1">序号</span>
											</div></td>
										<td width="4.7%" height="22"
											background="${jpath}/static/image_tab/images/bg.gif"
											bgcolor="#FFFFFF"><div align="center">
												<span class="STYLE1">部门编号</span>
											</div></td>
										<td width="4.7%" height="22"
											background="${jpath}/static/image_tab/images/bg.gif"
											bgcolor="#FFFFFF"><div align="center">
												<span class="STYLE1">职位编号</span>
											</div></td>
										<td width="4.7%"
											background="${jpath}/static/image_tab/images/bg.gif"
											bgcolor="#FFFFFF"><div align="center">
												<span class="STYLE1">姓名</span>
											</div></td>
										<td width="4.7%" height="22"
											background="${jpath}/static/image_tab/images/bg.gif"
											bgcolor="#FFFFFF"><div align="center">
												<span class="STYLE1">身份证号</span>
											</div></td>
										<td width="4.7%" height="22"
											background="${jpath}/static/image_tab/images/bg.gif"
											bgcolor="#FFFFFF" class="STYLE1"><div align="center">地址</div></td>
										<td width="4.7%" height="22"
											background="${jpath}/static/image_tab/images/bg.gif"
											bgcolor="#FFFFFF"><div align="center">
												<span class="STYLE1">邮政编码</span>
											</div></td>
										<td width="4.7%" height="22"
											background="${jpath}/static/image_tab/images/bg.gif"
											bgcolor="#FFFFFF"><div align="center">
												<span class="STYLE1">座机</span>
											</div></td>
										<td width="4.7%"
											background="${jpath}/static/image_tab/images/bg.gif"
											bgcolor="#FFFFFF"><div align="center">
												<span class="STYLE1">电话号码</span>
											</div></td>
										<td width="4.7%" height="22"
											background="${jpath}/static/image_tab/images/bg.gif"
											bgcolor="#FFFFFF"><div align="center">
												<span class="STYLE1">qq</span>
											</div></td>
										<td width="4.7%" height="22"
											background="${jpath}/static/image_tab/images/bg.gif"
											bgcolor="#FFFFFF" class="STYLE1"><div align="center">邮箱</div></td>
										<td width="4.7%" height="22"
											background="${jpath}/static/image_tab/images/bg.gif"
											bgcolor="#FFFFFF"><div align="center">
												<span class="STYLE1">性别</span>
											</div></td>
										<td width="4.7%" height="22"
											background="${jpath}/static/image_tab/images/bg.gif"
											bgcolor="#FFFFFF"><div align="center">
												<span class="STYLE1">生日</span>
											</div></td>
										<td width="4.7%"
											background="${jpath}/static/image_tab/images/bg.gif"
											bgcolor="#FFFFFF"><div align="center">
												<span class="STYLE1">出生日期</span>
											</div></td>
										<td width="4.7%" height="22"
											background="${jpath}/static/image_tab/images/bg.gif"
											bgcolor="#FFFFFF"><div align="center">
												<span class="STYLE1">名族</span>
											</div></td>
										<td width="4.7%" height="22"
											background="${jpath}/static/image_tab/images/bg.gif"
											bgcolor="#FFFFFF" class="STYLE1"><div align="center">学历</div></td>
										<td width="4.7%" height="22"
											background="${jpath}/static/image_tab/images/bg.gif"
											bgcolor="#FFFFFF"><div align="center">
												<span class="STYLE1">优点</span>
											</div></td>
										<td width="4.7%" height="22"
											background="${jpath}/static/image_tab/images/bg.gif"
											bgcolor="#FFFFFF"><div align="center">
												<span class="STYLE1">爱好</span>
											</div></td>
										<td width="4.7%"
											background="${jpath}/static/image_tab/images/bg.gif"
											bgcolor="#FFFFFF"><div align="center">
												<span class="STYLE1">评论</span>
											</div></td>
										<td width="4.7%" height="22"
											background="${jpath}/static/image_tab/images/bg.gif"
											bgcolor="#FFFFFF"><div align="center">
												<span class="STYLE1">注册日期</span>
											</div></td>
										<td width="7%" height="22"
											background="${jpath}/static/image_tab/images/bg.gif"
											bgcolor="#FFFFFF" class="STYLE1"><div align="center">基本操作</div></td>
									</tr>
									<tbody id="sample-table-1"></tbody>

								</table></td>
							<td width="8"
								background="${jpath}/static/image_tab/images/tab_15.gif">&nbsp;</td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td height="35"
					background="${jpath}/static/image_tab/images/tab_19.gif"><table
						width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="12" height="35"><img
								src="${jpath}/static/image_tab/images/tab_18.gif" width="12"
								height="35" /></td>
							<td><table width="100%" border="0" cellspacing="0"
									cellpadding="0">
									<tr>
										<td class="STYLE4">&nbsp;&nbsp;共有 120 条记录，当前第 1/10 页</td>
										<td><table border="0" align="right" cellpadding="0"
												cellspacing="0">
												<tr>
													<td width="40"><img
														src="${jpath}/static/image_tab/images/first.gif"
														width="37" height="15" /></td>
													<td width="45"><img
														src="${jpath}/static/image_tab/images/back.gif" width="43"
														height="15" /></td>
													<td width="45"><img
														src="${jpath}/static/image_tab/images/next.gif" width="43"
														height="15" /></td>
													<td width="40"><img
														src="${jpath}/static/image_tab/images/last.gif" width="37"
														height="15" /></td>
													<td width="100"><div align="center">
															<span class="STYLE1">转到第 <input name="textfield"
																type="text" size="4"
																style="height: 12px; width: 20px; border: 1px solid #999999;" />
																页
															</span>
														</div></td>
													<td width="40"><img
														src="${jpath}/static/image_tab/images/go.gif" width="37"
														height="15" /></td>
												</tr>
											</table></td>
									</tr>
								</table></td>
							<td width="16"><img
								src="${jpath}/static/image_tab/images/tab_20.gif" width="16"
								height="35" /></td>
						</tr>
					</table></td>
			</tr>
		</table>
	</div>
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
	$(function(){
		$(".boder_two").hide();
		$.post("${jpath}/manager/findall",function(data){
			var result = $.parseJSON(data);
			var Std='';
			 
			console.log("++0"+result);
				for (var i= 0; i<result.length; i++) {
					Std+='<tr><td height="20" bgcolor="#FFFFFF"><div align="center">';
					Std+='<input type="checkbox" name="checkbox2" value="checkbox" /></div></td>';
		            Std+=' <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">';
		            Std+='<div align="center">'+result[i].id+'</div>';
		            Std+='</div></td>';
		            Std+='<td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">'+result[i].dept_id+'</span></div></td>';
		            Std+='<td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">'+result[i].job_id+'</span></div></td>';
		            Std+='<td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">'+result[i].name+'</span></div></td>';
		            Std+='<td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">'+result[i].crad_id+'</span></div></td>';
		            Std+='<td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">'+result[i].address+'</span></div></td>';
		            Std+='<td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">'+result[i].post_code+'</span></div></td>';
		            Std+='<td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">'+result[i].tel+'</span></div></td>';
		            Std+='<td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">'+result[i].phone+'</span></div></td>';
		            Std+='<td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">'+result[i].qq_num+'</span></div></td>';
		            Std+='<td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">'+result[i].email+'</span></div></td>';
		            Std+='<td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">'+result[i].sex+'</span></div></td>';
		            Std+='<td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">'+result[i].party+'</span></div></td>';
		            Std+='<td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">'+result[i].birthday+'</span></div></td>';
		            Std+='<td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">'+result[i].race+'</span></div></td>';
		            Std+='<td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">'+result[i].education+'</span></div></td>';
		            Std+='<td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">'+result[i].speciality+'</span></div></td>';
		            Std+='<td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">'+result[i].hobby+'</span></div></td>';
		            Std+='<td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">'+result[i].remark+'</span></div></td>';
		            Std+='<td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">'+result[i].create_date+'</span></div></td>';
		            Std+=' <td height="20" bgcolor="#FFFFFF">';
		           	Std+='<div align="center"><span class="STYLE4">';/* \''+result[i].id+'\' */
		           	Std+='<img src="${jpath}/static/image_tab/images/edt.gif" width="16" height="16" onClick="editer(\''+result[i].id+'\')" />';
		           	Std+='编辑&nbsp;<br>';
		           	Std+='&nbsp;<img src="${jpath}/static/image_tab/images/del.gif" width="16" height="16" onClick="Del(\''+result[i].id+'\')" />删除</span></div></td></tr>';
				}
			$("#sample-table-1").append(Std);
		})
	});
	
	function editer(id){
		$(".border_one").hide();
		$(".boder_two").show();
		$.post("${jpath}/manager/findallin",{id:id});
	}
	function Del(id){
		$.post("${jpath}/delmanp",{id:id});
	}
</script>