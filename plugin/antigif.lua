-- By mohamed_devt { @MH_IQ19 }
-- how to use inside telegram --
-- if you want to prevent gif sharing use this command /gif lock
-- if you want to disable the protection use this command /gif lock
-- if you want to check the protection use this command /gif ?  

-- a function that i make to cut the command and the / from the text and send me the text after the command  
-- Unused but you can copy it and use it in your codes :)
-- function getText(msg)
--     TheString = msg["text"];
--     SpacePos = string.find(TheString, " ")
--     FinalString = string.sub(TheString, SpacePos + 1)
--     return FinalString;
-- end

local XCommands = 
{
    LockCommand = "lock", -- The com and to lock the gif sharing
    UnlockCommand = "unlock", -- The command to unlock the gif sharing
    CheckCommand = "?" -- The command to check for the statue of the gif sharing
}

local msgs = 
{
    already_locked = "تم منع الصور المتحركة بالفعل", -- the message that sent when you try to lock the sharing and it's already locked
    Locked = "تم منع الصور المتحركة", -- the message that send when you lock the sharing

    already_unlocked = "الصور المتحركة مسموحة بالفعل", -- the message that sent when you try to unlock the sharing and it's already unlocked
    UnLocked = "تم السماح بالصور المتحركة", -- the message that send when you unlock the sharing

    statue = { Locked2 = "مشاركة الصور المتحركة غير مسموحة", UnLocked2 = "مشاركة الصور المتحركة مسموحة" }
}


do
local function run(msg, matches)
    -- Get the receiver 
    local receiver = get_receiver(msg)
    local check = false;    
    -- use my function to get the text without the command

    -- loading the data from _config.moderation.data
    local data = load_data(_config.moderation.data)

    if ( is_realm(msg) and is_admin(msg) or is_sudo(msg) or is_momod(msg) ) then
        -- check if the command is lock and by command i mean when you write /gif lock   : lock here is the command
        if ( matches[2] == XCommands.LockCommand ) then
            
            -- check if the LockAudio is already yes then tell the user and exit out 
            if ( data[tostring(msg.to.id)]['settings']["LockGif"] == "yes" ) then
                send_large_msg ( receiver , msgs.already_locked ); -- send a message
                return -- exit
            end

            -- set the data 'LockGif' in the table settings to yes
            data[tostring(msg.to.id)]['settings']['LockGif'] = "yes"
        
            -- send a message
            send_large_msg(receiver, msgs.Locked)

        -- check if the command is unlock
        elseif ( matches[2] == XCommands.UnlockCommand ) then

            -- check if the LockGif is already no then tell the user and exit out 
            if ( data[tostring(msg.to.id)]['settings']['LockGif'] == "no" ) then
                send_large_msg ( receiver , msgs.already_unlocked ); -- send a message
                return -- exit
            end

            -- set the data 'LockGif' in the table settings to no
            data[tostring(msg.to.id)]['settings']['LockGif'] = "no"
        
            -- send a message
            send_large_msg(receiver, msgs.UnLocked)

        -- check if the command is ? 
        elseif ( matches[2] == XCommands.CheckCommand ) then

            -- load the data
            data = load_data(_config.moderation.data)

            -- get the data and set it to variable called EXSstring 
            EXString = data[tostring(msg.to.id)]["settings"]["LockGif"]
        
            -- send the data ass a message 
            if ( EXString == "yes" ) then
                send_large_msg(receiver, msgs.statue.Locked2 )
            elseif ( EXString == "no" ) then
                send_large_msg(receiver, msgs.statue.UnLocked2 )
            else
                print("there is an error in your code please copy it and send it to the author ")
            end
        end
    end

    -- save the data
    testDataSaved = save_data(_config.moderation.data, data)

    return true;
end
-- the return part
return {
    -- the patterns 
    patterns = {
        -- the command will be like /gif <arg> { the arg can be "?" or "lock" or "unlock" } 
        "^[!/](gif) (.+)"
    },
    run = run
}
end