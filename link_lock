local function pre_process(msg)
local run = msg['id']
local rash = 'aliraqi:'..msg.to.id
local link = msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Mm][Ee]/") or msg.text:match("[Tt][Ll][Gg][Rr][Mm]%.[Mm][Ee]/") or msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Oo][Rr][Gg]") or msg.text:match("[Gg][Oo][Oo]%.[Gg][Li]/") or msg.text:match("[Aa][Dd][Ff]%.[Ll][Yy]/") or msg.text:match("[Bb][Ii][Tt]%.[Ll][Yy]") or msg.text:match("[Cc][Ff]%.[Ll][Yy]/") or msg.text:match("[Bb][Vv]%.[Vv][Cc]/") or msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Mm][Ee]")
local bot = msg.text:match("?[Ss][Tt][Aa][Rr][Tt]=") or msg.text:match("?[Ss][Tt][Oo][Pp]=")
            if link and redis:get(rash) and not bot then
            delete_msg(msg.id, ok_cb, true)
            local dea = "عزيزي~{"..msg.from.first_name.."}".."\n".."⚠️ ممنوع مشاركة الروابط في المجموعه لا تعرفني شسوي  🌝👌".."\n".."🔸username: @"..(msg.from.username or " ") 
reply_msg(run, dea, ok_cb, true) 
        end 

        return msg 
    end 

local function run(msg, matches) 
local run = msg['id'] 
    chat_id =  msg.to.id 
    if matches[1] == 'تحذير' and matches[2] == "الروابط" and is_momod(msg) then 
                    local rash = 'aliraqi:'..msg.to.id 
                    redis:set(rash, true) 
                    local dd = 'تم ☑️ تفعيل تحذير 🚫 الروابط في المجموعه ❕🙂' 
reply_msg(run, dd, ok_cb, true) 
elseif matches[1] == 'تحذير' and matches[2] == 'الروابط' and not is_momod(msg) then 
local pxpp = '⚠️ للمشرفين فقط 💢 وليدي 🌝' 
reply_msg(run, pxpp, ok_cb, true) 

    elseif matches[1] == 'الغاء تحذير' and matches[2] == 'الروابط' and is_momod(msg) then 
      local rash = 'aliraqi:'..msg.to.id 
      redis:del(rash) 
    local gg = ' تم ☑️ الغاء تحذير💢 الروابط في المجموعه 😽' 
reply_msg(run, gg, ok_cb, true) 
elseif matches[1] == 'الغاء تحذير' and matches[2] == 'الروابط' and not is_momod(msg) then 
local pxff = '⚠️ للمشرفين فقط 💢 وليدي 🌝' 
reply_msg(run, pxff, ok_cb, true) 
end 
end 

return { 
    patterns = { 
        '^[!/#](تحذير) (.*)$', 
        '^[!/#](الغاء تحذير) (.*)$' 
    }, 
    run = run, 
    pre_process = pre_process 
}
