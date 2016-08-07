--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY SAJJAD HUSSIEN                 ▀▄ ▄▀ 
▀▄ ▄▀   BY SAJJADHUSSIEN   (@sajjad_iq98)  ▀▄ ▄▀    
▀▄ ▄  JUST WRITED BY SAJJAD HUSSIEN        ▀▄ ▄▀   
▀▄ ▄▀     delete  : حذف الرسائل           ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
local function history(extra, suc, result)
  for i=1, #result do
    delete_msg(result[i].id, ok_cb, false)
  end
  if tonumber(extra.con) == #result then
    send_msg(extra.chatid, '"'..#result..'"من الرسائل ✉️ تم ☑️ تنظيفها 👍😽', ok_cb, false)
  else
    send_msg(extra.chatid, 'تم ☑️ حذف ✖️ الرسائل بنجاح 👍😽', ok_cb, false)
  end
end
local function sajjadhussien(msg, matches)
  if matches[1] == 'تنظيف' and is_sudo(msg) then
    if msg.to.type == 'channel' then
      if tonumber(matches[2]) > 1000 or tonumber(matches[2]) < 1 then
        return "يمكنك وضع 1000 عدد الرسائل كبد عمري 😽✋"
      end
      get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = msg.to.peer_id, con = matches[2]})
    else
      return ""
    end
  else
    return "😜 لآ تـمسَلتَ بَكْيـفكَ  ✋☝🏿️"
  end
end

return {
    patterns = {
        '^(تنظيف) (%d*)$'
    },
    run = sajjadhussien
}
