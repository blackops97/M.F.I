--by @zaroga0

do

function run(msg, matches)
  return [[ 
📜 ⚡️Rollis B⊙T Ξ⚡️

🔶 اوامر القفل 📜🔒

🔹 /lock member  💭 قفل الاضافه 
🔹 /lock name 💭 قفل الاسم 
🔹 /lock bots 💭 قفل البوتات 

🔶 اوامر الفتح 📜🔓

🔹 /unlock member 💭 فتح الاضافه 
🔹 /unlock name 💭 فتح الاسم 
🔹 /unlock bots 💭 فتح البوتات 

🔶 اوامر الطرد والحظر ✨📜

🔹 /ban 💭 حظر 
🔹 /unban 💭 الغاء حظر 
🔹 /banlist 💭 عرض قائمة المحظورين 
🔹 /kick 💭 طرد 
🔹 /kickme 💭 للمغادره 

🔶 اوامر التكرار ♻️📜

🔹 /lock flood 💭 قفل التكرار 
🔹 /unlock flood 💭 فتح التكرار 
🔹 /setflood 5-20 💭 تعيين التكرار 

🔶 اوامر عامة للمجموعة ⚠️📜

🔹 /rules 💭 القوانين 
🔹 /set rules 💭 وضع القوانين 
🔹 /about 💭 الوصف 
🔹 /set about 💭 وضع الوصف 
🔹 /setphoto 💭 وضع صورة 
🔹 /setname 💭 وضع اسم 
🔹 /id 💭 لعرض معلومات 
🔹 /setting 💭 اعدادت المجموعة 
🔹 /wholist 💭 عرض الايديات 
🔹 /owner 💭  المشرف 
🔹 /link 💭 الرابط 
🔹 /newlink 💭 تغير الرابط 
🔹 /help 💭 الاوامر
🔹 !tagall💭لعمل تاك الى اعضاء المجموعة


🔶 اوامر منع الوسائط 📜📵

🔹 /link lock 💭 منع الروابط 
🔹 /link unlock 💭 الغاء منع الروابط 
🔹 /photo lock 💭 منع الصور 
🔹 /photo unlock 💭 الغاء منع الصور 
🔹 /gif lock 💭 منع الصور المتحركة 
🔹 /gif unlock 💭 الغاء منع الصور المتحركة 
🔹 /fuck lock 💭 منع الكلمات السيئة 
🔹 /fuck unlock 💭 الغاء منع الكلمات السيئة 
🔹 /st lock 💭منع الملصقات والوسائق داخل المجموعة
🔹 /st unlock💭 الغاء منع الملصقات 
🔹 /smoke lock 💭  تفعيل مانع السجائر
🔹/smoke unlock💭ايقاف مانع السجائر
🔹 /boom lock💭تفعيل مضاد التكلم عن الجيوش
🔹 /boom unlock💭الغاء تفعيل منع التكلم عن الجيوش
🔹/smail lock💭 تفيل مضاد السمايلات
🔹/smail unlock💭 الغاء تفعيل مضاد السمايلات
🔹 /tafia lock💭 تفعيل منع الطائفية
🔹 /tafia unlock💭الغاء تفعيل منع الطائفية
🔹/love close💭 تفعيل مضاد التكلم عن الحب(مضاد المكبلين)
🔹/love open💭الغاء تفعيل مضاد التكلم عن الحب
🔹/broadcast💭لجعل البوت يكرر ماتقول
🔶 اوامر خاصة بالمطور والمشرف 😎📜

🔹/setowner 💭 رفع مشرف 
🔹 /promote 💭 رفع ادمن 
🔹 /demote 💭 حذف ادمن 
🔹 /clean member 💭 حذف الاعضاء 
🔶 رابط كروب الدعم البوت 📥
https://telegram.me/joinchat/C7_SVQZe0sTwy6YQOK70_g
]]
end

return {
  description = "by @zaroga0", 
  usage = "help: by @zaroga0",
  patterns = {
    "^[!/]help"
  }, 
  run = run 
}

end