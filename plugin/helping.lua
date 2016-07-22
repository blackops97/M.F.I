do 

function run(msg, matches) 
return [[ 

⚪helping 
☑اختيار الاوامر             


☑helpkick
⚪لاظهار اوامر الطرد          
☑helpme
⚫لاضهار الاوامر الرئيسية        
☐الاوامر تعمل [/!#]

]] 
end 

return { 
description = "Shows bot q", 
usage = "help Shows bot q", 
patterns = { 
"helping$" 
}, 
run = run 
} 
end 
