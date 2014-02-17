<#include "../../../common/freemarker/include_header.ftl">
<script type="text/javascript" src="<@context_module/>rule.js"></script>
<body style="padding:20px">
<div class="row" style="padding-left:10px">
	<a class="btn btn-xs btn-default" href=# onclick="javascript:action_rule('create.do','id=root');">发布信息</a>
	<hr>
	<div id=div_rule_tree >
		<#include "ajax_rule.ftl">
	</div>
</div>
</body>