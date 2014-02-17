

<#include "../../../common/freemarker/include_header.ftl">
<script type="text/javascript" src="<@context/>app/ea/ea/ea.js"></script>
<script type="text/javascript" src="<@context/>app/ea/role/role.js"></script>
<script type="text/javascript" src="<@context_module/>organize.js"></script>
<#macro digui_rolegroup rolegroupNodes  flag >
	<#list rolegroupNodes as rolegroup>
		<#if !(rolegroup.getParentModel()?exists)> 
		<optgroup label="${rolegroup.name?if_exists}">
		<#else>
		 	<option   value="${rolegroup.id}">${flag} ${rolegroup.name?if_exists}</option> 
		</#if>
		<#if !(rolegroup.getChildRolegroups()?size<1)> 
		      <@digui_rolegroup rolegroup.getChildRolegroups()?sort_by('sortNob'),flag+"&nbsp;&nbsp;&nbsp;" />	
		</#if>
		<#if !(rolegroup.getParentModel()?exists)>  
		</optgroup>
		</#if>
	</#list> 
</#macro>

<script>
	$(function() {    $( "#div_scoll" ).draggable();});  
	function  scrolldiv_(id,h){  //定位层
	   obj=document.getElementById(id);
	   obj.style.top =  document.body.scrollTop+h;
	}
	function  show_dir(){  //定位层
	  if( document.getElementById('div_panel_control').style.display=='none'){
	  	document.getElementById('div_panel_control').style.display='block';
	  }else{
	  document.getElementById('div_panel_control').style.display='none';
	  }
	}
</script>

<body onload="document.getElementById('div_scoll').style.display ='none';">
<table width=520>
	<tr>
		<td valign=top >
			<b>${rhs["organize"].name}</b>
			&nbsp;&nbsp;&nbsp;
			
			<select  style="width:150px" onchange="action_organize_admin('ea_organize_create_role_in_organize.do','organizeId=${rhs["organize"].id?if_exists}'+'&rolegroupId='+this.value)">
			   <option   value="">请选择岗位</option> 
			   <@digui_rolegroup rhs["rolegroupRootList"]?sort_by('sortNob'),"" />	
			</select> 
			 *选择下拉框中的岗位后会自动创建职位角色
			<hr>
			<#include "ajax_organize_admin.ftl">
</table>
						
<div class="scoll" id="div_scoll"  style="margin-left:350px; cursor:hander;position:absolute;margin-top:100px;width:300px;z-index:10000;opacity:.6;background-color: #ffffff;">
<div class="well">
 	 <div id=div_panel_control style="padding:8px;border:1px solid #eee;cursor:hander; ">
 	    <a  style="float:right" href="#" onclick="document.getElementById('div_scoll').style.display ='none';" >X</a>
 	    <br>
 		<div id=div_select_user style="cursor:hander;"> </div>
	    <div id=div_add_new_user style="display:none;cursor:hander;">
		    <b> 新用户身份登记 </b> 
				<br>姓名 <input id=name value="" style="WIDTH: 120px"   />
		       <br>英文帐号<input id=account value="" style="WIDTH: 120px"   />
		      <input id=organize_id name=id type=hidden value=""/>
		     <br> <input id=role_id  type=hidden   value=""/>
		   	<button class="btn btn-xs btn-primary"  onclick= "javascript:action_organize_admin('ea_organize_create_new_user_in_role.do','name='+document.getElementById('name').value+'&account='+document.getElementById('account').value+'&roleId='+document.getElementById('role_id').value+'&organizeId=${rhs["organize"].id}');">新增用户</button>
	   </div>
  </div>
</div>  	 
</div>
	 	
<br><br><br><br><br><br><br><br><br><br><br><br>
<span id="div_action_result" style="display:none"></span>
<#--
-->