--local var = 'Hello'
--local currentCharges, maxCharges, cooldownStart, cooldownDuration, chargeModRate = GetSpellCharges(61336)
--message('You currently have ' + currentCharges + ' of Survival Instincts')

local listener = CreateFrame("Frame")

listener:RegisterEvent("PLAYER_REGEN_DISABLED")
listener:RegisterEvent("PLAYER_REGEN_ENABLED")

listener:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_REGEN_DISABLED" then
        message('You are now in combat')
    end

    if event == "PLAYER_REGEN_ENABLED" then
        message('You have left combat')
    end
end)