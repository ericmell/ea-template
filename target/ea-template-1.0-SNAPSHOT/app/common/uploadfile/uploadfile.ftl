<#include "../../../common/freemarker/include_header.ftl">
<form id="upload_form" action="common_uploadfile_uploadfile.do" method="post" enctype="multipart/form-data"> 
</form>
<script>
$("#loading_file_div", parent.document.body).css("display","none");
var h = "";
<#list rhs["uploadFiles"] as x>
	h += "<div id='${x.id}'><a href='${rhs.contextPath + x.url}'>${x.fileName}</a>&nbsp;&nbsp;";
	<#if rhs["readonly"]!="readonly" >
	h += "<a href='javascript:void(0);' onclick=\"javascript:del_file('common_uploadfile_delete_uploadfile.do','${x.id}')\" ><i class='icon-remove'></i>&nbsp;Delete</a></div>";
	</#if>
</#list>
$("#file_upload_div", parent.document.body).append(h);
</script>