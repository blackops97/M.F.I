--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀     BY sajad_iq                      ▀▄ ▄▀ 
▀▄ ▄▀     BY sajad_iq   (@sajjad_iq98)     ▀▄ ▄▀ 
▀▄ ▄▀      channel      (@sajad_iq98       ▀▄ ▄▀ 
▀▄ ▄▀          مساعدة 3                    ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
do

function run(msg, matches)
local reply_id = msg['id']
local S = [[ 
📍💭 اوامر حماية المجموعة 🀄️

💎 "قفل / فتح" الاضافه :↭↜ (التحكم بالاضافه داخل المجموعه)
💎 "قفل / فتح" الدردرشه :↭↜ (التحكم بالدردشه داخل المجموعه)
💎 "قفل / فتح" الملصقات :↭↜ (التحكم بالملصقات داخل المجموعه)
💎 "قفل / فتح" الروابط :↭↜ (التحكم بلروابط داخل المجموعه)
💎 "قفل / فتح" البوتات :↭↜ (التحكم بلبوتات داخل المجموعه)
ـ🔸➖🔹➖🔸➖🔹➖🔸ـ

🛡 "قفل / فتح" اعاده توجيه :↭↜ (التحكم باعادة التوجيه في المجموعه)
🛡 "قفل / فتح" الكلايش :↭↜ (التحكم بالكلايش داخل المجموعه)
🛡 "قفل / فتح" التكرار :↭↜ (التحكم في التكرار المجموعه)
🛡 "قفل / فتح" العربيه :↭↜ ( التحكم باللغه داخل المجموعه)
🛡 "قفل / فتح" جهات الاتصال :↭↜ (التحكم بالجهات في المجموعه)
🔸➖🔹➖🔸➖🔹➖
💯-Đєⱴ💀: @sajjad_iq98
💯-Đєⱴ Ϲḫ₳ͷͷєℓ💀: @sajad_iq98
]]
reply_msg(reply_id, S, ok_cb, false)
end

return {
description = "Help list", 
usage = "Help list",
patterns = {
"^(م3)$",
},
run = run 
}
end
