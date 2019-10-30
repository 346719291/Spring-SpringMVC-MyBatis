$(function() {
	$.fn.extend({
				loadCombox : function() {
					this
							.find("input[type='conboxselectnumber']")
							.each(
									function(index, _this) {
										var user_number = $(_this).attr("id");
										var user_name = $(_this).attr("name");
										var user_value = $(_this).attr("value");
										$(_this).hide();
										var selectStr = '<select id="'
												+ user_number
												+ 'sffs" class="col-xs-10 col-sm-5"><option >请选择</option></select>';
										$(_this).after(selectStr);
										$
												.post(
														"${jpath }/Landing_meter/find",
														{},
														function(data) {
															var str = '';
															var json = $
																	.parseJSON(data);
															var conboxjson = json.obj;

															// var
															// results=json.obj;
															for (var i = 0; i < conboxjson.length; i++) {
																str += '<option value="'
																		+ conboxjson[i].number
																		+ '">'
																		+ conboxjson[i].Login_account
																		+ '</option>';
															}
															$(
																	"#"
																			+ user_number
																			+ "sffs")
																	.append(str);

														})
										$("#" + user_number + "sffs").change(
												function() {
													var stunb = $(this).val();
												});
									});
				},
				
				loadTbl:function(cl,param,url) {
					var isFY=true;
					var _tabl_this=this;
					$.post(url,param,function(data){
						var json=$.parseJSON(data);
						
						if(isFY){
							var xb='';
							if(json.res==1){
							var singsjfi='';
							if(singsjfi=='1'){
								singsjfi='disabled';
							}
						_tabl_this.after('<div class="modal-footer no-margin-top" style="display: none" id="fy"></div>');
						$("#fy").append('<ul class="pagination pull-right no-margin"></ul>');
							xb+='<li class="prev" '+singsjfi+' onclick="prevBtn('+json.obj.pageNum+','+json.obj.pageSize+')"><a href="#"> <i class="icon-double-angle-left" ></i></a></li>';
							xb+='<li class="prev" '+singsjfi+'><a href="#"> <i onclick="fristBtn('+json.obj.totalPage+','+json.obj.pageSize+')">第一页</i></a></li>';
							var ff=json.obj.totalRecord;
							if(ff>0)
							{
								$("#fy").show();
								for (var i=1; i <= json.obj.totalPage; i++) {
								var pn='';
								if(json.obj.pageNum==i){
									pn='class="active"';
								}
								var nowpage='';
								if(nowpage>3){
									xb+='<li '+pn+'><a href="#" >...</a></li>';
								}else if(nowpage<=3){
									xb+='<li '+pn+'><a href="#"  onclick="pagelick('+i+','+json.obj.pageSize+')">'+i+'</a></li>';
								}
									
								}
								var nextpre='';
								if(nextpre==json.obj.totalPage){
								nextpre='disabled';
							}
									xb+='<li class="prev" '+singsjfi+'><a href="#"> <i onclick="lastBtn('+json.obj.totalPage+','+json.obj.pageSize+')">最后页</i></a></li>';
								xb+='<li class="next" '+nextpre+' onclick="nextBtn('+json.obj.pageNum+','+json.obj.pageSize+','+json.obj.totalPage+')"><a href="#"> <i class="icon-double-angle-right" ></i></a></li>';
							}
						}
							$("#fy>ul").find("li").remove();
							$("#fy>ul").append(xb);
						}
						if(json.res=="1"){
							var result=json.obj.results;
							var tdStr='<tr>';
							for(var i=0;i<result.length;i++){
								for(var j=0;j<cl.length;j++){
									var clOne=cl[j].name;
									var clTwo=cl[j].cl;
									var tbl_html='';
									if(typeof clTwo=='function' && clTwo!=null){
									 tbl_html= clTwo(j,result[i][""+clOne+""]);
									}
									if(tbl_html!=""){
										tdStr+='<td>'+tbl_html+'</td>';
									}else{
										tdStr+='<td>'+result[i][""+clOne+""] +'</td>';
									}
								}
								tdStr+='</tr>';
							}
						 	_tabl_this.children("tbody").eq(0).append(tdStr);
						}
					});	
				}
			});
});

