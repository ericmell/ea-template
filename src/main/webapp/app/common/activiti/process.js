function process_complete_task(formId){
	var disSelects = $("select[disabled='disabled']");//获取所有被禁用的select
    disSelects.attr("disabled", false); //处理之前, 全部打开
    var disInputs = $("input[disabled='disabled']");//获取所有被禁用的input
    disInputs.attr("disabled", false); //处理之前, 全部打开
    var disAreas = $("textarea[disabled='disabled']");//获取所有被禁用的textarea
    disAreas.attr("disabled", false); //处理之前, 全部打开
    $("#"+formId).submit(); //提交
}
// 选择后，如果不需要选人的话，隐藏选人了
function process_show_assignee(obj, showArray){
	var flag = obj.value;
	if($.inArray(flag, showArray) != -1){
		document.getElementById('assignee_div').style.display='block';
	}else{
		document.getElementById('assignee_div').style.display='none';
	}
}