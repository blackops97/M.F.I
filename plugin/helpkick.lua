do 

function run(msg, matches) 
return [[ 
⚫helpkick

☑block
             ☑حضر عضو عن طريق الرد         
⚪ban 
☑حضر عضو عن طريق الايدي او اليوزر  
⚫unban
☑فك الحضر عن العضو عن طريق اليوز او الايدي
⚪kick
☑طرد عضو عن طريق الايدي او اليوز   
⚫kickme
☑للخروج من المجموعة            
☐del
♔مسح رسالة عن طريق الرد        

]] 
end 

return { 
description = "Shows bot q", 
usage = "help Shows bot q", 
patterns = { 
"helpkick$" 
}, 
run = run 
} 
end 
