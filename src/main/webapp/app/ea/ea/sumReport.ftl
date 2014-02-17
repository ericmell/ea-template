<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Ericsson OA Sign In</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="common/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }

    </style>
    <link href="common/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">

  </head>



<body>
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
</body>
</html>
