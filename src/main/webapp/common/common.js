/*去字前后空格*/
function trim(str){   
     str = str.replace(/^(\s|\u00A0)+/,'');   
     for(var i=str.length-1; i>=0; i--){   
         if(/\S/.test(str.charAt(i))){   
             str = str.substring(0, i+1);   
             break;   
         }   
     }   
     return str;   
 }  