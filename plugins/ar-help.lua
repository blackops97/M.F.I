do 

function run(msg, matches) 
  return [[ 
مرحبا بكم في بوت سجاد العراقي
الاوامر الاساسيه التي تحتاجها
🌐▶️〰️〰️〰️〰️〰️◀️🌐

♻️ م1: الاوامر الرئيسية ♻️

♻️ م2: الاوامر الثانوية ♻️

♻️ م3 اوامر حماية المجموعه ♻️

♻️ م4: اوامر الميديا ♻️

♻️ م المطور: اوامر المطور ♻️

🌐▶️〰️〰️〰️〰️〰️◀️🌐

®️™ dev 🔧 @sajjad_iq98
®️™️ channel 🔧@sajad_iq98
®™ bot dev🔧:   @sajjad_aliraqi_bot
]] 

end 

return { 
description = "Help list", 
usage = "Help list", 
patterns = { 
"^(الاوامر)$", 
}, 
run = run 
} 
end
