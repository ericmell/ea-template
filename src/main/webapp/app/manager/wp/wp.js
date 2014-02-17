function action_wp(url,para){
	alert(url+"?"+para);
    $.ajax({
        type:"POST",
        url: "manager_wp_"+url,
        data:"beanname=WorkPage&"+para,
        cache: false,
        success: function(html){
        	if(url=="update.do"){
        		document.getElementById('div_action1_result').innerHTML=html;
        	}else{
        	    document.getElementById('div_wp_table').innerHTML=html;
        	}
       	 	tip_info();   	 
        }
    });  
}
