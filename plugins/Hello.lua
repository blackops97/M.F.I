--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀     BY sajad_iq                      ▀▄ ▄▀ 
▀▄ ▄▀     BY sajad_iq   (@sajjad_iq98)     ▀▄ ▄▀ 
▀▄ ▄▀      channel      (@sajad_iq98       ▀▄ ▄▀    
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]


do
    
local function sajad_iq(msg,matches)
    if matches[1] == "chat_add_user"  then 
      return "♨️ اهلا بك في المجموعه 👥 كبد حياتي 😻🙊\n".." ♨️ اسم المجموعه 👥:: "..msg.to.title.."\n".."ايدي 🆔 المجموعه 👥:: "..msg.to.id.."\n".."♨️ اسم الي ضافك 👍::"..(msg.from.first_name or " ").."\n".."♨️ معرف الي ضافك ✋:: @"..(msg.from.username or " ").."\n".."♨ معرفك :: @"..(msg.action.user.username or "لايوجد " ).."\n".."ايدي الي ضافك 🆔:: :"..msg.from.id
    elseif matches[1] == "chat_add_user_link" then
      return "♨️ اهلا بك في المجموعه 👥 كبد حياتي 😻🙊\n".." ♨️ اسم المجموعه 👥:: "..msg.to.title.."\n".."ايدي 🆔 المجموعه 👥:: "..msg.to.id.."\n".."♨️ اسم الي ضافك 👍::"..(msg.from.first_name or " ").."\n".."♨️ معرف الي ضافك ✋:: @"..(msg.from.username or " ").."\n".."♨ معرفك :: @"..(msg.action.user.username or "لايوجد " ).."\n".."ايدي الي ضافك 🆔:: :"..msg.from.id
    end
    if matches[1] == "chat_del_user" then
    return "♨️ الله وياك جرارة كلبي ✋💔 سد الباب وراك 👍"..msg.action.user.first_name
end
end
return {
    patterns = {
        "^!!tgservice (chat_add_user)$",
        "^!!tgservice (chat_add_user_link)$",
        "^!!tgservice (chat_del_user)$"
       
    },
 run = sajad_iq,
}
end

