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
        PlaySound(9278)
        printChatMessage("MUAHAHAHAHA. THE CURSE")
    elseif number>=15 then
        PlaySound(7640)
    end
end