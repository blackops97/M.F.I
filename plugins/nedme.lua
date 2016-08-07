do
 
 function ali(msg, matches)
 local ch = '113644348'..msg.to.id--هنا حط ايديك
 local fuse = 'طلب احدهم مجموعه🌚\n\nايديه 🆔' .. msg.from.id .. '\n\n♨️ اسمه ️' .. msg.from.print_name ..'\n\n🌐 معرفه@' .. msg.from.username ..'\n\n🆔 ايدي المجموعه'..msg.to.id.. '\n\n♨️ طلب ❗️ منك \n' .. matches[1]
 local fuses = '!printf user#id' .. msg.from.id


   local text = matches[1]
   local chat = "user#id"..113644348--هنا حط ايديك

  local sends = send_msg(chat, fuse, ok_cb, false)
return 'تم ارسال طلبك لصنع مجموعه الى المطور \n @sajjad_iq98\nالرجاء انتضار المطور لصنع مجموعه لك عزيزي \n\n@'..msg.from.username
end
 end
 return {

  description = "SuperGroup request",

  usage = "",
  patterns = {
  "^طلب كروب$"
  },
  run = SAJAD_iq
 }

