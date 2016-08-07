do 

local function run(msg, matches) 

if ( msg.text ) then

  if ( msg.to.type == "user" ) then

 return "🌐 للتحدث مع المطور اضغط 👍 عالمعرف التالي🔸 ❕@sajjad_iq98\n 🌐 اذا كنت محظور راسلنا عبر بوت التواصل  🔸 ❕@sajjad_aliraqi_bot \n 🌐 تابع جديدنا على قناة البوت 🔸❕@sajad_iq98 "

    
  end 

end 

-- @sajjad_iq98

end 

return { 
  patterns = { 
       "(.*)$"
  }, 
  run = run, 
} 

end 

