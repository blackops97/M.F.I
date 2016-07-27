do 

local function run(msg, matches) 

if ( msg.text ) then

  if ( msg.to.type == "user" ) then

return "♨️ للتحدث مع المطور ✋ اضغط ع المعرف 🌐 التالي ♨️\n❗️ @sajjad_iq98\n  \n🌐قناة البوت \n🌐 @sajad_iq98 😽👍"     
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

