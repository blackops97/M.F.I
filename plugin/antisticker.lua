local function kick_user(user_id, chat_id)
  local chat = 'chat#id'..chat_id
  local user = 'user#id'..user_id
  chat_del_user(chat, user, function (data, success, result)
    if success ~= 1 then
      local text = 'I can\'t kick '..data.user..' but he should be kicked'
      send_msg(data.chat, '', ok_cb, nil)
    end
  end, {chat=chat, user=user})
end

local function is_nosticker(chat_id)
  local hash =  'nosticker:'..chat_id
  local nosticker = redis:get(hash)
  return nosticker or false
end

function run(msg, matches)
    if msg.media and is_chat_msg(msg) then
    	if msg.media.type == 'document' then
    		if is_nosticker(msg.to.id) then
    			if is_momod2(msg) then return end
    			kick_user(msg.from.id,msg.to.id)
    			return 'ممنوع ❌ ارسال الملصقات والاصوات كان عليك عدم فعل ذالك 👿✋🏿'
    		end
    	end
	end
	if matches[1] == 'close' and matches[2] == 'sticker' then
		local hash =  'nosticker:'..msg.to.id
		redis:set(hash, true)
		return 'تم ☑️ تفعيل منع الملصقات 😈✊🏿'
	end
	if matches[1] == 'open' and matches[2] == 'sticker' then
		local hash =  'sticker:'..msg.to.id
		redis:del(hash)
		return 'تم☑️ الغاء تفعيل منع الملصقات 👿❌'
    end
end


return {
  description = "Anti sticker", 
  usage = {
  	"Anti sticker"
      },
  patterns = {
    "^!(open) (sticker)$",
    "^!(close) (sticker)$",
    "%[(document)%]",
    
  }, 
  run = run,
}
--[[ this plugin Developer by Flux Team]] 