<#include "common/freemarker/include_header.ftl">
<style>
/* All levels of nav */
.bs-sidebar .nav > li > a {
  display: block;
  color: #716b7a;
  padding: 5px 20px;
}
.bs-sidebar .nav > li > a:hover,
.bs-sidebar .nav > li > a:focus {
  text-decoration: none;
  background-color: #e5e3e9;
  border-right: 1px solid #dbd8e0;
}
.bs-sidebar .nav > .active > a,
.bs-sidebar .nav > .active:hover > a,
.bs-sidebar .nav > .active:focus > a {
  font-weight: bold;
  color: #563d7c;
  background-color: transparent;
  border-right: 1px solid #563d7c;
}

/* Nav: second level (shown on .active) */
.bs-sidebar .nav .nav {
  display: none; /* Hide by default, but at >768px, show it */
  margin-bottom: 8px;
}
.bs-sidebar .nav .nav > li > a {
  padding-top:    3px;
  padding-bottom: 3px;
  padding-left: 30px;
  font-size: 90%;
}


</style>
<body style="background-color: #f7f5fa;">
  <div class="bs-sidebar hidden-print" >
    <ul class="nav bs-sidenav">
	  <li class="nav-header"></li>
		  <li ><a href="ea_organize_index.do" target="mainFrame">组织架构</a></li>
		  <li ><a href="ea_user_menu_user.do" target="mainFrame">用户管理</a></li>
		  <li ><a href="ea_rule_menu_rule.do" target="mainFrame">信息发布</a></li>
		  <li ><a href="ea_smtp_menu_smtp.do" target="mainFrame">邮箱系统</a></li>
		  <li ><a href="ea_systempara_menu_systempara.do" target="mainFrame">系统参数</a></li>
		  <li ><a href="ea_resource_menu_resource.do" target="mainFrame">权限</a></li>
		  <li ><a href="common_activiti_menu_process_definition.do" target="mainFrame">工作流</a></li>
 		  <li ><a href="common_monitor_home.do" target="mainFrame">运行状态</a></li>
		  <li onclick="menu_active(this)"> <a href="manager_tpltb1_menu_tpltb1.do" target="mainFrame">table-crud-ajax模式</a></li>
		  <li onclick="menu_active(this)"> <a href="manager_tpltb2_menu_tpltb2.do" target="mainFrame">table-crud-对话框模式</a></li>
		  <li onclick="menu_active(this)"> <a href="manager_tpltb3_list.do" target="mainFrame">table-crud-常见</a></li>
		  <li onclick="menu_active(this)"> <a href="manager_tpltree1_menu_tpltree1.do" target="mainFrame">tree-crud-ajax模式</a></li>
    	  <li onclick="menu_active(this)"> <a href="manager_wp_menu_wp.do" target="mainFrame">周报模式</a></li>
    	  <li onclick="menu_active(this)"> <a href="manager_wp2_list.do" target="mainFrame">周报模式二</a></li>
    </ul>
  </div>
</body> 
 