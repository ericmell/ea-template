
<#include "../../../common/freemarker/include_header.ftl">

<script type="text/javascript" src="<@context_module/>myReport.js"></script>

<script>
   var para_string="";
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
	
	function data_save(date,column,retype){
		   //alert("content="+document.getElementById('content').value+"&date="+para_str+"&column="+para_col);
		   $.ajax({
	        type:"POST",
	        url: "ea_report_data_save.do",
	        data:"content="+escape(encodeURIComponent(document.getElementById('content').value))+"&date="+date+"&column="+column+"&retype="+retype,
	        cache: false,
	        success: function(html){
	           
	           document.getElementById('div_scoll').style.display ='none';
	        }
		   }); 
		}	
		
function data_read(date,column,retype){
	
   
	//alert("column="+para_col+"; value="+para_str);
    $.ajax({
	        type:"POST",
	        url: "ea_report_data_read.do",
	        data: "column="+column+"&value="+date+"&retype="+retype,
	        cache: false,
	        success: function(html){
	          document.getElementById('content').value=html;
	        }
		   }); 


	}		
	
</script>



<body style="padding:10px">


<#assign year= rhs["year"]?if_exists>

<table class ="table">
			<tr>
				<td width=80px><strong>工作汇报：</strong></td>	
				<td>	
					 <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">		      
					      <li class="dropdown">
					        <a href="ea_report_report.do?year=${year}" class="dropdown-toggle" data-toggle="dropdown">${year} 年<b class="caret"></b></a>
					        <ul class="dropdown-menu">
					        	<#list (javacall["com.utils.time.TimeUtil"].getCurrentYear()-7)..(javacall["com.utils.time.TimeUtil"].getCurrentYear()+2) as y>					        							
									<li><a href="ea_report_report.do?year=${y}" value=y>
										${y} 年
									</a></li>
								</#list>
					        </ul>
					      </li>		    
					  </div><!-- /.navbar-collapse --> 		
				  </td>
				  <td width=250px>	<strong>已录报告汇总查询 : </strong>
						<a  href="ea_report_sumReport.do?theYear=${year}&type=season&userAccount=" target="mainFrame"> 季报</a>
						<a  href="ea_report_sumReport.do?theYear=${year}&type=month&userAccount=" target="mainFrame"> 月报</a>
						<a  href="ea_report_sumReport.do?theYear=${year}&type=week&userAccount=" target="mainFrame"> 周报</a>
						<a  href="ea_report_sumReport.do?theYear=${year}&type=day&userAccount=" target="mainFrame"> 日报</a>
				  </td>	
				  
			</tr>
		</table> 

<h5>*点击下面的时间进行相应报告的预览、录入或修改</h5><br>

	<div class="btn-group btn-group-xs" style="margin-left:300px;padding-bottom:10px">
       
	    <a class="btn btn-xs btn-warning" href='#'  onclick="document.getElementById('title').innerHTML=${year}+'年度报告';date=${year};retype='year';javascript:data_read(date,'date',retype);document.getElementById('div_scoll').style.display ='';">${year}年度报告</a>
	    <a class="btn btn-xs btn-warning" href='#'  onclick="document.getElementById('title').innerHTML=${year}+'第一季度报告';date=${year}+'-1';retype='season';javascript:data_read(date,'date',retype);document.getElementById('div_scoll').style.display ='';">第一季度</a>
	    <a class="btn btn-xs btn-warning" href='#'  onclick="document.getElementById('title').innerHTML=${year}+'第二季度报告';date=${year}+'-2';retype='season';javascript:data_read(date,'date',retype);document.getElementById('div_scoll').style.display ='';">第二季度</a>
	    <a class="btn btn-xs btn-warning" href='#'  onclick="document.getElementById('title').innerHTML=${year}+'第三季度报告';date=${year}+'-3';retype='season';javascript:data_read(date,'date',retype);document.getElementById('div_scoll').style.display ='';">第三季度</a>
	    <a class="btn btn-xs btn-warning" href='#'  onclick="document.getElementById('title').innerHTML=${year}+'第四季度报告';date=${year}+'-4';retype='season';javascript:data_read(date,'date',retype);document.getElementById('div_scoll').style.display ='';">第四季度</a>
	</div>

