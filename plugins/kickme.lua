--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY SAJJAD HUSSIEN                 ▀▄ ▄▀ 
▀▄ ▄▀   BY SAJJADHUSSIEN   (@sajjad_iq98)  ▀▄ ▄▀    
▀▄ ▄  JUST WRITED BY SAJJAD HUSSIEN        ▀▄ ▄▀ 
▀▄ ▄▀    kickme      :        اطردني       ▀▄ ▄▀  
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
do

local function run(msg, matches) 
if matches[1] == 'اطردني' then 
local hash = 'kick:'..msg.to.id..':'..msg.from.id 
     redis:set(hash, "waite") 
return '#عزيزي (@'..msg.from.username..')\n هل انت متأكد برغبتك لمغادرة ❕ المجموعه\nارسل لي كلمة (نعم) لاقوم باخراجك من المجموعه 🔸 اذا كنت ترغب في البقاء في المجموعه الرجاء ارسل كلمه (لا) لي وشكرا 😽'    
end 

    if msg.text then 
   local hash = 'kick:'..msg.to.id..':'..msg.from.id 
      if msg.text:match("^نعم$") and redis:get(hash) == "waite" then 
     redis:set(hash, "ok") 
   elseif msg.text:match("^لا$") and redis:get(hash) == "waite" then 
   send_large_msg(get_receiver(msg), "⚠️ تم الغاء الامر 👍😽")
     redis:del(hash, true) 

      end 
    end 
   local hash = 'kick:'..msg.to.id..':'..msg.from.id 
    if redis:get(hash) then 
        if redis:get(hash) == "ok" then 
         channel_kick("channel#id"..msg.to.id, "user#id"..msg.from.id, ok_cb, false) 
         return 'تم ☑️ اخراج العضو من المجموعه 😽❤️  ('..msg.to.title..')' 
        end 
      end 
    end 

return { 
  patterns = { 
  "اطردني", 
  "^نعم$", 
  "^لا$" 
  }, 
  run = run, 
}

end
