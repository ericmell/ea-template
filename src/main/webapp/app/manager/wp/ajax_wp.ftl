

<div class="span11 content" id="div_wp_table">

   <table class="table table-condensed table-indie" id="ServiceListTable">
	    <thead>
			<tr>
			    <th width=25px >ID</th>
			    <th>周报标题</th>
				<th>周报内容</th>
				<th style="border-right-color: #DDD;">操作</th>
			</tr>
		</thead>
		<tbody>
		<#list rhs["dataList"]?sort_by("sortNob") as x>
			<tr>
				<td class=nob >
					${x_index+1}
				</td>
				<td onmouseover="rowOver(this)" onmouseout="rowOut(this)">
					<input type="text" value='${x.name?if_exists}' onchange="javascript:action_wp('update.do','column=name&id=${x.id?if_exists}&columnValue='+escape(encodeURIComponent(this.value)))" />
				</td>
				<td onmouseover="rowOver(this)" onmouseout="rowOut(this)">
					<input type="text" value='${x.content?if_exists}' onchange="javascript:action_wp('update.do','column=content&id=${x.id?if_exists}&columnValue='+escape(encodeURIComponent(this.value)))" />
				</td>
				
				<td onmouseover="rowOver(this)" onmouseout="rowOut(this)">
					<#--<a href=# onclick="javascript:action_wp('delete.do','id=${x.id}')" title="删除">删除</a>-->
					    <a title="删除节点" onclick="javascript:action_wp('delete.do','id=${x.id}');" class="ui-icon ui-icon-trash"  title=删除 ></a>
					    <#if (rhs["dataList"]?size!=1)>
						    <#if (x_index?string=="0")> 
								<a  onclick="javascript:action_wp('change_rank.do','id_from=${x.id?if_exists}&id_to=${rhs["dataList"]?sort_by("sortNob")[x_index+1].id}')"  class="ui-icon ui-icon-arrowthick-1-s" title=下移></a>
							<#else>
								<a  onclick="javascript:action_wp('change_rank.do','id_from=${x.id?if_exists}&id_to=${rhs["dataList"]?sort_by("sortNob")[x_index-1].id}')"  class="ui-icon ui-icon-arrowthick-1-n" title=上移></a>
						    	<#if x_has_next>
					 	 			<a  onclick="javascript:action_wp('change_rank.do','id_from=${x.id?if_exists}&id_to=${rhs["dataList"]?sort_by("sortNob")[x_index+1].id}')"  class="ui-icon ui-icon-arrowthick-1-s" title=下移></a>
						        </#if>
						 	</#if> 				
					    </#if> 				
				</td>
			</tr>
		</#list> 
		</tbody>
	</table>            
	<p class="pull-right">
		<#if (rhs.currentPage > 1) ><a class="btn btn-link btn-mini" onclick="javascript:action_wp('ajax_page_data.do','pageId=1')">第一页</a></#if>
		<#if (rhs.currentPage > 1) ><a class="btn btn-link btn-mini"  onclick="javascript:action_wp('ajax_page_data.do','pageId=${rhs.currentPage-1}')">上一页</a></#if>
		<#if (rhs.currentPage < rhs.maxPage) ><a class="btn btn-link btn-mini" onclick="javascript:action_wp('ajax_page_data.do','pageId=${rhs.currentPage+1}')">下一页</a></#if>
		<#if (rhs.currentPage < rhs.maxPage) ><a class="btn btn-link btn-mini"  onclick="javascript:action_wp('ajax_page_data.do','pageId=${rhs.maxPage}')">最后页</a></#if>
		第${rhs.currentPage}页&nbsp;
		共${rhs.maxPage}页&nbsp;
		总${rhs.count}条记录
		
		显示条数 
		<select style="WIDTH: 60px"   onchange="javascript:action_wp('change_page_number.do','maxSize='+this.value)" >
			<option value="${rhs.maxSize}">${rhs.maxSize}</option>
	  		<option value="5">5</option>
	  		<option value="10">10</option>
	  		<option value="20">20</option>
	  		<option value="50">50</option>
	  		<option value="50">200</option>
	 	</select>
	</p>
</div>
<span id="div_action_result" style="display:none">${rhs["info"]?if_exists}</span>
