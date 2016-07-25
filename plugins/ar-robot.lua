--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                       ▀▄ ▄▀ 
▀▄ ▄▀     BY sajad_iq                       ▀▄ ▄▀ 
▀▄ ▄▀     BY sajad_iq   (@sajjad_iq98)      ▀▄ ▄▀ 
▀▄ ▄▀      channel      (@sajad_iq98        ▀▄ ▄▀ 
▀▄ ▄▀   تشغيل او اطفاء البوت في دردشة مجد ▀▄ ▄▀  
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
local function is_channel_disabled( receiver )
	if not _config.disabled_channels then
		return false
	end

	if _config.disabled_channels[receiver] == nil then
		return false
	end

  return _config.disabled_channels[receiver]
end

local function enable_channel(receiver)
	if not _config.disabled_channels then
	   _config.disabled_channels = {}
	end

	if _config.disabled_channels[receiver] == nil then
	return 'البوت بالتأكيد ☑️ تم تفعيله 👍 في المجموعه ✋'
	end
	
	_config.disabled_channels[receiver] = false

	save_config()
	return "تم ☑️ تشغيل 👍 البوت في المجموعه ✋😽"
end

local function disable_channel( receiver )
	if not _config.disabled_channels then
       _config.disabled_channels = {}
	end
	
	_config.disabled_channels[receiver] = true

	save_config()
	return "تم ☑️ اطفاء ⚠️ البوت 👍 في المجموعه ✋😽"
end

local function pre_process(msg)
	local receiver = get_receiver(msg)
	
	-- If sender is moderator then re-enable the channel
	--if is_sudo(msg) then
	if is_momod(msg) then
	  if msg.text == "تشغيل البوت" then
	    enable_channel(receiver)
	  end
	end

  if is_channel_disabled(receiver) then
  	msg.text = ""
  end

	return msg
end

local function run(msg, matches)
	local receiver = get_receiver(msg)
	-- Enable a channel
	if matches[1] == 'تشغيل البوت' then
		return enable_channel(receiver)
	end
	-- Disable a channel
	if matches[1] == 'اطفاء البوت' then
		return disable_channel(receiver)
	end
end

return {
	description = "Plugin to manage Bot.", 
	usage = {
		"Bot on: enable BOT In a Group",
		"Bot off: disable Bot In a Group" },
	patterns = {
		"^(تشغيل البوت)",
		"^(اطفاء البوت)" }, 
	run = run,
	privileged = true,
	--moderated = true,
	pre_process = pre_process
}
