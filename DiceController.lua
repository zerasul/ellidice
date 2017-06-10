function printChatMessage(msg)
    if IsInRaid() then
        SendChatMessage(msg,"RAID")
    elseif IsInGroup() then
        SendChatMessage(msg, "PARTY")
    else
        SendChatMessage(msg)
    end
end

SLASH_ELLIDICE1 = '/ellidice';
SlashCmdList["ELLIDICE"] = function(msg, editbox)
    local number=math.random(1,20)
    printChatMessage(number)
    if number <= 5 then
        PlaySoundFile("Sound\\Creature\\HoodWolf\\HoodWolfTransformPlayer01.ogg","master")
        printChatMessage("MUAHAHAHAHA. THE CURSE")
    elseif number>=15 then
        PlaySoundFile("Sound\\Character\\Gnome\\GnomeFemaleChooChoo01.ogg", "master")
    end
end