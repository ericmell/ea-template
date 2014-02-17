
<#include "../../../common/freemarker/include_header.ftl">
<#macro size_show  size_value>
	<#assign size_length= size_value?length>
	<#if size_length lt 6>
	       ${size_value?default("")} bety
	      <#else>
	       ${size_value[0..size_length-7]?default("")}M
	</#if>
</#macro>
<body style="padding:10px">
JVM

<br>runtime.totalMemory:<@size_show rhs["runtime"].totalMemory()  />	
<br>runtime.freeMemory:<@size_show rhs["runtime"].freeMemory()  />	
<br>runtime.maxMemory:<@size_show rhs["runtime"].maxMemory()  />	
<br>runtime.availableProcessors:${ rhs["runtime"].availableProcessors() }个

<br>
<br>数据库配置文件:${rhs["hashmap_system"]["database-filename"]}

<br><br>框架版本
<br>spring :${rhs["hashmap_system"]["spring-version"]}
<br>hibernate :${rhs["hashmap_system"]["hibernate-version"]}
<br>struts :${rhs["hashmap_system"]["struts-version"]}
<br>freemarker :${rhs["hashmap_system"]["freemarker-version"]}
<br>h2 :${rhs["hashmap_system"]["h2-version"]}
<br>jetty :${rhs["hashmap_system"]["jetty-version"]}
<br>servlet :${rhs["hashmap_system"]["servlet-version"]}
<br>xml-sax-parser :${rhs["hashmap_system"]["xml-sax-parser-version"]}


<br><br>CLASSPATH:
<br>JAVA_HOME: ${rhs["hashmap_system"]["JAVA_HOME"]}
<br>lib:${rhs["hashmap_system"]["classpath"]}

<br><br>系统属性
<#list rhs["hashmap_system"]?keys as k>
 <br>   ${k}: ${rhs["hashmap_system"][k]}
</#list>
<#--
-->
<#---->
</body>
<#--
<br>runtime.totalMemory:${rhs["runtime"].totalMemory()}
<br>runtime.freeMemory:${rhs["runtime"].freeMemory()}
<br>runtime.maxMemory:${rhs["runtime"].maxMemory()}
<hr>
-->