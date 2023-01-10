CrownId = {
	2851709458
}



local Url = game:HttpGet("https://raw.githubusercontent.com/xskidie/LITHIUM/main/whitelisted.txt")
function LithiumEmojis()
    for _,v in pairs(game:GetService('Players'):GetChildren()) do
        if table.find(CrownId, v.UserId) then
            if v.Character then
                if v.Character.Parent.Name == "Players" then
                    v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]'..v.DisplayName)
                end
            end
        elseif string.find(Url, v.UserId) then
            if v.Character then
                if v.Character.Parent.Name == "Players" then
                    v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]'..v.DisplayName)
                end
            end
        end
        if v.Character then
            if v.Character.Parent.Name == "Players" then
                if not v.Character.UpperTorso.BodyFrontAttachment:FindFirstChild('OriginalPosition') then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[✨]'..v.DisplayName)
				end
			end
        end
    end
end
local success,err = pcall(HoodsenseEmojis)
return CrownId
