--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY SAJJAD HUSSIEN                 ▀▄ ▄▀ 
▀▄ ▄▀   BY SAJJADHUSSIEN   (@sajjad_iq98)  ▀▄ ▄▀    
▀▄ ▄  JUST WRITED BY SAJJAD HUSSIEN        ▀▄ ▄▀ 
▀▄ ▄▀      help dev  : اوامر المطور        ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
do

local function run(msg, matches)
if is_sudo(msg) and matches[1]== "help dev" then
return [[  It is shown by the channel orders @sajad_iq98 🌐

✔️All orders to operate without setting / - !
〰️〰️〰️〰️〰️〰️〰️〰️〰️

❇️ /addbot : To activate Group

❇️ /rembot : To disable Group

❇️ /bot on : To run the bot to a certain group

❇️ /bot off :  To extinguish the boot to a certain group

❇️ /leave : To get out the bot of the group

❇️ get file : Fetch the file from the server

❇️ isup : Server with a link to improve the bot stop

❇️ isup cron : Link with the server to improve server

〰️〰️〰️〰️〰️〰️〰️〰️〰️
®️™️ dev 🔧 @sajjad_iq98
®️™️ channel 🔧 @sajad_iq98
®™ bot dev🔧:   @sajjad_aliraqi_bot
]]
end

if not is_sudo(msg) then
return "Developers Only 😎🖕🏿"
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"(help dev)"
},
run = run 
}
end
