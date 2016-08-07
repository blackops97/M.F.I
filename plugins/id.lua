do
function sajjadhussien (msg, matches)

local reply_id = msg ['id']

local sajad_iq = 'ايديك 🆔:: '..msg.from.id..'\n'
..'معرفك ❗️:: @'..msg.from.username..'\n'
..' المطور 🔧 @sajjad_iq98'

reply_msg(reply_id, sajad_iq, ok_cb, false)
end

return {
patterns = {
"(ايدي)$"
},
run = sajjadhussien
}
end
