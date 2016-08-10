do
local function pre_process(msg)
local aliraqi = msg['id']
local jode1 = 'sajjad_aliraqi:'..msg.to.id
    if redis:get(jode1) and not is_momod(msg) and msg.media and msg.media.type == 'photo' then 
        delete_msg(msg.id, ok_cb, true)
            send_large_msg(get_receiver(msg), '⚠️ ممنوع مشاركة ❕ الصور في المجموعة 👍😽 @'..msg.from.username)
            return "ok"
end
        return msg
    end -- made by @sajjad_iq98
    
 local function run(msg, matches)
     chat_id = msg.to.id
local reply_id = msg['id']
     if is_momod(msg) and matches[1]== 'تحذير' and matches[2]== 'الصور' then
         local jode = 'sajjad_aliraqi:'..msg.to.id
         redis:set(jode1, true)
         local jode1 = "تم ☑️ تفعيل تحذير ⚠️ الصور 🗻"
         return reply_msg(reply_id, jode1, ok_cb, false)
         end
local reply_id = msg['id']
    if not is_momod(msg) and matches[1]== 'تحذير' and matches[2]== 'الصور' then
    local jode = "تم ☑️ تفعيل تحذير ⚠️ الصور 🗻"
 return reply_msg(reply_id, jode, ok_cb, false)
end
local reply_id = msg['id']
if is_momod(msg) and matches[1]== 'الغاء تحذير' and matches[2]== 'الصور' then
    local jode1 = 'sajjad_aliraqi:'..msg.to.id
    redis:del(jode1)
    local jode1 = "تم ☑️ الغاء تحذير 👍 الصور 😽️"
    return reply_msg(reply_id, jode1, ok_cb, false)
end

local reply_id = msg['id']
if not is_momod(msg) and matches[1]== 'الغاء تحذير' and matches[2]== 'الصور' then
local jode1 = "تم ☑️ الغاء تحذير 👍 الصور 😽"
 return reply_msg(reply_id, jode1, ok_cb, false)
 end
-- made by @sajjad_iq98
end
return {
    patterns ={
        '^/(الغاء تحذير) (الصور)$',
        '^/(تحذير) (الصور)$'
    },
run = run,
pre_process = pre_process 
}
end
