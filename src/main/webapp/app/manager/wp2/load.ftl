<#include "../../../common/freemarker/include_header.ftl">
<form action="manager_wp2_save.do" method="post" class="well form-horizontal">
<fieldset>
	<legend>Edit wp2</legend>
	
	<input type="hidden" name="bfobject.id" value='<#if rhs["wp2"]?exists>${rhs["wp2"].id?if_exists}</#if>' />
	<input type="hidden" name="bfobject.projectId" value='<#if rhs["wp2"]?exists>${rhs["wp2"].projectId?if_exists}</#if>' />

	<div class="control-group">
		<label class="control-label">周报标题</label>
		<div class="controls">
			<input type="text" name="bfobject.title" value='<#if rhs["wp2"]?exists>${rhs["wp2"].title?if_exists}</#if>' />
		</div>
	</div>
 
	<div class="control-group">
		<label class="control-label">周报描述</label>
		<div class="controls">
			<textarea name="bfobject.requestDesc"><#if rhs["wp2"]?exists>${rhs["wp2"].requestDesc?if_exists}</#if></textarea>
		</div>
	</div>
		
	<div class="controls">
		<input type="submit" class="btn" value="保存"/>
		<a title="返回" class="btn" href="manager_wp2_list.do">返回</a> 		
	</div>
</fieldset>	
</form>
       