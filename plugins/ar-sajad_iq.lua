--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀     BY sajad_iq                      ▀▄ ▄▀ 
▀▄ ▄▀     BY sajad_iq   (@sajjad_iq98)     ▀▄ ▄▀ 
▀▄ ▄▀      channel      (@sajad_iq98       ▀▄ ▄▀ 
▀▄ ▄▀      VIRSON      :  الاصدار           ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]

do

function run(msg, matches)
local reply_id = msg['id']
  local S = '🔹   السورس 🔹 SAJAD_iq 📁\n🔹   الاصدار 📋 V1.1\n🔹  الموقع 🔹\n \nhttps://github.com/blackops97/SAJAD.iq\n🔹    المطور : @sajjad_iq98 \n 🔹   قناة_البوت:  @sajad_iq98 '
reply_msg(reply_id, S, ok_cb, false)
end

return {
  patterns = {
"^(الاصدار)$",
  }, 
  run = run 
}

end
