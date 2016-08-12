local function pre_process(msg) 
  local jod1 = msg['id']
  local user = msg.from.id
  local chat = msg.to.id
  local hash = 'mate:'..chat..':'..user
  if msg.fwd_from and not is_momod(msg) then
    if redis:get(hash) and msg.fwd_from and not is_momod(msg) then 
      delete_msg(msg.id, ok_cb, false) 
      delete_msg(msg.id, ok_cb, false) 
      delete_msg(msg.id, ok_cb, false) 
      send_large_msg(get_receiver(msg), '#عزيزي ⚠️ ممنوع عمل اعاده توجيه 👍 في المجموعه 👌🌝\n#User @'..msg.from.username)
      redis:del(hash) 
   else
      delete_msg(msg.id, ok_cb, false) 
      redis:set(hash, true)
    end
  end
  return  msg
end
       

local function run(msg, matches) 
  local jode1 = msg['id'] 
  if matches[1] == 'تحذير التوجيه' then
    if is_momod(msg) then 
      local hash = 'mate:'..msg.to.id 
      redis:set(hash, true) 
         local x = "تم ☑️ تفعيل تحذير 🚫 اعاده توجيه في المجموعه 😽👍"
      reply_msg(jode1, x, ok_cb, true) 
    else 
      local asdy = '⚠️ للمشرفين فقط 🙂' 
      reply_msg(jode1, asdy, ok_cb, true) 
    end
  end
  if matches[1] == 'الغاء تحذير التوجيه' then
    if is_momod(msg) then 
      local hash = 'mate:'..msg.to.id 
      redis:del(hash) 
    local don = "تم ☑️ الغاء تحذير 💢 اعاده توجيه ❕ داخل المجموعه ⚠️"
      reply_msg(jode1, don, ok_cb, true) 
    else
      local sajjad_aliraqi = '⚠️ للمشرفين فقط 🙂' 
      reply_msg(jode1, sajjad_aliraqi, ok_cb, true) 
    end 
  end 
end
return { 
    patterns = {
"^[#!/](تحذير التوجيه)$",
"^[#!/](الغاء تحذير التوجيه)$"
    }, 
     
run = run, 
    pre_process = pre_process 
}
