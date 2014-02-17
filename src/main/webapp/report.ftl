
<#include "common/freemarker/include_header.ftl">

<script type="text/javascript" src="<@context_module/>myReport.js"></script>

<body style="padding:10px">

<strong>工作汇报</strong>
<br>多少年：
${javacall["com.utils.time.Time"].getHowManyYearToNow("2002-13-10")}
<#assign value= data.getmyrMonth(2011,0)>

	<div class="btn-group btn-group-xs" style="padding-bottom:10px">

	    <a class="btn btn-xs btn-warning" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })"><script>document.write(myYear())</script>年季度报告</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">第一季度</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">第二季度</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">第三季度</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">第四季度</a>
	</div>

<div>	
<br>
<script type="text/javascript">


function getDayNumByYearMonth(year,month){
	var daysInMonth = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
	if(month==1){
		var days=((0==year%4)&&(0!=(year%100)))||(0==year%400)?29:28;
	}else{
		var days=daysInMonth[month];
	}
	return days;
}

var today = new Date();
var year = today.getFullYear();
var month = today.getMonth();

var html ='';

for(i = 1; i < 13; i++){
	html += '<div class="col-xs-12 row show-grid ">';
	html += '<div class="btn-group btn-group-xs" >';
	html += '<a class="btn btn-xs btn-warning" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: \'iframe\' })">';
	html += i;
	html += '月</a>';
	for(j = 1; j < getDayNumByYearMonth(year, (i-1))+1;j++){
		html += '<a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: \'iframe\' })">';
		html += j;
		html += '</a>';
	}
	html += '</div>';
	html += '</div>';
}


document.write(html);
</script>
</div>





<#--
<#macro day_report month>
    <div class="col-xs-12">
	    <div class="btn-group btn-group-xs" >
	    <a class="btn btn-xs btn-warning" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">${month}月</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">1</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">2</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">3</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">4</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">5</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">6</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">7</a>
	   
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">8</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">9</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">10</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">11</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">12</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">13</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">14</a>
	   
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">15</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">16</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">17</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">18</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">19</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">20</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">21</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">22</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">23</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">24</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">25</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">26</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">27</a>
	    <a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">28</a>
	    <#if month != 2>
	    	<a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">29</a>
	    	<a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">30</a>
	    	<#if month != 4 && month != 6 && month != 9 && month !=11>	    
	    		<a class="btn btn-xs btn-info" href="ea_rolegroup_menu_rolegroup.do"  onclick="return hs.htmlExpand(this, { objectType: 'iframe' })">31</a>
	    	</#if>
	    </#if>
	    </div>
	</div>
</#macro>	
<div class="row show-grid ">
<@day_report  1 />
<@day_report  2 />
<@day_report  3 />
<@day_report  4 />
<@day_report  5 />
<@day_report  6 />
<@day_report  7 />
<@day_report  8 />
<@day_report  9 />
<@day_report  10 />
<@day_report  11 />
<@day_report  12 />
 </div>  
 -->
  <#---
  <div class="row show-grid">
    <div class="col-xs-1">.col-xs-1</div>
    <div class="col-xs-1">.col-xs-1</div>
    <div class="col-xs-1">.col-xs-1</div>
    <div class="col-xs-1">.col-xs-1</div>
    <div class="col-xs-1">.col-xs-1</div>
    <div class="col-xs-1">.col-xs-1</div>
    <div class="col-xs-1">.col-xs-1</div>
    <div class="col-xs-1">.col-xs-1</div>
    <div class="col-xs-1">.col-xs-1</div>
    <div class="col-xs-1">.col-xs-1</div>
    <div class="col-xs-1">.col-xs-1</div>
    <div class="col-xs-1">.col-xs-1</div>
  </div>
  <div class="row show-grid">
    <div class="col-xs-8">.col-xs-8</div>
    <div class="col-xs-4">.col-xs-4</div>
  </div>
 -->

</body>