<#include "../../../common/freemarker/include_header.ftl">
<#assign count = 1 >

<div class="btn-group btn-group-xs" style="margin-left:500px;padding-bottom:10px">
	
	<#if rhs["type"] == 'year'>
		<h4>${rhs["name"]}的${rhs["year"]}年年度报告汇总</h4>
	<#elseif rhs["type"] == 'season'>
		<h4>${rhs["name"]}的${rhs["year"]}年季度报告汇总</h4>
	<#elseif rhs["type"] == 'month'>
		<h4>${rhs["name"]}的${rhs["year"]}年月报汇总</h4>
	<#elseif rhs["type"] == 'week'>
		<h4>${rhs["name"]}的${rhs["year"]}年周报汇总</h4>
	<#elseif rhs["type"] == 'day'>
		<h4>${rhs["name"]}的${rhs["year"]}年日报汇总</h4>
	</#if>
</div>

 <table class="table table-condensed table-bordered table-striped ">
 	<tbody>
		<#list rhs["sumReport"]?sort_by("date") as sumReport>	
			<#if count==5>
				<tr>	
				<#assign count = count -4 >							        			
			</#if>	
			<td>
			
				<#if rhs["type"] == 'week'>	
		        	<h5><strong>第${sumReport.date?substring(5)}周</strong></h5>		        
		        <#elseif rhs["type"] == 'season'>
		        	<h5><strong>第${sumReport.date?substring(5)}季度</strong></h5>	
		        <#elseif rhs["type"] == 'year'>
		        	
		        <#else>
		        	<h5><strong>${sumReport.date?substring(5)}</strong></h5>
		        </#if>	        
		        <br>${sumReport.content}
	        <td>
	        <#if count==5>
				</tr>
								        			
			</#if>	
		    <#assign count = count +1 >
		</#list> 
	</tbody>
</table>

<a class="btn btn-xs btn-info" style = "margin-left:545px" href="ea_ea_menu_workhomepage.do" target="mainFrame">-返回</a>

