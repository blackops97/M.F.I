do 

function run(msg, matches) 
return [[ 
helpme
☒info
⚪معلومات         
☑admins
⚪الادمنية          
☑owner
⚪المدير          
☑bots
⚪اضهار البوتات      
☑who
⚪الاعضاء          
☑id
⚪الايدي بالرد       
☑id from
⚪ايدي المجموعه     
-❥-❥-❥---❥--❥-
☑setowner
⚪اضافة مدير للبوت    
☑promote
⚪اصافه ادمن       
☑setadmin
⚪اضافه مشرف      
☑setname
⚪اضافه اسم       
☑setrules
⚪اضافه قوانين     
☑setabout
⚪اضافه وصف      
--♡--♡----♡--
☑rules
⚫اضهار القوانين      
☑about
⚪اضهار الوصف      
☑newlink
⚫انشاء رابط       
☑link
⚪اضهار الرابط      
--------------
☑lock 
[links|flood|spam|Arabic|member|rtl|sticker|contacts|strict] 
⚫قفل 
الرابط و التكرار و الكليشه و اللغه العربيه و الاضافه 
و الاشاره و الملصقات و الاتصالات و صارمه
☑unlock 
[links|flood|spam|Arabic|member|rtl|sticker|contacts|strict] 
⚪الغاء القفل 
الرابط و التكرار و الكليشه و اللغه العربيه و الاضافه 
والاشاره و الملصقات و التصالات و الصارم
---------------
☑لاتنسو الاشتراك في القناه
https://telegram.me/joinchat/Co8VOz6jgrpVlY2ZgOih0g
]] 
end 

return { 
description = "Shows bot q", 
usage = "help Shows bot q", 
patterns = { 
"helpme$" 
}, 
run = run 
} 
end