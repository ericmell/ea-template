<#include "common/freemarker/include_header.ftl">
<head>
<style>
body{
	padding:0;
	width:100%;  
	height:100%;  
	margin: 0px auto;  
	background-color:#F5F5F5; 
}
a {
	color: #224888;

}
.container-fluid {
	padding: 0 10px 0 10px;
	margin: 0;
}
.nav-header {
	color: #224888;
	font-size: 14px;
	font-weight: bold;
}
.nav-list > .active > a, .nav-list > .active > a:hover {
	background-color: #456086;
}
</style>
</head>
<div class="container-fluid">
	<!-- <div class="well" style="padding: 12px 0;"> -->
	<div style="padding: 12px 0;">
		<ul class="nav nav-list">
	  <li class="nav-header">EA企业架构</li>
	  	
		  <li onclick="menu_active(this)"><a href="ea_organize_index.do" target="mainFrame">组织架构</a></li>
		  <li onclick="menu_active(this)"><a href="ea_user_menu_user.do" target="mainFrame">用户管理</a></li>
		  <li onclick="menu_active(this)"><a href="ea_rule_menu_rule.do" target="mainFrame">信息发布</a></li>
		  
		  <li onclick="menu_active(this)"><a href="ea_smtp_menu_smtp.do" target="mainFrame">邮箱系统</a></li>
		  <li onclick="menu_active(this)"><a href="ea_systempara_menu_systempara.do" target="mainFrame">系统参数</a></li>
		  <li onclick="menu_active(this)"><a href="ea_resource_menu_resource.do" target="mainFrame">权限</a></li>
 		  <li onclick="menu_active(this)"><a href="common_monitor_home.do" target="mainFrame">运行状态</a></li>
		  <li onclick="menu_active(this)"><a href="common_activiti_menu_process_definition.do" target="mainFrame">工作流</a></li>

		</ul>
	</div><!--/.well -->
</div>
<script>
function menu_active(obj){
	$(".active").removeClass("active");
	$(obj).addClass("active")
}
</script>