<div id=div_scoll  style="margin-left:700px; cursor:hander;position:absolute;margin-top:50px;width:300px;z-index:10000;background-color: #ffffff;display:none">
<div id=div_panel_control style="padding:8px;border:1px solid #000;cursor:hander; ">

  <a  style="float:right" href="#" onclick="document.getElementById('div_scoll').style.display ='none';" >X</a>
 	
    录入内容：<span id=title></span>
    <br><br>
    <textarea id=content style = "width:280px" value="" rows=8 > </textarea>
    <br><br><button type="button" class="btn btn-xs btn-primary"  onclick="javascript:data_save(date,'date',retype,content);document.getElementById('div_scoll').style.display=='none';">保存</button>

</div>	
</div>	


<br>
	
<#assign  count = 1>
<#macro day_report month>
 	
    <div class="col-xs-12">
	    <div class="btn-group btn-group-xs" >
	    <#if month lt 10 >
		<a class="btn btn-xs btn-warning" href='#'  onclick="document.getElementById('title').innerHTML=${year}+'-'+${month}+'月报告';date=${year}+'-0'+${month};retype='month';javascript:data_read(date,'date',retype);document.getElementById('div_scoll').style.display ='';">${month}月</a>
		<#else>
		<a class="btn btn-xs btn-warning" href='#'  onclick="document.getElementById('title').innerHTML=${year}+'-'+${month}+'月报告';date=${year}+'-'+${month};retype='month';javascript:data_read(date,'date',retype);document.getElementById('div_scoll').style.display ='';">${month}月</a>
		</#if>
			<#list 1..javacall["com.utils.time.TimeUtil"].getDayNumByYearMonth(year,month-1) as day>
			
			<#if month lt 10 && day lt 10>			
			<a class="btn btn-xs btn-info" href="#"  onclick="document.getElementById('title').innerHTML=${year}+'-'+${month}+'-'+${day}+'日报告';date=${year}+'-0'+${month}+'-0'+${day};retype='day';javascript:data_read(date,'date',retype);document.getElementById('div_scoll').style.display ='';">${day}</a>				
			<#elseif month lt 10 && day gt 9>
			<a class="btn btn-xs btn-info" href="#"  onclick="document.getElementById('title').innerHTML=${year}+'-'+${month}+'-'+${day}+'日报告';date=${year}+'-0'+${month}+'-'+${day};retype='day';javascript:data_read(date,'date',retype);document.getElementById('div_scoll').style.display ='';">${day}</a>
			<#elseif month gt 9 && day lt 10>
			<a class="btn btn-xs btn-info" href="#"  onclick="document.getElementById('title').innerHTML=${year}+'-'+${month}+'-'+${day}+'日报告';date=${year}+'-'+${month}+'-0'+${day};retype='day';javascript:data_read(date,'date',retype);document.getElementById('div_scoll').style.display ='';">${day}</a>
			<#else>
			<a class="btn btn-xs btn-info" href="#"  onclick="document.getElementById('title').innerHTML=${year}+'-'+${month}+'-'+${day}+'日报告';date=${year}+'-'+${month}+'-'+${day};retype='day';javascript:data_read(date,'date',retype);document.getElementById('div_scoll').style.display ='';">${day}</a>
			</#if>
			<#assign week = javacall["com.utils.time.TimeUtil"].ifFirstDayOfWeek(year,month-1,day)>
		
				<#if week && count lt 10>
					<a class="btn btn-xs btn-warning" href="#"  onclick="javascript:document.getElementById('title').innerHTML=${year}+'年第'+${count}+'周报告';date=${year}+'-0'+${count};retype='week';data_read(date,'date',retype);document.getElementById('div_scoll').style.display ='';">${count}周</a>
					<#assign count = count +1 >
				<#elseif week >
					<a class="btn btn-xs btn-warning" href="#"  onclick="javascript:document.getElementById('title').innerHTML=${year}+'年第'+${count}+'周报告';date=${year}+'-'+${count};retype='week';data_read(date,'date',retype);document.getElementById('div_scoll').style.display ='';">${count}周</a>
					<#assign count = count +1 >
				</#if>
			</#list>
	    </div>
	</div>
</#macro>	



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
-->
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