-- // Resonance 💀 \\ --
local AutoExec = game

repeat wait() until AutoExec:IsLoaded();
if not AutoExec:IsLoaded() then
    AutoExec.Loaded:Wait();
end

-- Curious to who using my hub 💀 (only logs game place ID)
getgenv().WebHookz = "https://discord.com/api/webhooks/1147899922042081400/k2MnMeSGFIPl9AluO8uQwp4zDK3p1jgp2S4R2B0INEkeW-J6oFHEhLDqHgew24bD75r7"

task.spawn(function()
    local data = {
        ["content"] = "",
        ["embeds"] = {
            {
                ["description"] = "Someone executed Resonance 💀",
                ["type"] = "rich",
                ["color"] = tonumber(0x228B22),
                ["fields"] = {
                    {
                        ["name"] = "Place ID",
                        ["value"] = tostring(game.PlaceId),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Place Name",
                        ["value"] = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
                        ["inline"] = true
                    }
                }
            }
        }
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)

    local headers = {
        ["content-type"] = "application/json"
    }
    local request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = getgenv().WebHookz, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)
end)

-- // Credits to ao-0
shared.LoaderTitle = "Resonance 💀"
shared.LoaderKeyFrames = {
   [1] = {0.5, 100},
   [2] = {0.5, 0.5}
}
loadstring(game:HttpGet'https://raw.githubusercontent.com/ao-0/miami-nights/main/Resources/Loady/v1/Portable.lua')();

-- // LoL
if not isfile("Resonance's_File.txt") then writefile("Resonance's_File.txt", "Seen") end

-- // JumpPower Bypass \\ --
task.spawn(function()
    if game.PlaceId ~= 9821272782 then
        local mt = getrawmetatable(game)
        local oldindex = mt.__index
        setreadonly(mt, false)
        mt.__index = newcclosure(function(self, method)
    
        if method == 'JumpPower' then
          return 50
        end
    
        return oldindex(self, method)
        end)
        setreadonly(mt, true)
    else
        return
    end
end)

-- // Anti afk V2 \\--
task.spawn(function()
    if game.PlaceId ~= 9821272782 then
        getgenv().Press = function(v)
            return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game);
        end
        while true do wait(10.5)
            Press("RightBracket");
        end
    else
        while true do wait(10.5)
            keypress(0xDD);
        end
    end
end)

setfpscap(math.huge); -- Fun fact: your eyes are stuck at 60 fps ;)

--// Main Libs \\--
local UILibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Twink/main/BackUp"))();
local Notif = loadstring(game:HttpGet("https://raw.githubusercontent.com/insanedude59/notiflib/main/main"))();

--// Supported Games \\--
local Supported = {
    Sakura_Stand = 8534845015, -- Sakura Stand (Main)
}

--// Unsupported Game Result \\--
if game.PlaceId ~= Supported.Project_Menacing and game.PlaceId ~= Supported.Soul_Cultivation and game.PlaceId ~= Supported.Chainsaw_ManDH and game.PlaceId ~= Supported.SPTS_Endless and game.PlaceId ~= Supported.Chainsaw_ManXPVP and game.PlaceId ~= Supported.Chainsaw_ManXGrind and game.PlaceId ~= Supported.Heaven_Stand and game.PlaceId ~= Supported.Heaven_StandTestingPlace and game.PlaceId ~= Supported.Heaven_StandFakeGame and game.PlaceId ~= Supported.Stand_Upright_Rebooted and game.PlaceId ~= Supported.AUT_OldUniverse and game.PlaceId ~= Supported.Sakura_Stand and game.PlaceId ~= Supported.Ragdoll_Engine and game.PlaceId ~= Supported.Stardust_Reborn  and  game.PlaceId ~= Supported.A_Universal_Time and game.PlaceId ~= Supported.Murim_Cultivation then
    Notif:Notification("Resonance 💀", "Game not Supported  ❌", "GothamSemibold", "Gotham", 2.5);
    return
end

local MainUI = UILibrary.Load("    Resonance 💀");
local FirstPage = MainUI.AddPage("Home");
local ScriptX = MainUI.AddPage("Scripts");

task.spawn(function()
    Notif:Notification("Resonance 💀", "Loaded Successfully  ✅", "GothamSemibold", "Gotham", 2.5);
end)

local FirstButton = FirstPage.AddButton("Discord: Resonance 💀  | Scripter", function()
    if setclipboard then
        Notif:Notification("Resonance 💀", "Copied to clipboard 📋", "GothamSemibold", "Gotham", 2.5);
        setclipboard("hirangesh");
        Notif:Notification("Resonance 💀", "DM for Support/Help 💖", "GothamSemibold", "Gotham", 2.5);
    else
        Notif:Notification("Resonance 💀", "DM for Support/Help 💖", "GothamSemibold", "Gotham", 2.5);
        Notif:Notification("Resonance 💀", "Failed to clipboard 📋", "GothamSemibold", "Gotham", 2.5);
    end
end);

local FirstButton = FirstPage.AddButton("By hirangesh | Notification UI ", function()
    if setclipboard then
        Notif:Notification("Resonance 💀", "Copied to clipboard 📋", "GothamSemibold", "Gotham", 2.5);
        setclipboard("ты гей");
    else
        Notif:Notification("Resonance 💀", "Failed to clipboard 📋", "GothamSemibold", "Gotham", 2.5);
    end
end);

local FirstButton = FirstPage.AddButton(" By hirangesh | UI Library  👍", function()
    if setclipboard then
        Notif:Notification("Resonance 💀", "Copied to clipboard 📋", "GothamSemibold", "Gotham", 2.5);
        setclipboard("ле зачем ты это копируешь?");
    else
        Notif:Notification("Resonance 💀", "Failed to clipboard 📋", "GothamSemibold", "Gotham", 2.5);
    end
end);

local FirstLabel = FirstPage.AddLabel("Attention ⚠️");
local FirstButton = FirstPage.AddButton("Report Issues  📝 [GUI]", function()

    getgenv().WebH = "https://discord.com/api/webhooks/1147899922042081400/k2MnMeSGFIPl9AluO8uQwp4zDK3p1jgp2S4R2B0INEkeW-J6oFHEhLDqHgew24bD75r7";
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/Feedback"))();
end);

local ScriptXLabel = ScriptX.AddLabel("Lightweight Cheats  🍃");
local ScriptXSlider = ScriptX.AddSlider("Gravity  🌎", {Min = 0, Max = 196.2, Def = 196.2}, function(Value)
    getgenv().GravityValue = Value
    game.Workspace.Gravity = getgenv().GravityValue
end)

getgenv().Saves = {
    JumpHeight = game.Players.LocalPlayer.Character.Humanoid.JumpHeight,
    JumpPower = game.Players.LocalPlayer.Character.Humanoid.JumpPower,
}

local ScriptXSlider = ScriptX.AddSlider("WalkSpeed 🏃‍♂️", {Min = 5, Max = 100, Def = 50}, function(Value)
    getgenv().Speed = tonumber(Value)
end)

local ScriptXSlider = ScriptX.AddSlider("JumpPower  🦘", {Min = 50, Max = 500, Def = 50}, function(Value)
    getgenv().JumpPowerValue = Value

    game.Players.LocalPlayer.Character.Humanoid.JumpHeight = getgenv().JumpPowerValue
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = getgenv().JumpPowerValue
end)

local ScriptXToggle = ScriptX.AddToggle("Enable/Disable | Walkspeed", false, function(Value)
    -- Skidded from inf yield :3
    getgenv().TpWalking = Value
    getgenv().RestartSpeed = Value
    
    local TeleportWalking = function()
        task.spawn(function()
            pcall(function()
                local speaker = game:GetService("Players").LocalPlayer
                local chr = speaker.Character
                local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                local hb = game:GetService("RunService").Heartbeat
    
                while getgenv().TpWalking == true and chr and hum and hum.Parent do
                    local delta = hb:Wait()
                    if hum.MoveDirection.Magnitude > 0 then
                        chr:TranslateBy(hum.MoveDirection * tonumber(getgenv().Speed) * delta * 10)
                    else
                        chr:TranslateBy(hum.MoveDirection * delta * 10)
                    end
                end
            end)
        end)
    end
    
    local Con
    Con = game.Players.LocalPlayer.CharacterAdded:Connect(function()
        if getgenv().RestartSpeed == true then
            wait(2.55)
            getgenv().Speed = 5 -- By default
            TeleportWalking();
        end
    end)
    
    TeleportWalking();
end)

local ScriptXToggle = ScriptX.AddToggle("Noclip   🧱", false, function(Value)
    getgenv().TheyreMagsNotClips = Value

    while getgenv().TheyreMagsNotClips == true do
        wait(0.1)
        for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
    end
 
    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
        if v:IsA("BasePart") then
            v.CanCollide = true
        end
    end    
end)

local ScriptXToggle = ScriptX.AddToggle("X Ray   👁️‍🗨️", false, function(Value)
    getgenv().XrayToggle = Value
    if getgenv().XrayToggle == true then
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") and not v.Parent.Parent:FindFirstChild("Humanoid") then
                v.LocalTransparencyModifier = 0.7
            end
        end
    end
    if getgenv().XrayToggle == false then
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") and not v.Parent.Parent:FindFirstChild("Humanoid") then
                v.LocalTransparencyModifier =  0
            end
        end
    end    
end)

local ScriptXToggle = ScriptX.AddToggle("Esp   👁️", false, function(Value)
    -- Credits to Xiba
    getgenv().FlaggingESP = Value

    local function ApplyESP(v)
        if v.Character and v.Character:FindFirstChildOfClass('Humanoid') then
            v.Character.Humanoid.NameDisplayDistance = getgenv().FlaggingESP and 9e9 or 50
            v.Character.Humanoid.NameOcclusion = getgenv().FlaggingESP and "NoOcclusion" or "OccludeAll"
            v.Character.Humanoid.HealthDisplayDistance = getgenv().FlaggingESP and 9e9 or 50
            v.Character.Humanoid.HealthDisplayType = getgenv().FlaggingESP and "AlwaysOn" or "Never"
            v.Character.Humanoid.Health = v.Character.Humanoid.Health
        end
    end

    for i, v in pairs(game.Players:GetPlayers()) do
        ApplyESP(v)
    end

    game.Players.PlayerAdded:Connect(function(v)
        ApplyESP(v)
        v.CharacterAdded:Connect(function()
            task.wait(0.33)
            ApplyESP(v)
        end)
    end)
end)

local ScriptXToggle = ScriptX.AddToggle("Nearest Aimlock  🎯", false, function(Value)
    getgenv().Aimming = Value
    game:GetService("RunService").RenderStepped:Connect(function() if not getgenv().Aimming == true then return end local x,b for _,v in ipairs(game:GetService("Players"):GetPlayers()) do if v.Character and v ~= game:GetService("Players").LocalPlayer then if not x or (v.Character.Head.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).Magnitude < b then x = v b = (v.Character.Head.Position - game:GetService("Players").LocalPlayer.Character.Head.Position).Magnitude end end end if x and b <= 15 then game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, x.Character.HumanoidRootPart.Position) end end);
end);

getgenv().Stored = {}

for i,v in ipairs(game.Players:GetPlayers()) do
    if v ~= game.Players.LocalPlayer then
        table.insert(getgenv().Stored, v.Name)
    end
end

local ScriptXToggle = ScriptX.AddDropdown("Teleport Player   💁‍♂️", getgenv().Stored, function(Value)
    for i,v in ipairs(game.Players:GetPlayers()) do
        if v.Name == Value then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
        end
    end
end)

local ScriptXToggle = ScriptX.AddDropdown("Tween Player   💁‍♂️", getgenv().Stored, function(Value)
    for i,v in ipairs(game.Players:GetPlayers()) do
        if v.Name == Value then
            game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), TweenInfo.new((v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude / 100, Enum.EasingStyle.Linear), {CFrame = CFrame.new(v.Character.HumanoidRootPart.Position)}):Play();
        end
    end
end)

local ScriptXLabel = ScriptX.AddLabel("Quick Scripts  ⚡");

local ScriptXButton = ScriptX.AddButton("Infinite Yield", function()
    task.spawn(function()
        Notif:Notification("Resonance 💀", 'Loading...', "GothamSemibold", "Gotham", 1);
    end);
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))();
end);

local ScriptXButton = ScriptX.AddButton("Remote Spy", function()
    task.spawn(function()
        Notif:Notification("Resonance 💀", 'Loading...', "GothamSemibold", "Gotham", 1);
    end);
    loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))();
end);

local ScriptXButton = ScriptX.AddButton("Dex", function()
    task.spawn(function()
        Notif:Notification("Resonance 💀", 'Loading...', "GothamSemibold", "Gotham", 1);
    end);
   loadstring(game:HttpGet('https://ithinkimandrew.site/scripts/tools/dark-dex.lua'))();
end);

local ScriptXButton = ScriptX.AddButton("Nex Hub Sakura Stand", function()
    task.spawn(function()
        Notif:Notification("Resonance 💀", 'Loading...', "GothamSemibold", "Gotham", 1);
    end);
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CopyReal/NexHub/main/NexHubLoader"))();
end);

local ScriptXButton = ScriptX.AddButton("Gui by death sakura stand", function()
    task.spawn(function()
        Notif:Notification("Resonance 💀", 'Loading...', "GothamSemibold", "Gotham", 1);
    end);
    _G.Options = {
    ["ToggleKey"] = "Delete"
}
loadstring(game:HttpGet(("https://raw.githubusercontent.com/VoidGaster/Scripts/main/8534845015"),true))()
end);



--// 🟢 Project Menacing \\--
if game.PlaceId == Supported.Project_Menacing then
    task.spawn(function()
        wait(3);
        Notif:Notification("Game Detected ⚠️", "Project Menacing  🔥", "GothamSemibold", "Gotham", 2.5);
    end)

    --// Main Pages \\--
    local SecondPage = MainUI.AddPage("Shoping");
    local BackupPage = MainUI.AddPage("Storage");
    local SecondAndHalfPage = MainUI.AddPage("Fighting");
    local ThirdPage = MainUI.AddPage("Farming");
    local FourthPage = MainUI.AddPage("Teleports");

    local SecondLabel = SecondPage.AddLabel("[+] Buy 💰");
    local SecondButton = SecondPage.AddButton("Buy Arrow 🎯 [150 ¥]", function()
        local args = {[1]="Stand Arrow"};
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Shop"):FireServer(unpack(args));
    end);
    
    local SecondButton = SecondPage.AddButton("Buy Fruit 🍎 [250 ¥]", function()
        local args = {[1]="Rokakaka Fruit"};
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Shop"):FireServer(unpack(args));
    end);
    
    local SecondButton = SecondPage.AddButton("Buy DIO's Diary  📕 [15,000 ¥]", function()
        local args = {[1]="DIO's Diary"};
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Shop"):FireServer(unpack(args));
    end);
    
    local SecondButton = SecondPage.AddButton("Buy DIO's Bone 🦴 [30,000 ¥]", function()
        local args = {[1]="DIO's Bone"};
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Shop"):FireServer(unpack(args));
    end);
    
    local BackupLabel = BackupPage.AddLabel("[+] Storage 📦");
    local BackupButton = BackupPage.AddButton("Stand Storage", function()
        local X = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0.15, Enum.EasingStyle.Linear);
        tweenService:Create(game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart, tweenInfo, {CFrame=CFrame.new(71.73101043701172, 27.405519485473633, -187.82508850097656)}):Play();
        wait(0.35);
        for i, v in pairs(game:GetService("Workspace").NPC.Rohan:GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                fireproximityprompt(v, 0);
            end
        end
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = X;
    end);
    
    local BackupButton = BackupPage.AddButton("Items Storage", function()
        local X = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0.15, Enum.EasingStyle.Linear);
        tweenService:Create(game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart, tweenInfo, {CFrame=CFrame.new(31.423873901367188, 27.663740158081055, -71.35455322265625)}):Play();
        wait(0.35);
        for i, v in pairs(game:GetService("Workspace").NPC.Darby:GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                fireproximityprompt(v, 0);
            end
        end
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = X;
    end);

    local ThirdLabel = ThirdPage.AddLabel("[+] Auto Store Items  💼");
    local FirstToggle = ThirdPage.AddToggle("Corpse Part  🌽", false, function(Value)
    getgenv().Running = Value
    getgenv().ItemToStore = "Corpse Part"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/ProjectMenacingAutoStoreItems"))();
    end);
    local FirstToggle = ThirdPage.AddToggle("DIO's Diary  📖", false, function(Value)
        getgenv().Running = Value
        getgenv().ItemToStore = "DIO's Diary"
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/ProjectMenacingAutoStoreItems"))();
    end);
    local FirstToggle = ThirdPage.AddToggle("DIO's Bone 🦴", false, function(Value)
        getgenv().Running = Value
        getgenv().ItemToStore = "DIO's Bone"
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/ProjectMenacingAutoStoreItems"))();
    end);

    local ThirdLabel = ThirdPage.AddLabel("[+] Auto Teleport Items 🛍️");
    local FirstToggle = ThirdPage.AddToggle("Stand Arrow  🎯", false, function(Value)
        getgenv().AutofarmArrow = Value
        while getgenv().AutofarmArrow == true do wait(0.1);
            pcall(function()
                if game:GetService("Workspace"):FindFirstChild("Stand Arrow") then
                    game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace")["Stand Arrow"].Position);
                    wait(0.35);
                    for i, v in pairs(game:GetService("Workspace")["Stand Arrow"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") then
                            fireproximityprompt(v, 0);
                        end
                    end
                else
                    Notif:Notification("Resonance 💀", "Stand Arrow not found", "GothamSemibold", "Gotham", 1);
                    return
                end
            end)
        end        
    end);
    
    local FirstToggle = ThirdPage.AddToggle("Rokakaka Fruit 🍎", false, function(Value)
        getgenv().AutofarmFruit = Value
        while getgenv().AutofarmFruit == true do wait(0.1);
            pcall(function()
                if game:GetService("Workspace"):FindFirstChild("Rokakaka Fruit") then
                    game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace")["Rokakaka Fruit"].Position);
                    wait(0.35);
                    for i, v in pairs(game:GetService("Workspace")["Rokakaka Fruit"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") then
                            fireproximityprompt(v, 0);
                        end
                    end
                else
                    Notif:Notification("Resonance 💀", "Rokakaka Fruit not found", "GothamSemibold", "Gotham", 1);
                    return
                end
            end)
        end  
    end);

    local FirstToggle = ThirdPage.AddToggle("Corpse Part  🌽", false, function(Value)
        getgenv().AutofarmCorpse = Value
        while getgenv().AutofarmCorpse == true do wait(0.1);
            pcall(function()
                if game:GetService("Workspace"):FindFirstChild("Corpse Part") then
                    game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace")["Corpse Part"].Position);
                    wait(0.35);
                    for i, v in pairs(game:GetService("Workspace")["Corpse Part"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") then
                            fireproximityprompt(v, 0);
                        end
                    end
                else
                    Notif:Notification("Resonance 💀", "Corpse Part not found", "GothamSemibold", "Gotham", 1);
                    return
                end
            end)
        end  
    end);

    local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Legit");
    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Semi Auto Dodge", false, function(Value)
        getgenv().Dodge = Value
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/ProjectMenacingLegitDodge"))();
    end);
    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Legit Auto Run", false, function(Value)
        getgenv().Run = Value
        while getgenv().Run == true do wait(1.15);
            local args = {[1] = true};
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Sprint"):FireServer(unpack(args));
            local args = {[1] = true};
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("EnableSprint"):FireServer(unpack(args));
        end
    end);

    local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Unlegit");
    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Semi Auto Block (Use speed Bypass)", false, function(Value)
        getgenv().Block = Value
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/ProjectMenacingUnlegitAutoBlock"))();
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Dmg Auto Escape", false, function(Value)
        getgenv().Escape = Value
        getgenv().Back = 7.5
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/AutoEscape"))();
    end);
    
    local ThirdLabel = ThirdPage.AddLabel("[+] Auto Quest Farm  💸");
    local ThirdToggle = ThirdPage.AddToggle("Start Farming", false, function(Value)
    getgenv().FarmingThugs = Value
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/AutoFarmProjectMenacing"))();
    end);
    
    local ThirdLabel = ThirdPage.AddLabel("[+] Auto Stand Farm  👀");
    local ThirdLabel = ThirdPage.AddDropdown("Selected 1", {
        "D4C",
        "DirtyDeeds",
        "GoldExperience",
        "GoldExperienceRose",
        "SixPistolsChariot",
        "StarPlatinumHeritage",
        "StarPlatinumOVA",
        "StarPlatinumPrime",
        "StarPlatinumStoneOcean",
        "StarPlatinumTheUniverse",
        "StarPlatinumTheWorld",
        "TheWorld",
        "TheWorldHeritage",
        "TheWorldOVA",
        "Whitesnake",
        "WhitesnakeDemios",
        "WhitesnakeHeritage",
    }, 
    function(PlayerStandValue1)
        getgenv().StandFarm1 = PlayerStandValue1
    end)

    local ThirdLabel = ThirdPage.AddDropdown("Selected 2", {
        "D4C",
        "DirtyDeeds",
        "GoldExperience",
        "GoldExperienceRose",
        "SixPistolsChariot",
        "StarPlatinumHeritage",
        "StarPlatinumOVA",
        "StarPlatinumPrime",
        "StarPlatinumStoneOcean",
        "StarPlatinumTheUniverse",
        "StarPlatinumTheWorld",
        "TheWorld",
        "TheWorldHeritage",
        "TheWorldOVA",
        "Whitesnake",
        "WhitesnakeDemios",
        "WhitesnakeHeritage",
    }, 
    function(PlayerStandValue2)
        getgenv().StandFarm2 = PlayerStandValue2
    end)

    local ThirdLabel = ThirdPage.AddDropdown("Selected 3", {
        "D4C",
        "DirtyDeeds",
        "GoldExperience",
        "GoldExperienceRose",
        "SixPistolsChariot",
        "StarPlatinumHeritage",
        "StarPlatinumOVA",
        "StarPlatinumPrime",
        "StarPlatinumStoneOcean",
        "StarPlatinumTheUniverse",
        "StarPlatinumTheWorld",
        "TheWorld",
        "TheWorldHeritage",
        "TheWorldOVA",
        "Whitesnake",
        "WhitesnakeDemios",
        "WhitesnakeHeritage",
    }, 
    function(PlayerStandValue3)
        getgenv().StandFarm3 = PlayerStandValue3
    end)

    local ThirdLabel = ThirdPage.AddDropdown("Selected 4", {
        "D4C",
        "DirtyDeeds",
        "GoldExperience",
        "GoldExperienceRose",
        "SixPistolsChariot",
        "StarPlatinumHeritage",
        "StarPlatinumOVA",
        "StarPlatinumPrime",
        "StarPlatinumStoneOcean",
        "StarPlatinumTheUniverse",
        "StarPlatinumTheWorld",
        "TheWorld",
        "TheWorldHeritage",
        "TheWorldOVA",
        "Whitesnake",
        "WhitesnakeDemios",
        "WhitesnakeHeritage",
    }, 
    function(PlayerStandValue4)
        getgenv().StandFarm4 = PlayerStandValue4
    end)

    local ThirdLabel = ThirdPage.AddDropdown("Selected 5", {
        "D4C",
        "DirtyDeeds",
        "GoldExperience",
        "GoldExperienceRose",
        "SixPistolsChariot",
        "StarPlatinumHeritage",
        "StarPlatinumOVA",
        "StarPlatinumPrime",
        "StarPlatinumStoneOcean",
        "StarPlatinumTheUniverse",
        "StarPlatinumTheWorld",
        "TheWorld",
        "TheWorldHeritage",
        "TheWorldOVA",
        "Whitesnake",
        "WhitesnakeDemios",
        "WhitesnakeHeritage",
    }, 
    function(PlayerStandValue5)
        getgenv().StandFarm5 = PlayerStandValue5
    end)

    local ThirdToggle = ThirdPage.AddToggle("Start Farming", false, function(Value)
        getgenv().AutoStandFarmWithItems = Value
        while getgenv().AutoStandFarmWithItems == true do wait(0.15)  
            if game:GetService("Players").LocalPlayer.Data.Stand.Value == "None" then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Stand Arrow") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stand Arrow") == nil then
                        game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Stand Arrow"))
                        local args = {[1] = "Stand Arrow"}
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ItemUsage"):FireServer(unpack(args))
                    end
                end)
            else
                if game:GetService("Players").LocalPlayer.Data.Stand.Value == getgenv().StandFarm1 or game:GetService("Players").LocalPlayer.Data.Stand.Value == getgenv().StandFarm2 or game:GetService("Players").LocalPlayer.Data.Stand.Value == getgenv().StandFarm3 or game:GetService("Players").LocalPlayer.Data.Stand.Value == getgenv().StandFarm4 or game:GetService("Players").LocalPlayer.Data.Stand.Value == getgenv().StandFarm5 then
                    local tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0.15, Enum.EasingStyle.Linear)
                    tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-29.07377815246582, 112.57449340820312, -222.1446533203125)}):Play()
                    Notif:Notification("Resonance 💀", "🥳🎉: " .. game:GetService("Players").LocalPlayer.Data.Stand.Value, "GothamSemibold", "Gotham", 9e9)
                    break
                else
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rokakaka Fruit") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rokakaka Fruit") == nil then
                            game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rokakaka Fruit"))
                            local args = {[1] = "Rokakaka Fruit"}
                            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ItemUsage"):FireServer(unpack(args))
                        end
                    end)
                end
            end
        end        
    end)

    local ThirdButton = ThirdPage.AddButton("Buy 3x 🍎 + 🎯  [1,300 ¥]", function()
        for i = 1,3 do
            local args = {[1] = "Rokakaka Fruit"};
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Shop"):FireServer(unpack(args));
            local args = {[1] = "Stand Arrow"};
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Shop"):FireServer(unpack(args));
        end 
    end);

    local ThirdLabel = ThirdPage.AddLabel("[+] Shadow Dio Farm  🔥");
    local ThirdToggle = ThirdPage.AddToggle("Start Farming", false, function(Value)
        getgenv().ShadowDioFarming = Value
        while getgenv().ShadowDioFarming == true do wait(0.25);
            for i, v in pairs(workspace:GetDescendants()) do
                if (v.ClassName == "ProximityPrompt") then
                    fireproximityprompt(v, 0);
                end
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-336.6607666015625, 27.087810516357422, 22.47588348388672);
            for i, v in pairs(workspace:GetDescendants()) do
                if (v.ClassName == "ProximityPrompt") then
                    fireproximityprompt(v, 0);
                end
            end
            wait(0.25);
            for i, v in pairs(workspace:GetDescendants()) do
                if (v.ClassName == "ProximityPrompt") then
                    fireproximityprompt(v, 0);
                end
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(283.3526306152344, 27.087806701660156, -122.81632232666016);
            for i, v in pairs(workspace:GetDescendants()) do
                if (v.ClassName == "ProximityPrompt") then
                    fireproximityprompt(v, 0);
                end
            end
            wait(0.25);
            for i, v in pairs(workspace:GetDescendants()) do
                if (v.ClassName == "ProximityPrompt") then
                    fireproximityprompt(v, 0);
                end
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(202.4773406982422, 27.442737579345703, 44.88944625854492);
            for i, v in pairs(workspace:GetDescendants()) do
                if (v.ClassName == "ProximityPrompt") then
                    fireproximityprompt(v, 0);
                end
            end
            wait(0.25);
            for i, v in pairs(workspace:GetDescendants()) do
                if (v.ClassName == "ProximityPrompt") then
                    fireproximityprompt(v, 0);
                end
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-122.38571166992188, 27.442642211914062, 147.9661102294922);
            for i, v in pairs(workspace:GetDescendants()) do
                if (v.ClassName == "ProximityPrompt") then
                    fireproximityprompt(v, 0);
                end
            end
        end
    end);
    
    local FourthButton = FourthPage.AddButton("Train Station 🚉", function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0.15, Enum.EasingStyle.Linear);
        tweenService:Create(game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart, tweenInfo, {CFrame=CFrame.new(-31.46343421936035, 28.627548217773438, -215.8847198486328)}):Play();
    end);
    
    local FourthButton = FourthPage.AddButton("Truck Kun 🚛", function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0.15, Enum.EasingStyle.Linear);
        tweenService:Create(game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart, tweenInfo, {CFrame=CFrame.new(123.78990173339844, 38.95568084716797, -180.37232971191406)}):Play();
    end);
    
    local FourthButton = FourthPage.AddButton("Clothing Shop 🛒👕", function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0.15, Enum.EasingStyle.Linear);
        tweenService:Create(game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart, tweenInfo, {CFrame=CFrame.new(124.7226791381836, 28.359607696533203, -116.27722930908203)}):Play();
    end);
    
    local FourthButton = FourthPage.AddButton("Highest Point of View 🦅", function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0.15, Enum.EasingStyle.Linear);
        tweenService:Create(game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart, tweenInfo, {CFrame=CFrame.new(-29.07377815246582, 112.57449340820312, -222.1446533203125)}):Play();
    end);
    
    local FourthButton = FourthPage.AddButton("Morioh High School 🏫 | Basketball Area 🏀", function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0.15, Enum.EasingStyle.Linear);
        tweenService:Create(game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart, tweenInfo, {CFrame=CFrame.new(252.43658447265625, 27.491676330566406, -90.378173828125)}):Play();
    end);
    
    local FourthButton = FourthPage.AddButton("Yoshikage Kira's House 🏡", function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0.15, Enum.EasingStyle.Linear);
        tweenService:Create(game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart, tweenInfo, {CFrame=CFrame.new(-266.17449951171875, 27.66372299194336, -9.87911319732666)}):Play();
    end);
    
    local FourthButton = FourthPage.AddButton("Thugs Area 👨🏿‍🦱", function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0.15, Enum.EasingStyle.Linear);
        tweenService:Create(game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart, tweenInfo, {CFrame=CFrame.new(69.41024780273438, 27.48766326904297, -359.31878662109375)}):Play();
    end);
    
    local FourthButton = FourthPage.AddButton("Hill ⛰️", function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0.15, Enum.EasingStyle.Linear);
        tweenService:Create(game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart, tweenInfo, {CFrame=CFrame.new(431.0728454589844, 62.37518310546875, -0.14900462329387665)}):Play();
    end);
    
    local FourthButton = FourthPage.AddButton("Safe Zone 🦺", function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(0.15, Enum.EasingStyle.Linear);
        tweenService:Create(game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart, tweenInfo, {CFrame=CFrame.new(-1735.9013671875, 25.64971160888672, -236.9815216064453)}):Play();
    end);
  
end
    
--// 🟢 Soul Cultivation \\--
if game.PlaceId == Supported.Soul_Cultivation then
    task.spawn(function()
        wait(3);
        Notif:Notification("Game Detected ⚠️", "Soul Cultivation  🔥", "GothamSemibold", "Gotham", 2.5);
    end)

    --// Main Pages \\--
    local SecondPage = MainUI.AddPage("Shoping");
    local SecondAndHalfPage = MainUI.AddPage("Misc");
    local ThirdPage = MainUI.AddPage("Farming");
    local FourthPage = MainUI.AddPage("Training");
        
    local SecondLabel = SecondPage.AddLabel("[+] Shop 🛒");
    local SecondLabel = SecondPage.AddButton("Mod Panel 🤧 [Fake]", function()
        game:GetService("Players").LocalPlayer.PlayerGui.ModPanel.Frame.Visible = true
    end);

    local SecondLabel = SecondPage.AddButton("Clothing Shop 🛒👕 [Bobux]", function()
        game:GetService("Players").LocalPlayer.PlayerGui.ClothingGui.Frame.Visible = true
    end);
    
    local SecondLabel = SecondPage.AddButton("Robux Store 💵 [Robux]", function()
        game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.Frame.Visible = true
    end);
    
    local SecondLabel = SecondPage.AddButton("Book Shop 📚", function()
        game:GetService("Players").LocalPlayer.PlayerGui.BookShop.Frame.Visible = true
    end);

    local ThirdLabel = ThirdPage.AddLabel("[+] OP Stuff ⚠️");
    local ThirdLabel = ThirdPage.AddButton("NPC Hitbox", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/SoulzInfHitBox"))();
    end);
    
    local ThirdToggle = ThirdPage.AddToggle("Auto Clicker [Use hitbox]", false, function(Value)
        getgenv().KillAura = Value
        while getgenv().KillAura == true do wait(0.001)
            local args = {[1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Right Arm")};
            game:GetService("Players").LocalPlayer.Character.Combat.Combo.C0:FireServer(unpack(args));
        
            local args = {[1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Right Leg")};
            game:GetService("Players").LocalPlayer.Character.Combat.Combo.C3:FireServer(unpack(args));
        
            local args = {[1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Right Leg")};
            game:GetService("Players").LocalPlayer.Character.Combat.Combo.C1:FireServer(unpack(args));
        end
    end);
        
    local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Stuff❗");
    local SecondAndHalfLabel = SecondAndHalfPage.AddButton("No Cooldown", function()
        -- Credits: DekuDimz [Owner of V.G Hub] :3
        local Cooldown; Cooldown = hookfunction(wait, function(v)
            v = 0;
            return Cooldown(v);
        end);
    end);
    local SecondAndHalfLabel = SecondAndHalfPage.AddButton("Hitbox Players", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/UniversalPlayerHitbox"))();
    end);
    
    
    local ThirdLabel = ThirdPage.AddLabel("[+] Auto Farm 🤑");
    local ThirdLabel = ThirdPage.AddButton("Starter Area [Teleport]", function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(12, Enum.EasingStyle.Linear);
        tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(269.7801818847656, 70.9062271118164, -305.5054626464844)}):Play();
    end);
    
    local ThirdToggle = ThirdPage.AddToggle("Bandits 🧔🏿 [Required Rank: Mortal I]", false, function(Value)
        getgenv().Farming = Value
        getgenv().NPC = "Bandit"
        getgenv().Quest = function()
            local args = {[1] = workspace:WaitForChild("Quest NPCS"):WaitForChild("Greg - Quest"):WaitForChild("HumanoidRootPart"):WaitForChild("QuestActivator"):WaitForChild("Quest")};
            game:GetService("ReplicatedStorage"):WaitForChild("Quest Remote Events"):WaitForChild("EnableQuest"):FireServer(unpack(args));
        end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/SoulCultivationFarming"))();
    end);
    
    local ThirdToggle = ThirdPage.AddToggle("Rogue Soldiers 👦🏻 [Required Rank: Qi Codenstation I]", false, function(Value)
        getgenv().Farming = Value
        getgenv().NPC = "Rogue"
        getgenv().Quest = function()
            local args = {[1] = workspace:WaitForChild("Quest NPCS"):WaitForChild("Brickman - Quest"):WaitForChild("HumanoidRootPart"):WaitForChild("QuestActivator"):WaitForChild("Quest")};
            game:GetService("ReplicatedStorage"):WaitForChild("Quest Remote Events"):WaitForChild("EnableQuest"):FireServer(unpack(args));
        end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/SoulCultivationFarming"))();
    end);
    
    local ThirdToggle = ThirdPage.AddToggle("Miners ⛏️ [Required Rank: Qi Codenstation IV]", false, function(Value)
        getgenv().Farming = Value
        getgenv().NPC = "Nas"
        getgenv().Quest = function()
            -- No quest for this NPC
        end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/SoulCultivationFarming"))();
    end);
    
    local ThirdToggle = ThirdPage.AddToggle("Strong Miners ⛏️💪[Required Rank: Soul Formation VI]", false, function(Value)
        getgenv().Farming = Value
        getgenv().NPC = "Stronger"
        getgenv().Quest = function()
            -- No quest for this NPC
        end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/SoulCultivationFarming"))();
    end);
    
    local ThirdLabel = ThirdPage.AddButton("Advanced Area [Teleport]", function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(12, Enum.EasingStyle.Linear);
        tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(1795.91943359375, 78.19364166259766, 1116.5872802734375)}):Play();
    end);
    
    local ThirdToggle = ThirdPage.AddToggle("Poachers [Required Rank: Core Formation X]", false, function(Value)
        getgenv().Farming = Value
        getgenv().NPC = "Poache"
        getgenv().Quest = function()
            local args = {[1] = workspace:WaitForChild("Quest NPCS"):WaitForChild("Nick - Quest"):WaitForChild("HumanoidRootPart"):WaitForChild("QuestActivator"):WaitForChild("Quest")};
            game:GetService("ReplicatedStorage"):WaitForChild("Quest Remote Events"):WaitForChild("EnableQuest"):FireServer(unpack(args));
        end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/SoulCultivationFarming"))();
    end);
    
    local ThirdToggle = ThirdPage.AddToggle("Evil Cultivators [Required Rank: Nascent Soul V]", false, function(Value)
        getgenv().Farming = Value
        getgenv().NPC = "Evil Cult"
        getgenv().Quest = function()
            local args = {[1] = workspace:WaitForChild("Quest NPCS"):WaitForChild("Monk - Quest"):WaitForChild("HumanoidRootPart"):WaitForChild("QuestActivator"):WaitForChild("Quest")};
            game:GetService("ReplicatedStorage"):WaitForChild("Quest Remote Events"):WaitForChild("EnableQuest"):FireServer(unpack(args));
        end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/SoulCultivationFarming"))();
    end);
    
    local ThirdLabel = ThirdPage.AddButton("Intermediate Area [Teleport]", function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(12, Enum.EasingStyle.Linear);
        tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(1624.8345947265625, 76.9999771118164, 4450.787109375)}):Play();
    end);
    
    local ThirdToggle = ThirdPage.AddToggle("Delinquents [Required Rank: Soul Transformation I]", false, function(Value)
        getgenv().Farming = Value
        getgenv().NPC = "Delin"
        getgenv().Quest = function()
            local args = {[1] = workspace:WaitForChild("Quest NPCS"):WaitForChild("Rick - Quest"):WaitForChild("HumanoidRootPart"):WaitForChild("QuestActivator"):WaitForChild("Quest")};
            game:GetService("ReplicatedStorage"):WaitForChild("Quest Remote Events"):WaitForChild("EnableQuest"):FireServer(unpack(args));
        end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/SoulCultivationFarming"))();
    end);
    
    local ThirdLabel = ThirdPage.AddButton("Heavenly Area [Teleport]", function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(12, Enum.EasingStyle.Linear);
        tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-709.099853515625, 72.9999771118164, 4017.88232421875)}):Play();
    end);
    
    local ThirdToggle = ThirdPage.AddToggle("Heavenly Cultivator [Required Rank: Transcendent I]", false, function(Value)
        getgenv().Farming = Value
        getgenv().NPC = "Heavenly"
        getgenv().Quest = function()
            local args = {[1] = workspace:WaitForChild("Quest NPCS"):WaitForChild("Junior  - Quest"):WaitForChild("HumanoidRootPart"):WaitForChild("QuestActivator"):WaitForChild("Quest")};
            game:GetService("ReplicatedStorage"):WaitForChild("Quest Remote Events"):WaitForChild("EnableQuest"):FireServer(unpack(args));
        end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/SoulCultivationFarming"))();
    end);
    
    local ThirdToggle = ThirdPage.AddToggle("Sect Elders [Required Rank: Celestial Immortal I]", false, function(Value)
        getgenv().Farming = Value
        getgenv().NPC = "Sect"
        getgenv().Quest = function()
            local args = {[1] = workspace:WaitForChild("Quest NPCS"):WaitForChild("Elder - Quest (2)"):WaitForChild("HumanoidRootPart"):WaitForChild("QuestActivator"):WaitForChild("Quest")};
            game:GetService("ReplicatedStorage"):WaitForChild("Quest Remote Events"):WaitForChild("EnableQuest"):FireServer(unpack(args));
        end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/SoulCultivationFarming"))();
    end);
    
    local ThirdLabel = ThirdPage.AddButton("Heavenly Area (2) [Teleport]", function()
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(7, Enum.EasingStyle.Linear)
        tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(-2836.76220703125, 69.9999771118164, 4243.4140625)}):Play();
    end);
    
    local ThirdToggle = ThirdPage.AddToggle("Lesser Angels [Required Rank: Lesser Divinity X]", false, function(Value)
        getgenv().Farming = Value
        getgenv().NPC = "Less"
        getgenv().Quest = function()
            local args = {[1] = workspace:WaitForChild("Quest NPCS"):WaitForChild("Damon - Quest"):WaitForChild("HumanoidRootPart"):WaitForChild("QuestActivator"):WaitForChild("Quest")};
            game:GetService("ReplicatedStorage"):WaitForChild("Quest Remote Events"):WaitForChild("EnableQuest"):FireServer(unpack(args));
        end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/SoulCultivationFarming"))();
    end);
    
    local ThirdToggle = ThirdPage.AddToggle("Greater Angels [Required Rank: Greater Divinity X]", false, function(Value)
        getgenv().Farming = Value
        getgenv().NPC = "Greater"
        getgenv().Quest = function()
            local args = {[1] = workspace:WaitForChild("Quest NPCS"):WaitForChild("Damon (2) - Quest"):WaitForChild("HumanoidRootPart"):WaitForChild("QuestActivator"):WaitForChild("Quest")};
            game:GetService("ReplicatedStorage"):WaitForChild("Quest Remote Events"):WaitForChild("EnableQuest"):FireServer(unpack(args));
        end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/SoulCultivationFarming"))();
    end);
    
    local ThirdToggle = ThirdPage.AddToggle("Greater Angels [Required Rank: Greater Divinity X]", false, function(Value)
        getgenv().Farming = Value
        getgenv().NPC = "Greater"
        getgenv().Quest = function()
            local args = {[1] = workspace:WaitForChild("Quest NPCS"):WaitForChild("Damon (2) - Quest"):WaitForChild("HumanoidRootPart"):WaitForChild("QuestActivator"):WaitForChild("Quest")};
            game:GetService("ReplicatedStorage"):WaitForChild("Quest Remote Events"):WaitForChild("EnableQuest"):FireServer(unpack(args));
        end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/SoulCultivationFarming"))();
    end);
    
    local FourthLabel = FourthPage.AddLabel("[+] Auto Train 💪");
    local FourthToggle = FourthPage.AddToggle("Meditation 🧘‍♂️[Not as good but you can play w it.]", false, function(Value)
        getgenv().Meditate = Value
        while getgenv().Meditate do wait(0.0001)
            local args = {[1] = true}
            game:GetService("ReplicatedStorage"):WaitForChild("Qi Remote Events"):WaitForChild("Cultivate"):FireServer(unpack(args))
        end
    end)
    
    local FourthLabel = FourthPage.AddButton("Full Meditation 🧘‍♀️ [Best for AFK]", function()
        getgenv().Press = function(v)
            return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game);
        end
        Press("C");
    end);
    -- Lazy to do the "Teleports" part

end

--// 🟢 Chainsaw Man: Devil's Heart \\--
if game.PlaceId == Supported.Chainsaw_ManDH then
    task.spawn(function()
        wait(3);
        Notif:Notification("Game Detected ⚠️", "Chainsaw Man Devil's Heart  🔥", "GothamSemibold", "Gotham", 2.5);
    end)

    --// Main Pages \\--
    local SecondPage = MainUI.AddPage("Farming");

    local SecondLabel = SecondPage.AddLabel("[+] Stuff ❗");
    local SecondToggle = SecondPage.AddToggle("Shift Lock  👀", false, function(Value)
        getgenv().Switching = Value
        if getgenv().Switching == true then
            game:GetService('Players').LocalPlayer.DevEnableMouseLock = true
        else
            game:GetService('Players').LocalPlayer.DevEnableMouseLock = false
        end
    end);

--[[
    local SecondButton = SecondPage.AddButton("Soon  🟠", function()

    end);

    local SecondButton = SecondPage.AddButton("Soon  🟠", function()

    end);

    local SecondButton = SecondPage.AddButton("Soon  🟠", function()

    end);

    local SecondButton = SecondPage.AddButton("Soon  🟠", function()

    end);
--]]

    local SecondLabel = SecondPage.AddLabel("[+] Janitor Quest  🧹");
    local SecondButton = SecondPage.AddButton("Get Quest  ✨", function()
        for i = 1,10 do wait(0.10)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-283.7160949707031, 458.60162353515625, -426.21221923828125);
        end
        for i, v in pairs(workspace.DialogNPCs.Janitor:GetDescendants()) do
            if (v.ClassName == "ProximityPrompt") then
                fireproximityprompt(v, 0);
            end
        end
        wait(0.25);
        local vim = game:GetService'VirtualInputManager'
        local x = game:GetService("Players").LocalPlayer.PlayerGui.dialogGUI.f.sf.option.text
        
        vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
        vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
    end);

    local SecondToggle = SecondPage.AddToggle("Start Cleaning  🧼", false, function(Value)
        getgenv().Cleaning = Value
    
        while getgenv().Cleaning == true do wait(0.15)
            local Table = {} for i,v in pairs(workspace.Interactable.dirty:GetChildren()) do if v:IsA("BasePart") then table.insert(Table, v) end end if #Table > 0 then game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = Table[math.random(1,#Table)].CFrame end
            for i,v in pairs(workspace.Interactable.dirty:GetDescendants()) do
                if (v.ClassName == "ProximityPrompt") then
                    fireproximityprompt(v, 0);
                end
            end
        end
    end);

    local SecondLabel = SecondPage.AddLabel("[+] Delivery Quest  🍕");
    local SecondButton = SecondPage.AddButton("Get Quest  ✨", function()
        for i = 1,10 do wait(0.10)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-379.3523864746094, 449.5252685546875, 75.71353912353516)
        end
        wait(1.35)
        for i, v in pairs(workspace.DialogNPCs.PizzaMan:GetDescendants()) do
            if (v.ClassName == "ProximityPrompt") then
                fireproximityprompt(v, 0);
            end
        end
        wait(0.25);
        local vim = game:GetService'VirtualInputManager'
        local x = game:GetService("Players").LocalPlayer.PlayerGui.dialogGUI.f.sf.option.text
        
        vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
        vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
    end);

    local SecondToggle = SecondPage.AddToggle("Start delivering  🚚", false, function(Value)
        getgenv().Delivering = Value
    
        while getgenv().Delivering == true do
            pcall(function()
                for i = 1,10 do wait(0.10)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-379.3523864746094, 449.5252685546875, 75.71353912353516)
                end
                wait(1.35)
                for i, v in pairs(workspace.DialogNPCs.PizzaMan:GetDescendants()) do
                    if (v.ClassName == "ProximityPrompt") then
                        fireproximityprompt(v, 0);
                    end
                end
                wait(0.25);
                local vim = game:GetService'VirtualInputManager'
                local x = game:GetService("Players").LocalPlayer.PlayerGui.dialogGUI.f.sf.option.text
                
                vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
                vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
                wait(0.1)
                for i = 1,50 do wait(0.015)
                    local Table = {} for i,v in pairs(workspace.Interactable.pizzagoals:GetChildren()) do if v:IsA("BasePart") then table.insert(Table, v) end end if #Table > 0 then game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = Table[math.random(1,#Table)].CFrame end
                end
                wait(0.15)
            end)
        end
    end);

    local SecondLabel = SecondPage.AddLabel("[+] Fiend Quest  🦟");
    local SecondButton = SecondPage.AddButton("Start Farming  🐞", function()
        task.spawn(function()
            Notif:Notification("Game Detected ⚠️", 'Press "X" to turn off', "GothamSemibold", "Gotham", 2.5);
        end)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/ChainsawAutofarmDevilHeart"))();
    end);



end

--// 🟢 SPTS Endless \\--
if game.PlaceId == Supported.SPTS_Endless then
    task.spawn(function()
        wait(3);
        Notif:Notification("Game Detected ⚠️", "SPTS ENDLESS 🔥", "GothamSemibold", "Gotham", 2.5);
    end)

    local SecondAndHalfPage = MainUI.AddPage("Training");
    local ThirdPage = MainUI.AddPage("Teleports");

    local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Untouchable  👀");
    local SecondAndHalfLabel = SecondAndHalfPage.AddToggle("God Mode 🔥", false, function(Value)
        getgenv().GodModded = Value
        while getgenv().GodModded do wait(3.5);
            local CurrentLoc = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            local args = {[1] = {[1] = "Respawn"}};
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args));
            wait(0.95);
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CurrentLoc
        end
    end)

    local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Auto Train  💪");
    local SecondAndHalfLabel = SecondAndHalfPage.AddToggle("Strengh  👊", false, function(Value)
        getgenv().Fist = Value
        while getgenv().Fist do wait(0.35);
            local args = {[1] = {[1] = "Add_FS_Request"}};
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args));
        end
    end)

    local SecondAndHalfLabel = SecondAndHalfPage.AddToggle("Endurance  🧱", false, function(Value)
        getgenv().BodyThoughness = Value
        while getgenv().BodyThoughness do wait(0.35);
            local args = {[1] = {[1] = "+BT1"}};
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args));
        end
    end)

    local SecondAndHalfLabel = SecondAndHalfPage.AddToggle("Meditation 🧘‍♀️", false, function(Value)
        getgenv().Cultivation = Value
        while getgenv().Cultivation do wait(0.35);
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") and v.Name == "Meditate" then
                    v.Parent = game:GetService("Players").LocalPlayer.Character
                end
            end
        end
    end)

    local SecondAndHalfLabel = SecondAndHalfPage.AddToggle("Speed  🏃‍♂️", false, function(Value)
        getgenv().MovementSpeed = Value
        while getgenv().MovementSpeed do wait(0.35)
            local args = {[1] = {[1] = "Add_MS_Request"}};
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args));
        end
    end)

    local SecondAndHalfLabel = SecondAndHalfPage.AddToggle("Jump Force  🦘", false, function(Value)
        getgenv().JumpForce = Value
        while getgenv().JumpForce do wait(0.35)
            local args = {[1] = {[1] = "Add_JF_Request"}};
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args));
        end
    end)

    local ThirdButton = ThirdPage.AddButton("Working on this 🟠", function()

    end);
end

--// 🟢 Chainsaw Man X \\--
if game.PlaceId == Supported.Chainsaw_ManXPVP  or game.PlaceId == Supported.Chainsaw_ManXGrind then
    task.spawn(function()
        wait(3);
        Notif:Notification("Game Detected ⚠️", "Chainsaw Man X  🔥", "GothamSemibold", "Gotham", 2.5);
    end)
        --// Main Pages \\--
        local SecondPage = MainUI.AddPage("Fighting");
        local SecondAndHalfPage = MainUI.AddPage("Farming");

        local SecondLabel = SecondPage.AddLabel("[+] Grind World");
        local SecondLabel = SecondPage.AddToggle("Auto Block | No Cooldown", false, function(Value)
            if game.PlaceId ~= 13566086428 then Notif:Notification("Resonance 💀", "Not in grind World", "GothamSemibold", "Gotham", 1); return end
            getgenv().AutoBlockingX = Value
            while getgenv().AutoBlockingX == true do wait(0.75);
                local args = {
                    [1] = "Add",
                    [2] = "Blocking"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ServerComm"):FireServer(unpack(args))
                game:GetService("UserInputService").InputBegan:Connect(function(xb,xa)
                    if not xa and xb.UserInputType == Enum.UserInputType.MouseButton1 then
                        local args = {
                            [1] = "Destroy",
                            [2] = "Blocking"
                        }
                
                        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ServerComm"):FireServer(unpack(args))
                    end
                end)
            end  
        end);
        local SecondLabel = SecondPage.AddToggle("M1 | No Cooldown", false, function(Value)
            if game.PlaceId ~= 13566086428 then Notif:Notification("Resonance 💀", "Not in grind World", "GothamSemibold", "Gotham", 1); return end
            getgenv().M1noCooldownX = Value
            while getgenv().M1noCooldownX == true do wait(0.1);
                local args = {
                    [1] = "M1",
                    [2] = "DoM1",
                    [3] = 1,
                    [4] = false
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("FrameWorkHandle"):FireServer(unpack(args))
                local args = {
                    [1] = "M1",
                    [2] = "DoM1",
                    [3] = 2,
                    [4] = false
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("FrameWorkHandle"):FireServer(unpack(args))
                local args = {
                    [1] = "M1",
                    [2] = "DoM1",
                    [3] = 3,
                    [4] = false
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("FrameWorkHandle"):FireServer(unpack(args))
                local args = {
                    [1] = "M1",
                    [2] = "DoM1",
                    [3] = 4,
                    [4] = false
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("FrameWorkHandle"):FireServer(unpack(args))                                                                
                                                                                
            end  
        end);

        local SecondLabel = SecondPage.AddLabel("[+] PVP World");
        local SecondLabel = SecondPage.AddToggle("Auto Block | No Cooldown", false, function(Value)
            if game.PlaceId == 13566086428 then Notif:Notification("Resonance 💀", "Not in pvp World", "GothamSemibold", "Gotham", 1); return end
            getgenv().AutoBlocking = Value
            while getgenv().AutoBlocking == true do wait(0.1);
                local args = {
                    [1] = "Check",
                    [2] = "Blocking",
                    [3] = true
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Check"):FireServer(unpack(args))
                local args = {
                    [1] = "Check",
                    [2] = "Blocking",
                    [3] = true,
                    [4] = false
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Check"):FireServer(unpack(args))
            end  
        end);

        local SecondLabel = SecondPage.AddToggle("M1 | No Cooldown", false, function(Value)
            if game.PlaceId == 13566086428 then Notif:Notification("Resonance 💀", "Not in pvp World", "GothamSemibold", "Gotham", 1); return end
            getgenv().M1noCooldown = Value
            while getgenv().M1noCooldown == true do wait(0.1);
                local args = {
                    [1] = "One",
                    [2] = 1
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("M1s"):FireServer(unpack(args))
                local args = {
                    [1] = "Two",
                    [2] = 2
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("M1s"):FireServer(unpack(args))
                local args = {
                    [1] = "Three",
                    [2] = 3
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("M1s"):FireServer(unpack(args))
                local args = {
                    [1] = "Four",
                    [2] = 4
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("M1s"):FireServer(unpack(args))
                local args = {
                    [1] = "Five",
                    [2] = 5
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("M1s"):FireServer(unpack(args))
                                                                                
            end  
        end);

        local SecondLabel = SecondPage.AddToggle("Barrage | No Cooldown", false, function(Value)
            if game.PlaceId == 13566086428 then Notif:Notification("Resonance 💀", "Not in pvp World", "GothamSemibold", "Gotham", 1); return end
            getgenv().Barrage = Value
            while getgenv().Barrage == true do wait(0.1);
                local args = {
                    [1] = "BarrageFinal"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Attacks"):FireServer(unpack(args))                            
                                                                                
            end  
        end);

        local SecondLabel = SecondPage.AddToggle("Demonic Slash | No Cooldown", false, function(Value)
            if game.PlaceId == 13566086428 then Notif:Notification("Resonance 💀", "Not in pvp World", "GothamSemibold", "Gotham", 1); return end
            getgenv().Crimson = Value
            while getgenv().Crimson == true do wait(0.1);
                local args = {
                    [1] = "CrimsonSlash"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Attacks"):FireServer(unpack(args))                                                                                                                              
            end  
        end);

        local SecondLabel = SecondPage.AddToggle("UpperCut | No Cooldown", false, function(Value)
            if game.PlaceId == 13566086428 then Notif:Notification("Resonance 💀", "Not in pvp World", "GothamSemibold", "Gotham", 1); return end
            getgenv().UpperCutnoCooldown = Value
            while getgenv().UpperCutnoCooldown == true do wait(0.1);
                local args = {
                    [1] = "UpperCut"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Attacks"):FireServer(unpack(args))                
                                                                                
            end  
        end);

        local SecondLabel = SecondPage.AddLabel("[+] Server  ⚠️");
        local SecondLabel = SecondPage.AddToggle("Transform | Crash Server", false, function(Value)
            if game.PlaceId == 13566086428 then Notif:Notification("Resonance 💀", "Not in pvp World", "GothamSemibold", "Gotham", 1); return end
            getgenv().CrashServer = Value
            while getgenv().CrashServer == true do wait(0.1);
                local args = {
                    [1] = "Transform"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Transform"):FireServer(unpack(args))                                                                                      
            end  
        end);

        local SecondLabel = SecondPage.AddLabel("[+] Effects  ✨");
        local SecondLabel = SecondPage.AddToggle("JumpSlam | Particle", false, function(Value)
            if game.PlaceId == 13566086428 then Notif:Notification("Resonance 💀", "Not in pvp World", "GothamSemibold", "Gotham", 1); return end
            getgenv().JumpSlams = Value
            while getgenv().JumpSlams == true do wait(0.1);
                local args = {
                    [1] = "JumpSlam"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Attacks"):FireServer(unpack(args))                                                                                                   
            end  
        end);

        local SecondLabel = SecondPage.AddToggle("Dash | Particle", false, function(Value)
            if game.PlaceId == 13566086428 then Notif:Notification("Resonance 💀", "Not in pvp World", "GothamSemibold", "Gotham", 1); return end
            getgenv().DashH = Value
            while getgenv().DashH == true do wait(0.1);
                local args = {
                    [1] = "DashParticles"
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("DashHit"):FireServer(unpack(args))                                                                                                                  
            end  
        end);

        local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Quests ❗");
        local SecondAndHalfLabel = SecondAndHalfPage.AddToggle("Mafias Quest", false, function(Value)
            if game.PlaceId ~= 13566086428 then Notif:Notification("Resonance 💀", "Not in grind World", "GothamSemibold", "Gotham", 1); return end
            getgenv().FarminMafias = Value
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/MafiasAutofarmChainsawManX"))();
        end);

        local SecondAndHalfLabel = SecondAndHalfPage.AddToggle("Mafia Boss Quest", false, function(Value)
            if game.PlaceId ~= 13566086428 then Notif:Notification("Resonance 💀", "Not in grind World", "GothamSemibold", "Gotham", 1); return end
            getgenv().FarminMafiaBoss = Value
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/MafiaBossAutofarmChainsawManX"))();
        end);

        local SecondAndHalfLabel = SecondAndHalfPage.AddToggle("Uncanny Boss Quest", false, function(Value)
            if game.PlaceId ~= 13566086428 then Notif:Notification("Resonance 💀", "Not in grind World", "GothamSemibold", "Gotham", 1); return end
            getgenv().FarminUncanny = Value
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/UncannyAutofarmChainsawManX"))();
        end);

        local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Auto Stats 👀");
        local SecondAndHalfLabel = SecondAndHalfPage.AddToggle("Devil Power", false, function(Value)
            if game.PlaceId ~= 13566086428 then Notif:Notification("Resonance 💀", "Not in grind World", "GothamSemibold", "Gotham", 1); return end
            getgenv().Dpower = Value
            while getgenv().Dpower == true do wait(0.001);
                local args = {
                    [1] = "Stats",
                    [2] = "Add",
                    [3] = "DevilPower",
                    [4] = 1
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Menu"):FireServer(unpack(args))
                local args = {
                    [1] = "Stats",
                    [2] = "Add",
                    [3] = "DevilPower",
                    [4] = 5
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Menu"):FireServer(unpack(args))                                                                                                        
            end  
        end);
        local SecondAndHalfLabel = SecondAndHalfPage.AddToggle("Defense", false, function(Value)
            if game.PlaceId ~= 13566086428 then Notif:Notification("Resonance 💀", "Not in grind World", "GothamSemibold", "Gotham", 1); return end
            getgenv().Def = Value
            while getgenv().Def == true do wait(0.001);
                local args = {
                    [1] = "Stats",
                    [2] = "Add",
                    [3] = "Defense",
                    [4] = 1
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Menu"):FireServer(unpack(args))                
                local args = {
                    [1] = "Stats",
                    [2] = "Add",
                    [3] = "Defense",
                    [4] = 5
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Menu"):FireServer(unpack(args))                                                                                                                                 
            end  
        end);    
  
        local SecondAndHalfLabel = SecondAndHalfPage.AddToggle("Melee", false, function(Value)
            if game.PlaceId ~= 13566086428 then Notif:Notification("Resonance 💀", "Not in grind World", "GothamSemibold", "Gotham", 1); return end
            getgenv().Melee = Value
            while getgenv().Melee == true do wait(0.001);
                local args = {
                    [1] = "Stats",
                    [2] = "Add",
                    [3] = "Melee",
                    [4] = 1
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Menu"):FireServer(unpack(args))                
                local args = {
                    [1] = "Stats",
                    [2] = "Add",
                    [3] = "Melee",
                    [4] = 5
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Menu"):FireServer(unpack(args))                                                                                                                               
            end  
        end);  
end

--// 🟢 Heaven Stand \\--
if game.PlaceId == Supported.Heaven_Stand or game.PlaceId == Supported.Heaven_StandTestingPlace or game.PlaceId == Supported.Heaven_StandFakeGame then
    task.spawn(function()
        wait(3);
        Notif:Notification("Game Detected ⚠️", "Heaven Stand  🔥", "GothamSemibold", "Gotham", 2.5);
    end)
        --// Main Pages \\--
        local BackUp = MainUI.AddPage("Shoping");
        local SecondPage = MainUI.AddPage("Farming");
        local SecondAndHalfPage = MainUI.AddPage("Teleports");

        local BackupButton = BackUp.AddButton("Teleport | Shop 🏪", function()
            game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.Shop.HumanoidRootPart.Position);
            for i,v in pairs(game:GetService("Workspace").NPC.Shop:GetDescendants()) do
                if v:IsA("ClickDetector") then
                    fireclickdetector(v);
                    wait(0.55);
                    local vim = game:GetService'VirtualInputManager'
                    local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"].Button.TextButton
                    
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
                end
            end
        end);

        local BackupLabel = BackUp.AddLabel("[+] Auto Buy  🤑");
        local BackupToggle = BackUp.AddToggle("Normal Arrows  🎯", false, function(Value)
            getgenv().BuyArrows = Value

            while getgenv().BuyArrows == true do wait(1.15)
                pcall(function()
                    game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.Shop.HumanoidRootPart.Position);
                    for i,v in pairs(game:GetService("Workspace").NPC.Shop:GetDescendants()) do
                        if v:IsA("ClickDetector") then
                            fireclickdetector(v);
                            wait(0.55);
                            local vim = game:GetService'VirtualInputManager'
                            local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"].Button.TextButton
                            
                            vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
                            vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
                            wait(0.55)
                            local vim = game:GetService('VirtualInputManager')
                            local x = game:GetService("Players").LocalPlayer.PlayerGui.Shop.Frame["Item List"].ScrollingFrame.Arrow.TextButton
        
                            vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X / 2, x.AbsolutePosition.Y + 50, 0, true, x, 1)
                            vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X / 2, x.AbsolutePosition.Y + 50, 0, false, x, 1)
                            wait(0.55)
                            local vim = game:GetService('VirtualInputManager')
                            local x = game:GetService("Players").LocalPlayer.PlayerGui.Shop.Frame["Item Info"]["Item Original"].Buy.TextButton
        
                            vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X / 2, x.AbsolutePosition.Y + 50, 0, true, x, 1)
                            vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X / 2, x.AbsolutePosition.Y + 50, 0, false, x, 1)
                            wait(2.15)
                            local vim = game:GetService('VirtualInputManager')
                            local x = game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()[17].Frame.Yes.TextButton
        
                            vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X / 2, x.AbsolutePosition.Y + 50, 0, true, x, 1)
                            vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X / 2, x.AbsolutePosition.Y + 50, 0, false, x, 1)
                        end
                    end
                end)
            end
        end);

        local BackupToggle = BackUp.AddToggle("Mystery Arrows  ❓", false, function(Value)
            getgenv().BuyMysteryArrows = Value

            while getgenv().BuyMysteryArrows == true do wait(1.15)
                pcall(function()
                    game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.Shop.HumanoidRootPart.Position);
                    for i,v in pairs(game:GetService("Workspace").NPC.Shop:GetDescendants()) do
                        if v:IsA("ClickDetector") then
                            fireclickdetector(v);
                            wait(0.55);
                            local vim = game:GetService'VirtualInputManager'
                            local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"].Button.TextButton
                            
                            vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
                            vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
                            wait(0.55)
                            local vim = game:GetService('VirtualInputManager')
                            local x = game:GetService("Players").LocalPlayer.PlayerGui.Shop.Frame["Item List"].ScrollingFrame["Mystery Arrow"].TextButton
        
                            vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X / 2, x.AbsolutePosition.Y + 50, 0, true, x, 1)
                            vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X / 2, x.AbsolutePosition.Y + 50, 0, false, x, 1)
                            wait(0.55)
                            local vim = game:GetService('VirtualInputManager')
                            local x = game:GetService("Players").LocalPlayer.PlayerGui.Shop.Frame["Item Info"]["Item Original"].Buy.TextButton
        
                            vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X / 2, x.AbsolutePosition.Y + 50, 0, true, x, 1)
                            vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X / 2, x.AbsolutePosition.Y + 50, 0, false, x, 1)
                            wait(2.15)
                            local vim = game:GetService('VirtualInputManager')
                            local x = game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()[17].Frame.Yes.TextButton
        
                            vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X / 2, x.AbsolutePosition.Y + 50, 0, true, x, 1)
                            vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X / 2, x.AbsolutePosition.Y + 50, 0, false, x, 1)
                        end
                    end
                end)
            end
        end);
        local BackupLabel = BackUp.AddLabel("[+] Attention  ⚠️");
        local BackupButton = BackUp.AddButton("Reset Stand [No Rokakaka]  💀", function()
            local CurrentLoc = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(0.1)
            game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.Pucci.HumanoidRootPart.Position);
            for i,v in pairs(game:GetService("Workspace").NPC.Pucci:GetDescendants()) do
                if v:IsA("ClickDetector") then
                    fireclickdetector(v);
                    wait(0.55);
                    local vim = game:GetService'VirtualInputManager'
                    local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"]:GetChildren()[3].TextButton
                    
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
                    wait(1.5);
                    local vim = game:GetService'VirtualInputManager'
                    local x = game:GetService("Players").LocalPlayer.PlayerGui.Choosing.Frame.Yes.TextButton
                    
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
                    wait(2.15)
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CurrentLoc
                end
            end            
        end);

        local ThirdLabel = BackUp.AddLabel("[+] Auto Stand Farm [Without Rokakaka]")
        local ThirdLabel = BackUp.AddLabel("(Buy arrows first)")
        local FirstDropdown = BackUp.AddDropdown("Selected 1", {
            "Crazy_Diamond",
            "Crazy_Female",
            "Gold Experience",
            "Hitori Gotoh",
            "Hitori Gotoh (SSJ)",
            "King_Crimson",
            "Killer Queen",
            "Ruby_Diamond",
            "Star_Platinum",
            "Star_Platinum:The_World",
            "Star_Platinum_OVA",
            "Tendou Alice",
            "------------",
        },
        function(PlayerStandValue1)
            getgenv().StandFarm1 = PlayerStandValue1
        end)

        local FirstDropdown = BackUp.AddDropdown("Selected 2", {
            "Crazy_Diamond",
            "Crazy_Female",
            "Gold Experience",
            "Hitori Gotoh",
            "Hitori Gotoh (SSJ)",
            "King_Crimson",
            "Killer Queen",
            "Ruby_Diamond",
            "Star_Platinum",
            "Star_Platinum:The_World",
            "Star_Platinum_OVA",
            "Tendou Alice",
            "------------",
        }, 
        function(PlayerStandValue2)
            getgenv().StandFarm2 = PlayerStandValue2
        end)
        
        local FirstDropdown = BackUp.AddDropdown("Selected 3", {
            "Crazy_Diamond",
            "Crazy_Female",
            "Gold Experience",
            "Hitori Gotoh",
            "Hitori Gotoh (SSJ)",
            "King_Crimson",
            "Killer Queen",
            "Ruby_Diamond",
            "Star_Platinum",
            "Star_Platinum:The_World",
            "Star_Platinum_OVA",
            "Tendou Alice",
            "------------",
        }, 
        function(PlayerStandValue3)
            getgenv().StandFarm3 = PlayerStandValue3
        end)
    
        local FirstDropdown = BackUp.AddDropdown("Selected 4", {
            "Crazy_Diamond",
            "Crazy_Female",
            "Gold Experience",
            "Hitori Gotoh",
            "Hitori Gotoh (SSJ)",
            "King_Crimson",
            "Killer Queen",
            "Ruby_Diamond",
            "Star_Platinum",
            "Star_Platinum:The_World",
            "Star_Platinum_OVA",
            "Tendou Alice",
            "------------",
        }, 
        function(PlayerStandValue4)
            getgenv().StandFarm4 = PlayerStandValue4
        end)

        local FirstDropdown = BackUp.AddDropdown("Selected 5", {
            "Crazy_Diamond",
            "Crazy_Female",
            "Gold Experience",
            "Hitori Gotoh",
            "Hitori Gotoh (SSJ)",
            "King_Crimson",
            "Killer Queen",
            "Ruby_Diamond",
            "Star_Platinum",
            "Star_Platinum:The_World",
            "Star_Platinum_OVA",
            "Tendou Alice",
            "------------",
        }, 
        function(PlayerStandValue5)
            getgenv().StandFarm5 = PlayerStandValue5
        end)

        local FirstDropdown = BackUp.AddDropdown("Selected 6", {
            "Crazy_Diamond",
            "Crazy_Female",
            "Gold Experience",
            "Hitori Gotoh",
            "Hitori Gotoh (SSJ)",
            "King_Crimson",
            "Killer Queen",
            "Ruby_Diamond",
            "Star_Platinum",
            "Star_Platinum:The_World",
            "Star_Platinum_OVA",
            "Tendou Alice",
            "------------",
        }, 
        function(PlayerStandValue6)
            getgenv().StandFarm6 = PlayerStandValue6
        end)

        local FirstDropdown = BackUp.AddDropdown("Selected 7", {
            "Crazy_Diamond",
            "Crazy_Female",
            "Gold Experience",
            "Hitori Gotoh",
            "Hitori Gotoh (SSJ)",
            "King_Crimson",
            "Killer Queen",
            "Ruby_Diamond",
            "Star_Platinum",
            "Star_Platinum:The_World",
            "Star_Platinum_OVA",
            "Tendou Alice",
            "------------",
        }, 
        function(PlayerStandValue7)
            getgenv().StandFarm7 = PlayerStandValue7
        end)

        local FirstDropdown = BackUp.AddDropdown("Selected 8", {
            "Crazy_Diamond",
            "Crazy_Female",
            "Gold Experience",
            "Hitori Gotoh",
            "Hitori Gotoh (SSJ)",
            "King_Crimson",
            "Killer Queen",
            "Ruby_Diamond",
            "Star_Platinum",
            "Star_Platinum:The_World",
            "Star_Platinum_OVA",
            "Tendou Alice",
            "------------",
        }, 
        function(PlayerStandValue8)
            getgenv().StandFarm8 = PlayerStandValue8
        end)

        local FirstDropdown = BackUp.AddDropdown("Selected 9", {
            "Crazy_Diamond",
            "Crazy_Female",
            "Gold Experience",
            "Hitori Gotoh",
            "Hitori Gotoh (SSJ)",
            "King_Crimson",
            "Killer Queen",
            "Ruby_Diamond",
            "Star_Platinum",
            "Star_Platinum:The_World",
            "Star_Platinum_OVA",
            "Tendou Alice",
            "------------",
        }, 
        function(PlayerStandValue9)
            getgenv().StandFarm9 = PlayerStandValue9
        end)

        local FirstDropdown = BackUp.AddDropdown("Selected 10", {
            "Crazy_Diamond",
            "Crazy_Female",
            "Gold Experience",
            "Hitori Gotoh",
            "Hitori Gotoh (SSJ)",
            "King_Crimson",
            "Killer Queen",
            "Ruby_Diamond",
            "Star_Platinum",
            "Star_Platinum:The_World",
            "Star_Platinum_OVA",
            "Tendou Alice",
            "------------",
        }, 
        function(PlayerStandValue0)
            getgenv().StandFarm0 = PlayerStandValue0
        end)

        local ThirdToggle = BackUp.AddToggle("Start Farming", false, function(Value)
            getgenv().Farming2 = Value

            while getgenv().Farming2 do wait(1.5)
                if game:GetService("Players").LocalPlayer.Data.Ability.Value == "Standless" then
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Arrow") then
                            game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Arrow"))
                            wait(0.15)
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Arrow"):Activate()
                        end
                    end)
                elseif game:GetService("Players").LocalPlayer.Data.Ability.Value == getgenv().StandFarm1 or game:GetService("Players").LocalPlayer.Data.Ability.Value == getgenv().StandFarm2 or game:GetService("Players").LocalPlayer.Data.Ability.Value == getgenv().StandFarm3 or game:GetService("Players").LocalPlayer.Data.Ability.Value == getgenv().StandFarm4 or game:GetService("Players").LocalPlayer.Data.Ability.Value == getgenv().StandFarm5 or game:GetService("Players").LocalPlayer.Data.Ability.Value == getgenv().StandFarm6 or game:GetService("Players").LocalPlayer.Data.Ability.Value == getgenv().StandFarm7 or game:GetService("Players").LocalPlayer.Data.Ability.Value == getgenv().StandFarm8 or game:GetService("Players").LocalPlayer.Data.Ability.Value == getgenv().StandFarm9 or game:GetService("Players").LocalPlayer.Data.Ability.Value == getgenv().StandFarm10 then
                    Notif:Notification("Resonance 💀", "🥳🎉: " .. game:GetService("Players").LocalPlayer.Data.Ability.Value, "GothamSemibold", "Gotham", 9e9)
                    break
                else
                    pcall(function()
                        game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.Pucci.HumanoidRootPart.Position);
                        for i,v in pairs(game:GetService("Workspace").NPC.Pucci:GetDescendants()) do
                            if v:IsA("ClickDetector") then
                                fireclickdetector(v);
                                wait(0.55);
                                local vim = game:GetService'VirtualInputManager'
                                local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"]:GetChildren()[3].TextButton
                                
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
                                wait(1.5);
                                local vim = game:GetService'VirtualInputManager'
                                local x = game:GetService("Players").LocalPlayer.PlayerGui.Choosing.Frame.Yes.TextButton
                                
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
                            end
                        end 
                    end)                   
                end
            end
        end)

        local SecondLabel = SecondPage.AddLabel("[+] Safe Zone  🦺");
        local SecondToggle = SecondPage.AddToggle("Safe Zone  [For farming]", false, function(Value)
            getgenv().SafeFromDeath = Value

            while getgenv().SafeFromDeath == true do wait(1.15)
                pcall(function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-63.611202239990234, 1813.3817138671875, -1468.9007568359375);
                end)
            end
        end);

        local SecondLabel = SecondPage.AddLabel("[+] Auto Chest  🧰");
        local SecondToggle = SecondPage.AddToggle("Start Farming", false, function(Value)
            getgenv().ChestFarming = Value

            while getgenv().ChestFarming == true do wait(0.01)
                pcall(function()
                    if #game:GetService("Workspace").Item_Spawnner.Box:GetChildren() > 0 then
                        game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").Item_Spawnner.Box:GetChildren()[math.random(1,#game:GetService("Workspace").Item_Spawnner.Box:GetChildren())].Box.Base.Position)
                        for i,v in pairs(game:GetService("Workspace").Item_Spawnner.Box:GetDescendants()) do
                            if v:IsA("ClickDetector") then
                                fireclickdetector(v);
                            end
                        end
                    end
                end)
            end
        end);

        local SecondLabel = SecondPage.AddLabel("[+] Rares Items  💎");
        local SecondToggle = SecondPage.AddToggle("Start Farming (Any Item)", true, function(Value)
            getgenv().RareFarming = Value

            local Paths = {
                workspace.Item_Spawnner["Dual Knife"],
                workspace.Item_Spawnner.Green_Baby,
                workspace.Item_Spawnner["Requiem Arrow"],
                workspace.Item_Spawnner.Watch,
            }
            
            while getgenv().RareFarming == true do wait(0.001)
                pcall(function()
                    for i,v in ipairs(Paths) do
                        for i,b in pairs(v:GetDescendants()) do
                            if b:IsA("ClickDetector") then
                                game.Players.LocalPlayer.Character:MoveTo(b.Parent:IsA("BasePart") and b.Parent.Position or b.Position)
                                wait(0.5)
                                fireclickdetector(b)
                            end
                        end
                    end
                end)
            end       
        end);

        local ThirdLabel = SecondPage.AddLabel("[+] Auto Quests  📜")
        local SecondToggle = SecondPage.AddToggle("Take Damage  🤕", false, function(Value)
            getgenv().TakingPain = Value

            while getgenv().TakingPain == true do wait(0.015)
                if workspace.Enemies:FindFirstChild("S:Diavolo Attacking") and workspace.Enemies:FindFirstChild("S:Diavolo Attacking"):FindFirstChild("HumanoidRootPart") then
                    game:GetService("Players").LocalPlayer.Character:MoveTo(workspace.Enemies["S:Diavolo Attacking"].HumanoidRootPart.Position + workspace.Enemies["S:Diavolo Attacking"].HumanoidRootPart.CFrame.LookVector * 5);
                else
                    Notif:Notification("Resonance 💀", "Npc not found", "GothamSemibold", "Gotham", 3);
                    break
                end
            end
        end);

        getgenv().Attacking = function()
            local args = {[1]="MouseButton1"};
            game:GetService("ReplicatedStorage"):WaitForChild("Remote_Events"):WaitForChild("Input_Remote"):InvokeServer(unpack(args));
            
            local args = {[1]="E+"};
            game:GetService("ReplicatedStorage"):WaitForChild("Remote_Events"):WaitForChild("Input_Remote"):InvokeServer(unpack(args));
            
            local args = {[1]="R+"};
            game:GetService("ReplicatedStorage"):WaitForChild("Remote_Events"):WaitForChild("Input_Remote"):InvokeServer(unpack(args));
            
            local args = {[1]="T"};
            game:GetService("ReplicatedStorage"):WaitForChild("Remote_Events"):WaitForChild("Input_Remote"):InvokeServer(unpack(args));
            
            local args = {[1]="Y"};
            game:GetService("ReplicatedStorage"):WaitForChild("Remote_Events"):WaitForChild("Input_Remote"):InvokeServer(unpack(args));
            
            local args = {[1]="X"};
            game:GetService("ReplicatedStorage"):WaitForChild("Remote_Events"):WaitForChild("Input_Remote"):InvokeServer(unpack(args));
            
            local args = {[1]="Z"};
            game:GetService("ReplicatedStorage"):WaitForChild("Remote_Events"):WaitForChild("Input_Remote"):InvokeServer(unpack(args));
            
            local args = {[1]="V"};
            game:GetService("ReplicatedStorage"):WaitForChild("Remote_Events"):WaitForChild("Input_Remote"):InvokeServer(unpack(args));
            
            local args = {[1]="H+"};
            game:GetService("ReplicatedStorage"):WaitForChild("Remote_Events"):WaitForChild("Input_Remote"):InvokeServer(unpack(args));
        end;

        local SecondToggle = SecondPage.AddToggle("Deal Damage   👊", false, function(Value)
            getgenv().DealingPain = Value
            
            while getgenv().DealingPain == true do wait(0.15)
                if workspace.Enemies:FindFirstChild("250 Health : S:Diavolo Dummy") and workspace.Enemies:FindFirstChild("250 Health : S:Diavolo Dummy"):FindFirstChild("HumanoidRootPart") then
                    game:GetService("Players").LocalPlayer.Character:MoveTo(workspace.Enemies["250 Health : S:Diavolo Dummy"].HumanoidRootPart.Position + -workspace.Enemies["250 Health : S:Diavolo Dummy"].HumanoidRootPart.CFrame.LookVector * -5); game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(workspace.Enemies["250 Health : S:Diavolo Dummy"].HumanoidRootPart.Position + -workspace.Enemies["250 Health : S:Diavolo Dummy"].HumanoidRootPart.CFrame.LookVector * -5, workspace.Enemies["250 Health : S:Diavolo Dummy"].HumanoidRootPart.Position - -workspace.Enemies["250 Health : S:Diavolo Dummy"].HumanoidRootPart.CFrame.LookVector * -5));                           
                    task.spawn(function()
                        getgenv().Attacking();
                    end)
                else
                    Notif:Notification("Resonance 💀", "Npc not found", "GothamSemibold", "Gotham", 3);
                    break
                end 
            end          
        end);

        local ThirdLabel = SecondPage.AddLabel("[+] Auto Bosses  💥")
        local SecondButton = SecondPage.AddButton("One Shot Punch  👊💀", function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/HeavenStandOneShotNPC"))();
        end);

        local SecondToggle = SecondPage.AddToggle("DIO   👊", false, function(Value)
            getgenv().BossingDIO = Value
            
            while getgenv().BossingDIO == true do wait(0.015)
                if workspace.Enemies:FindFirstChild("DIO") and workspace.Enemies:FindFirstChild("DIO"):FindFirstChild("HumanoidRootPart") then
                    game:GetService("Players").LocalPlayer.Character:MoveTo(workspace.Enemies.DIO.HumanoidRootPart.Position + -workspace.Enemies.DIO.HumanoidRootPart.CFrame.LookVector * 9) game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(workspace.Enemies.DIO.HumanoidRootPart.Position + -workspace.Enemies.DIO.HumanoidRootPart.CFrame.LookVector * 9, workspace.Enemies.DIO.HumanoidRootPart.Position - -workspace.Enemies.DIO.HumanoidRootPart.CFrame.LookVector * 9));                    
                    task.spawn(function()
                        getgenv().Attacking();
                    end)
                else
                    Notif:Notification("Resonance 💀", "DIO not found", "GothamSemibold", "Gotham", 3);
                    break
                end 
            end          
        end);

        local SecondToggle = SecondPage.AddToggle("Garou   👊", false, function(Value)
            getgenv().BossingGarou = Value

            while getgenv().BossingGarou == true do wait(0.15)
                if workspace.Enemies:FindFirstChild("Garou") and workspace.Enemies.Garou:FindFirstChild("HumanoidRootPart") then
                    game:GetService("Players").LocalPlayer.Character:MoveTo(workspace.Enemies.Garou.HumanoidRootPart.Position + -workspace.Enemies.Garou.HumanoidRootPart.CFrame.LookVector * 9) game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(workspace.Enemies.Garou.HumanoidRootPart.Position + -workspace.Enemies.Garou.HumanoidRootPart.CFrame.LookVector * 9, workspace.Enemies.Garou.HumanoidRootPart.Position - -workspace.Enemies.Garou.HumanoidRootPart.CFrame.LookVector * 9))
                    task.spawn(function()
                        getgenv().Attacking();
                    end)
                else
                    Notif:Notification("Resonance 💀", "Garou not found", "GothamSemibold", "Gotham", 3)
                    break
                end
            end                 
        end);

        getgenv().Slots = function(X)
            if game:GetService("Players").LocalPlayer.Data.Item_Storage["Slot" .. X].Value == "None" then
                local vim = game:GetService('VirtualInputManager')
                local x = game:GetService("Players").LocalPlayer.PlayerGui["Item Storage"].Frame["Item List"].ScrollingFrame["Slot" .. X].TextButton
        
                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X / 2, x.AbsolutePosition.Y + 50, 0, true, x, 1)
                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X / 2, x.AbsolutePosition.Y + 50, 0, false, x, 1)
                wait(0.5)
                local vim = game:GetService'VirtualInputManager'
                local x = game:GetService("Players").LocalPlayer.PlayerGui["Item Storage"].Frame["Item Info"]["Item Original"].Equip.TextButton
        
                vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
                vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
            end
        end

        local SecondLabel = SecondPage.AddLabel("[+] Auto Store Items  💼");
        local SecondToggle = SecondPage.AddToggle("Normal Arrow  🎯", false, function(Value)
            getgenv().StoringItems1 = Value
            getgenv().ItemToStorage1 = "Arrow"
            
            while getgenv().StoringItems1 == true do wait(0.1)
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage1) then
                        game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage1))
                        game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.RaymondZl.HumanoidRootPart.Position);
                        for i,v in pairs(game:GetService("Workspace").NPC.RaymondZl:GetDescendants()) do
                            if v:IsA("ClickDetector") then
                                fireclickdetector(v);
                                wait(0.55);
                                local vim = game:GetService('VirtualInputManager')
                                local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"].Button.TextButton
            
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, true, x, 1)
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, false, x, 1)
                                wait(0.65)
                                for X = 1,6 do
                                   getgenv().Slots(X);
                                   wait(0.015);
                                end
                            end
                        end
                    end
                end)
            end
        end)

        local SecondToggle = SecondPage.AddToggle("Mystery Arrow  ❓", false, function(Value)
            getgenv().StoringItems2 = Value
            getgenv().ItemToStorage2 = "Mystery Arrow"
                  
            while getgenv().StoringItems2 == true do wait(0.1)
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage2) then
                        game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage2))
                        game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.RaymondZl.HumanoidRootPart.Position);
                        for i,v in pairs(game:GetService("Workspace").NPC.RaymondZl:GetDescendants()) do
                            if v:IsA("ClickDetector") then
                                fireclickdetector(v);
                                wait(0.55);
                                local vim = game:GetService('VirtualInputManager')
                                local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"].Button.TextButton
            
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, true, x, 1)
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, false, x, 1)
                                wait(0.65)
                                for X = 1,6 do
                                   getgenv().Slots(X);
                                   wait(0.015);
                                end
                            end
                        end
                    end
                end)
            end
        end)

        local SecondToggle = SecondPage.AddToggle("Requiem Arrow  ✨", false, function(Value)
            getgenv().StoringItems3 = Value
            getgenv().ItemToStorage3 = "Requiem Arrow"
            
            while getgenv().StoringItems3 == true do wait(0.1)
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage3) then
                        game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage3))
                        game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.RaymondZl.HumanoidRootPart.Position);
                        for i,v in pairs(game:GetService("Workspace").NPC.RaymondZl:GetDescendants()) do
                            if v:IsA("ClickDetector") then
                                fireclickdetector(v);
                                wait(0.55);
                                local vim = game:GetService('VirtualInputManager')
                                local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"].Button.TextButton
            
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, true, x, 1)
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, false, x, 1)
                                wait(0.65)
                                for X = 1,6 do
                                   getgenv().Slots(X);
                                   wait(0.015);
                                end
                            end
                        end
                    end
                end)
            end
        end)

        local SecondToggle = SecondPage.AddToggle("Rokakaka  🍎", false, function(Value)
            getgenv().StoringItemsA = Value
            getgenv().ItemToStorageA = "Rokakaka"

            while getgenv().StoringItemsA == true do wait(0.1)
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorageA) then
                        game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorageA))
                        game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.RaymondZl.HumanoidRootPart.Position);
                        for i,v in pairs(game:GetService("Workspace").NPC.RaymondZl:GetDescendants()) do
                            if v:IsA("ClickDetector") then
                                fireclickdetector(v);
                                wait(0.55);
                                local vim = game:GetService('VirtualInputManager')
                                local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"].Button.TextButton
            
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, true, x, 1)
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, false, x, 1)
                                wait(0.65)
                                for X = 1,6 do
                                   getgenv().Slots(X);
                                   wait(0.015);
                                end
                            end
                        end
                    end
                end)
            end
        end)

        local SecondToggle = SecondPage.AddToggle("Stone Mask  🎭", false, function(Value)
            getgenv().StoringItems4 = Value
            getgenv().ItemToStorage4 = "Stone Mask"
        
            while getgenv().StoringItems4 == true do wait(0.1)
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage4) then
                        game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage4))
                        game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.RaymondZl.HumanoidRootPart.Position);
                        for i,v in pairs(game:GetService("Workspace").NPC.RaymondZl:GetDescendants()) do
                            if v:IsA("ClickDetector") then
                                fireclickdetector(v);
                                wait(0.55);
                                local vim = game:GetService('VirtualInputManager')
                                local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"].Button.TextButton
            
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, true, x, 1)
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, false, x, 1)
                                wait(0.65)
                                for X = 1,6 do
                                   getgenv().Slots(X);
                                   wait(0.015);
                                end
                            end
                        end
                    end
                end)
            end
        end)

        local SecondToggle = SecondPage.AddToggle("Eyes Of The Saint Corpse  👁️", false, function(Value)
            getgenv().StoringItems5 = Value
            getgenv().ItemToStorage5 = "Eye's of Saint's Corpse"

            while getgenv().StoringItems5 == true do wait(0.1)
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage5) then
                        game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage5))
                        game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.RaymondZl.HumanoidRootPart.Position);
                        for i,v in pairs(game:GetService("Workspace").NPC.RaymondZl:GetDescendants()) do
                            if v:IsA("ClickDetector") then
                                fireclickdetector(v);
                                wait(0.55);
                                local vim = game:GetService('VirtualInputManager')
                                local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"].Button.TextButton
            
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, true, x, 1)
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, false, x, 1)
                                wait(0.65)
                                for X = 1,6 do
                                   getgenv().Slots(X);
                                   wait(0.015);
                                end
                            end
                        end
                    end
                end)
            end
        end)

        local SecondToggle = SecondPage.AddToggle("Green Baby  🍏", false, function(Value)
            getgenv().StoringItems6 = Value
            getgenv().ItemToStorage6 = "Green Baby"
                      
            while getgenv().StoringItems6 == true do wait(0.1)
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage6) then
                        game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage6))
                        game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.RaymondZl.HumanoidRootPart.Position);
                        for i,v in pairs(game:GetService("Workspace").NPC.RaymondZl:GetDescendants()) do
                            if v:IsA("ClickDetector") then
                                fireclickdetector(v);
                                wait(0.55);
                                local vim = game:GetService('VirtualInputManager')
                                local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"].Button.TextButton
            
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, true, x, 1)
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, false, x, 1)
                                wait(0.65)
                                for X = 1,6 do
                                   getgenv().Slots(X);
                                   wait(0.015);
                                end
                            end
                        end
                    end
                end)
            end
        end)

        local SecondToggle = SecondPage.AddToggle("Blind Fold   👨‍🦯", false, function(Value)
            getgenv().StoringItems7 = Value
            getgenv().ItemToStorage7 = "Blindfold"
         
            while getgenv().StoringItems7 == true do wait(0.1)
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage7) then
                        game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage7))
                        game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.RaymondZl.HumanoidRootPart.Position);
                        for i,v in pairs(game:GetService("Workspace").NPC.RaymondZl:GetDescendants()) do
                            if v:IsA("ClickDetector") then
                                fireclickdetector(v);
                                wait(0.55);
                                local vim = game:GetService('VirtualInputManager')
                                local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"].Button.TextButton
            
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, true, x, 1)
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, false, x, 1)
                                wait(0.65)
                                for X = 1,6 do
                                   getgenv().Slots(X);
                                   wait(0.015);
                                end
                            end
                        end
                    end
                end)
            end
        end)

        local SecondToggle = SecondPage.AddToggle("Boxing Gloves  🥊", false, function(Value)
            getgenv().StoringItems8 = Value
            getgenv().ItemToStorage8 = "Boxing Gloves"
         
            while getgenv().StoringItems8 == true do wait(0.1)
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage8) then
                        game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage8))
                        game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.RaymondZl.HumanoidRootPart.Position);
                        for i,v in pairs(game:GetService("Workspace").NPC.RaymondZl:GetDescendants()) do
                            if v:IsA("ClickDetector") then
                                fireclickdetector(v);
                                wait(0.55);
                                local vim = game:GetService('VirtualInputManager')
                                local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"].Button.TextButton
            
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, true, x, 1)
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, false, x, 1)
                                wait(0.65)
                                for X = 1,6 do
                                   getgenv().Slots(X);
                                   wait(0.015);
                                end
                            end
                        end
                    end
                end)
            end
        end)

        local SecondToggle = SecondPage.AddToggle("DIO Technics  🕺", false, function(Value)
            getgenv().StoringItems9 = Value
            getgenv().ItemToStorage9 = "DIO Technics"
       
            while getgenv().StoringItems9 == true do wait(0.1)
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage9) then
                        game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage9))
                        game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.RaymondZl.HumanoidRootPart.Position);
                        for i,v in pairs(game:GetService("Workspace").NPC.RaymondZl:GetDescendants()) do
                            if v:IsA("ClickDetector") then
                                fireclickdetector(v);
                                wait(0.55);
                                local vim = game:GetService('VirtualInputManager')
                                local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"].Button.TextButton
            
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, true, x, 1)
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, false, x, 1)
                                wait(0.65)
                                for X = 1,6 do
                                   getgenv().Slots(X);
                                   wait(0.015);
                                end
                            end
                        end
                    end
                end)
            end
        end)

        local SecondToggle = SecondPage.AddToggle("Dual Knife  🔪", false, function(Value)
            getgenv().StoringItems10 = Value
            getgenv().ItemToStorage10 = "Dual Knife"
       
            while getgenv().StoringItems10 == true do wait(0.1)
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage10) then
                        game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage10))
                        game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.RaymondZl.HumanoidRootPart.Position);
                        for i,v in pairs(game:GetService("Workspace").NPC.RaymondZl:GetDescendants()) do
                            if v:IsA("ClickDetector") then
                                fireclickdetector(v);
                                wait(0.55);
                                local vim = game:GetService('VirtualInputManager')
                                local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"].Button.TextButton
            
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, true, x, 1)
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, false, x, 1)
                                wait(0.65)
                                for X = 1,6 do
                                   getgenv().Slots(X);
                                   wait(0.015);
                                end
                            end
                        end
                    end
                end)
            end
        end)

        local SecondToggle = SecondPage.AddToggle("Minos Prime Orb  🌌", false, function(Value)
            getgenv().StoringItems11 = Value
            getgenv().ItemToStorage11 = "Minos Prime Orb"
       
            while getgenv().StoringItems11 == true do wait(0.1)
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage11) then
                        game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage11))
                        game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.RaymondZl.HumanoidRootPart.Position);
                        for i,v in pairs(game:GetService("Workspace").NPC.RaymondZl:GetDescendants()) do
                            if v:IsA("ClickDetector") then
                                fireclickdetector(v);
                                wait(0.55);
                                local vim = game:GetService('VirtualInputManager')
                                local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"].Button.TextButton
            
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, true, x, 1)
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, false, x, 1)
                                wait(0.65)
                                for X = 1,6 do
                                   getgenv().Slots(X);
                                   wait(0.015);
                                end
                            end
                        end
                    end
                end)
            end
        end)

        local SecondToggle = SecondPage.AddToggle("Garou Photo  📸", false, function(Value)
            getgenv().StoringItems12 = Value
            getgenv().ItemToStorage12 = "Garou Photo"
       
            while getgenv().StoringItems12 == true do wait(0.1)
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage12) then
                        game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage12))
                        game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.RaymondZl.HumanoidRootPart.Position);
                        for i,v in pairs(game:GetService("Workspace").NPC.RaymondZl:GetDescendants()) do
                            if v:IsA("ClickDetector") then
                                fireclickdetector(v);
                                wait(0.55);
                                local vim = game:GetService('VirtualInputManager')
                                local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"].Button.TextButton
            
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, true, x, 1)
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, false, x, 1)
                                wait(0.65)
                                for X = 1,6 do
                                   getgenv().Slots(X);
                                   wait(0.015);
                                end
                            end
                        end
                    end
                end)
            end
        end)

        local SecondToggle = SecondPage.AddToggle("Yamato  ⚔️", false, function(Value)
            getgenv().StoringItems13 = Value
            getgenv().ItemToStorage13 = "Yamato"
       
            while getgenv().StoringItems13 == true do wait(0.1)
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage13) then
                        game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().ItemToStorage13))
                        game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.RaymondZl.HumanoidRootPart.Position);
                        for i,v in pairs(game:GetService("Workspace").NPC.RaymondZl:GetDescendants()) do
                            if v:IsA("ClickDetector") then
                                fireclickdetector(v);
                                wait(0.55);
                                local vim = game:GetService('VirtualInputManager')
                                local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"].Button.TextButton
            
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, true, x, 1)
                                vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X/2, x.AbsolutePosition.Y + 50, 0, false, x, 1)
                                wait(0.65)
                                for X = 1,6 do
                                   getgenv().Slots(X);
                                   wait(0.015);
                                end
                            end
                        end
                    end
                end)
            end
        end)

        local SecondLabel = SecondPage.AddLabel("[+] Selling  💸");
        local SecondButton = SecondPage.AddButton("Bypass [Must Use]", function()
            local X = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.Seller.HumanoidRootPart.Position);
            for i,v in pairs(game:GetService("Workspace").NPC.Seller:GetDescendants()) do
                if v:IsA("ClickDetector") then
                    fireclickdetector(v);
                    wait(0.55);
                    local vim = game:GetService'VirtualInputManager'
                    local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"].Button.TextButton
                    
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
                end
            end
            wait(0.15)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = X
        end);
    
        local SecondToggle = SecondPage.AddToggle("Selling GUI  🖼️", false, function(Value)
            getgenv().SellerGui = Value

            while true do if getgenv().SellerGui == true then
                    game:GetService("Players").LocalPlayer.PlayerGui.Seller.Frame.Visible = true
                else
                    game:GetService("Players").LocalPlayer.PlayerGui.Seller.Frame.Visible = false
                end
                wait(0.01)
            end                    
        end);

        local SecondToggle = SecondPage.AddToggle("Arrows  🎯", false, function(Value)
            getgenv().SellArrows = Value

            while getgenv().SellArrows == true do wait(1.5)
                pcall(function()
                    local vim = game:GetService'VirtualInputManager'
                    local x = game:GetService("Players").LocalPlayer.PlayerGui.Seller.Frame["Item List"].Arrow.TextLabel
            
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
                end)
            end
        end);

        local SecondToggle = SecondPage.AddToggle("Rokakakas  🍎", false, function(Value)
            getgenv().SellFruits = Value

            while getgenv().SellFruits == true do wait(1.5)
                pcall(function()
                    local vim = game:GetService'VirtualInputManager'
                    local x = game:GetService("Players").LocalPlayer.PlayerGui.Seller.Frame["Item List"].Rokakaka.TextLabel
            
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
                end)
            end
        end);

        local SecondToggle = SecondPage.AddToggle("Stone Masks  🎭", false, function(Value)
            getgenv().SellStoneMasks = Value

            while getgenv().SellStoneMasks == true do wait(3.15)
                pcall(function()
                    local vim = game:GetService'VirtualInputManager'
                    local x = game:GetService("Players").LocalPlayer.PlayerGui.Seller.Frame["Item List"]["Stone Mask"].TextLabel
            
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
                end)
            end
        end);

        local SecondToggle = SecondPage.AddToggle("Eyes Of The Saint Corpses  👁️", false, function(Value)
            getgenv().SellEyeOfSaints = Value

            while getgenv().SellEyeOfSaints == true do wait(3.15)
                pcall(function()
                    local vim = game:GetService'VirtualInputManager'
                    local x = game:GetService("Players").LocalPlayer.PlayerGui.Seller.Frame["Item List"]["Eye's of Saint's Corpse"].TextLabel
            
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
                end)
            end
        end);

        local ThirdLabel = SecondPage.AddLabel("[+] Auto Stand Farm [Normal Arrows]  🎯")
        local FirstDropdown = SecondPage.AddDropdown("Selected 1", {
            "Crazy_Diamond",
            "Crazy_Female",
            "Gold Experience",
            "Hitori Gotoh",
            "Hitori Gotoh (SSJ)",
            "King_Crimson",
            "Killer Queen",
            "Ruby_Diamond",
            "Star_Platinum",
            "Star_Platinum:The_World",
            "Star_Platinum_OVA",
            "Tendou Alice",
            "------------",
        },
        function(PlayerStandValue1)
            getgenv().StandFarm1 = PlayerStandValue1
        end)

        local FirstDropdown = SecondPage.AddDropdown("Selected 2", {
            "Crazy_Diamond",
            "Crazy_Female",
            "Gold Experience",
            "Hitori Gotoh",
            "Hitori Gotoh (SSJ)",
            "King_Crimson",
            "Killer Queen",
            "Ruby_Diamond",
            "Star_Platinum",
            "Star_Platinum:The_World",
            "Star_Platinum_OVA",
            "Tendou Alice",
            "------------",
        }, 
        function(PlayerStandValue2)
            getgenv().StandFarm2 = PlayerStandValue2
        end)
        
        local FirstDropdown = SecondPage.AddDropdown("Selected 3", {
            "Crazy_Diamond",
            "Crazy_Female",
            "Gold Experience",
            "Hitori Gotoh",
            "Hitori Gotoh (SSJ)",
            "King_Crimson",
            "Killer Queen",
            "Ruby_Diamond",
            "Star_Platinum",
            "Star_Platinum:The_World",
            "Star_Platinum_OVA",
            "Tendou Alice",
            "------------",
        }, 
        function(PlayerStandValue3)
            getgenv().StandFarm3 = PlayerStandValue3
        end)
    
        local FirstDropdown = SecondPage.AddDropdown("Selected 4", {
            "Crazy_Diamond",
            "Crazy_Female",
            "Gold Experience",
            "Hitori Gotoh",
            "Hitori Gotoh (SSJ)",
            "King_Crimson",
            "Killer Queen",
            "Ruby_Diamond",
            "Star_Platinum",
            "Star_Platinum:The_World",
            "Star_Platinum_OVA",
            "Tendou Alice",
            "------------",
        }, 
        function(PlayerStandValue4)
            getgenv().StandFarm4 = PlayerStandValue4
        end)

        local FirstDropdown = SecondPage.AddDropdown("Selected 5", {
            "Crazy_Diamond",
            "Crazy_Female",
            "Gold Experience",
            "Hitori Gotoh",
            "Hitori Gotoh (SSJ)",
            "King_Crimson",
            "Killer Queen",
            "Ruby_Diamond",
            "Star_Platinum",
            "Star_Platinum:The_World",
            "Star_Platinum_OVA",
            "Tendou Alice",
            "------------",
        }, 
        function(PlayerStandValue5)
            getgenv().StandFarm5 = PlayerStandValue5
        end)

        local FirstDropdown = SecondPage.AddDropdown("Selected 6", {
            "Crazy_Diamond",
            "Crazy_Female",
            "Gold Experience",
            "Hitori Gotoh",
            "Hitori Gotoh (SSJ)",
            "King_Crimson",
            "Killer Queen",
            "Ruby_Diamond",
            "Star_Platinum",
            "Star_Platinum:The_World",
            "Star_Platinum_OVA",
            "Tendou Alice",
            "------------",
        }, 
        function(PlayerStandValue6)
            getgenv().StandFarm6 = PlayerStandValue6
        end)

        local FirstDropdown = SecondPage.AddDropdown("Selected 7", {
            "Crazy_Diamond",
            "Crazy_Female",
            "Gold Experience",
            "Hitori Gotoh",
            "Hitori Gotoh (SSJ)",
            "King_Crimson",
            "Killer Queen",
            "Ruby_Diamond",
            "Star_Platinum",
            "Star_Platinum:The_World",
            "Star_Platinum_OVA",
            "Tendou Alice",
            "------------",
        }, 
        function(PlayerStandValue7)
            getgenv().StandFarm7 = PlayerStandValue7
        end)

        local FirstDropdown = SecondPage.AddDropdown("Selected 8", {
            "Crazy_Diamond",
            "Crazy_Female",
            "Gold Experience",
            "Hitori Gotoh",
            "Hitori Gotoh (SSJ)",
            "King_Crimson",
            "Killer Queen",
            "Ruby_Diamond",
            "Star_Platinum",
            "Star_Platinum:The_World",
            "Star_Platinum_OVA",
            "Tendou Alice",
            "------------",
        }, 
        function(PlayerStandValue8)
            getgenv().StandFarm8 = PlayerStandValue8
        end)

        local FirstDropdown = SecondPage.AddDropdown("Selected 9", {
            "Crazy_Diamond",
            "Crazy_Female",
            "Gold Experience",
            "Hitori Gotoh",
            "Hitori Gotoh (SSJ)",
            "King_Crimson",
            "Killer Queen",
            "Ruby_Diamond",
            "Star_Platinum",
            "Star_Platinum:The_World",
            "Star_Platinum_OVA",
            "Tendou Alice",
            "------------",
        }, 
        function(PlayerStandValue9)
            getgenv().StandFarm9 = PlayerStandValue9
        end)

        local FirstDropdown = SecondPage.AddDropdown("Selected 10", {
            "Crazy_Diamond",
            "Crazy_Female",
            "Gold Experience",
            "Hitori Gotoh",
            "Hitori Gotoh (SSJ)",
            "King_Crimson",
            "Killer Queen",
            "Ruby_Diamond",
            "Star_Platinum",
            "Star_Platinum:The_World",
            "Star_Platinum_OVA",
            "Tendou Alice",
            "------------",
        }, 
        function(PlayerStandValue0)
            getgenv().StandFarm0 = PlayerStandValue0
        end)

        local ThirdToggle = SecondPage.AddToggle("Start Farming", false, function(Value)
            getgenv().Farming1 = Value

            while getgenv().Farming1 do wait(0.55)
                if game:GetService("Players").LocalPlayer.Data.Ability.Value == "Standless" then
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Arrow") then
                            game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Arrow"))
                            wait(0.15)
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Arrow"):Activate()
                        end
                    end)
                elseif game:GetService("Players").LocalPlayer.Data.Ability.Value == getgenv().StandFarm1 or game:GetService("Players").LocalPlayer.Data.Ability.Value == getgenv().StandFarm2 or game:GetService("Players").LocalPlayer.Data.Ability.Value == getgenv().StandFarm3 or game:GetService("Players").LocalPlayer.Data.Ability.Value == getgenv().StandFarm4 or game:GetService("Players").LocalPlayer.Data.Ability.Value == getgenv().StandFarm5 or game:GetService("Players").LocalPlayer.Data.Ability.Value == getgenv().StandFarm6 or game:GetService("Players").LocalPlayer.Data.Ability.Value == getgenv().StandFarm7 or game:GetService("Players").LocalPlayer.Data.Ability.Value == getgenv().StandFarm8 or game:GetService("Players").LocalPlayer.Data.Ability.Value == getgenv().StandFarm9 or game:GetService("Players").LocalPlayer.Data.Ability.Value == getgenv().StandFarm10 then
                    Notif:Notification("Resonance 💀", "🥳🎉: " .. game:GetService("Players").LocalPlayer.Data.Ability.Value, "GothamSemibold", "Gotham", 9e9)
                    break
                else
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rokakaka") then
                            game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rokakaka"))
                            wait(0.15)
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rokakaka"):Activate()
                            wait(0.55)
                            local vim = game:GetService('VirtualInputManager')
                            local x = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Rokakaka_UI.Yes

                            wait(0.01)
                            vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X / 2, x.AbsolutePosition.Y + 50, 0, true, x, 1)
                            vim:SendMouseButtonEvent(x.AbsolutePosition.X + x.AbsoluteSize.X / 2, x.AbsolutePosition.Y + 50, 0, false, x, 1)
                        end
                    end)
                end
            end
        end)

        local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Safe Zone");
        local SecondAndHalfButton = SecondAndHalfPage.AddButton("Safe Zone  🦺", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-63.611202239990234, 1813.3817138671875, -1468.9007568359375);
        end);

        local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Main");
        local SecondAndHalfButton = SecondAndHalfPage.AddButton("Stand Storage  🗃️", function()
            game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.Pucci.HumanoidRootPart.Position);
            for i,v in pairs(game:GetService("Workspace").NPC.Pucci:GetDescendants()) do
                if v:IsA("ClickDetector") then
                    fireclickdetector(v);
                    wait(0.55);
                    local vim = game:GetService'VirtualInputManager'
                    local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"].Button.TextButton
                    
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
                end
            end
        end);

        local SecondAndHalfButton = SecondAndHalfPage.AddButton("Item Storage  🗃️", function()
            game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.RaymondZl.HumanoidRootPart.Position);
            for i,v in pairs(game:GetService("Workspace").NPC.RaymondZl:GetDescendants()) do
                if v:IsA("ClickDetector") then
                    fireclickdetector(v);
                    wait(0.55);
                    local vim = game:GetService'VirtualInputManager'
                    local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"].Button.TextButton
                    
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
                end
            end
        end);

        local SecondAndHalfButton = SecondAndHalfPage.AddButton("Shop  🏪", function()
            game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.Shop.HumanoidRootPart.Position);
            for i,v in pairs(game:GetService("Workspace").NPC.Shop:GetDescendants()) do
                if v:IsA("ClickDetector") then
                    fireclickdetector(v);
                    wait(0.55);
                    local vim = game:GetService'VirtualInputManager'
                    local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"].Button.TextButton
                    
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
                end
            end
        end);

        local SecondAndHalfButton = SecondAndHalfPage.AddButton("Seller  💰", function()
            game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").NPC.Seller.HumanoidRootPart.Position);
            for i,v in pairs(game:GetService("Workspace").NPC.Seller:GetDescendants()) do
                if v:IsA("ClickDetector") then
                    fireclickdetector(v);
                    wait(0.55);
                    local vim = game:GetService'VirtualInputManager'
                    local x = game:GetService("Players").LocalPlayer.PlayerGui.DialogueV2.Frame["Choice Frame"].Button.TextButton
                    
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
                end
            end
        end);

        local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Places");
        local SecondAndHalfButton = SecondAndHalfPage.AddButton("Baseball Area  🧢", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(270.7659606933594, 1602.248291015625, -1288.3497314453125);         
        end);

        local SecondAndHalfButton = SecondAndHalfPage.AddButton("Untitled Area 1", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-48.822303771972656, 1601.148681640625, -159.07952880859375);
        end);

        local SecondAndHalfButton = SecondAndHalfPage.AddButton("Untitled Area 2", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(396.4667663574219, 1600.86181640625, -358.9969482421875);
        end);

        local SecondAndHalfButton = SecondAndHalfPage.AddButton("Untitled Area 3", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(410.8349914550781, 1600.6031494140625, -544.82421875);
        end);

        local SecondAndHalfButton = SecondAndHalfPage.AddButton("Untitled Area 4", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-165.00613403320312, 1600.797119140625, -100.12725830078125);
        end);

        local SecondAndHalfButton = SecondAndHalfPage.AddButton("Untitled Area 5", function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(292.3304138183594, 1601.976318359375, -411.74566650390625);
        end);
end

--// 🟢 Stand Upright: Rebooted \\--
if game.PlaceId == Supported.Stand_Upright_Rebooted then
    task.spawn(function()
        wait(3);
        Notif:Notification("Game Detected ⚠️", "Stand Upright: Rebooted  🔥", "GothamSemibold", "Gotham", 2.5);
    end)

    --// Main Pages \\--
    local SecondPage = MainUI.AddPage("Shoping");
    local SecondAndHalfPage = MainUI.AddPage("Storage");
    local SecondAndHalfHalfPage = MainUI.AddPage("Points");
    local ThirdPage = MainUI.AddPage("Farming");
    local FourthPage = MainUI.AddPage("Teleports");


    local SecondAndHalfHalfLabel = SecondAndHalfHalfPage.AddLabel("Auto Stats  😳");
    local SecondAndHalfHalfButton = SecondAndHalfHalfPage.AddButton("Max Vitallity [6+ skill points]", function()
        local args = {
            [1] = "Vitality_1"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GetSkillTree"):FireServer(unpack(args))
        wait(0.35)
        local args = {
            [1] = "Vitality_2"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GetSkillTree"):FireServer(unpack(args))
        wait(0.35)
        local args = {
            [1] = "Vitality_3"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GetSkillTree"):FireServer(unpack(args))         
    end);

    local SecondAndHalfHalfButton = SecondAndHalfHalfPage.AddButton("Max Health [21+ skill points]", function()
        local args = {
            [1] = "Health_1"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GetSkillTree"):FireServer(unpack(args))
        wait(0.35)
        local args = {
            [1] = "Health_2"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GetSkillTree"):FireServer(unpack(args))
        wait(0.35)
        local args = {
            [1] = "Health_3"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GetSkillTree"):FireServer(unpack(args))
        wait(0.35)
        local args = {
            [1] = "Health_4"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GetSkillTree"):FireServer(unpack(args))
        wait(0.35)
        local args = {
            [1] = "Health_5"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GetSkillTree"):FireServer(unpack(args))
        wait(0.35)
        local args = {
            [1] = "Health_6"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GetSkillTree"):FireServer(unpack(args))
    end);

    local SecondAndHalfHalfButton = SecondAndHalfHalfPage.AddButton("Max Pickpocket [4+ skill points]", function()
        local args = {
            [1] = "Pickpocket_1"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GetSkillTree"):FireServer(unpack(args))
        wait(0.35)
        local args = {
            [1] = "Pickpocket_2"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GetSkillTree"):FireServer(unpack(args))
    end);

    local SecondAndHalfHalfButton = SecondAndHalfHalfPage.AddButton("Max Securepocket [6+ skill points]", function()
        local args = {
            [1] = "SecurePocket_1"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GetSkillTree"):FireServer(unpack(args))        
    end);

    local SecondAndHalfHalfButton = SecondAndHalfHalfPage.AddButton("Max Experience [16+ skill points]", function()
        local args = {
            [1] = "Experience_1"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GetSkillTree"):FireServer(unpack(args))
        wait(0.35)
        local args = {
            [1] = "Experience_2"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GetSkillTree"):FireServer(unpack(args))
        wait(0.35)
        local args = {
            [1] = "Experience_3"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GetSkillTree"):FireServer(unpack(args))
        wait(0.35)
        local args = {
            [1] = "Experience_4"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GetSkillTree"):FireServer(unpack(args))
    end);

    local SecondAndHalfHalfButton = SecondAndHalfHalfPage.AddButton("Agility [Useless]", function()
        Notif:Notification("Resonance 💀", "Use my walkspeed slider...", "GothamSemibold", "Gotham", 1);
    end);

    local SecondButton = SecondPage.AddButton("Teleport | Shop 🏪", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-560.3442993164062, 66.23101806640625, -689.8358764648438);
    end);
    local SecondLabel = SecondPage.AddLabel("[+] Shopy  🛒💨");
    local SecondButton = SecondPage.AddButton("Stand Arrow | 1x 🎯", function()
        local X = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-560.3442993164062, 66.23101806640625, -689.8358764648438);
        wait(0.25)
        local args = {[1] = "Merchant1",[2] = "Option4"};
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyItem"):FireServer(unpack(args));
        wait(0.25)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = X
    end);

    local SecondButton = SecondPage.AddButton("Stand Arrow | 10x  🎯", function()
        local X = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-560.3442993164062, 66.23101806640625, -689.8358764648438);
        wait(0.25)
        local args = {[1] = "Merchant1",[2] = "Option3"};
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyItem"):FireServer(unpack(args))      ;  
        wait(0.25)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = X
    end);

    local SecondLabel = SecondPage.AddLabel("--------------------------------------------------------");
    local SecondButton = SecondPage.AddButton("Rokakaka Fruit | 1x  🍎", function()
        local X = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-560.3442993164062, 66.23101806640625, -689.8358764648438);
        wait(0.25)
        local args = {[1] = "Merchant1",[2] = "Option2"};
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyItem"):FireServer(unpack(args));     
        wait(0.25)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = X
    end);

    local SecondButton = SecondPage.AddButton("Rokakaka Fruit | 10x  🍎", function()
        local X = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-560.3442993164062, 66.23101806640625, -689.8358764648438);
        wait(0.25)
        local args = {[1] = "Merchant1",[2] = "Option1"};
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyItem"):FireServer(unpack(args));
        wait(0.25)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = X
    end);

    local SecondLabel = SecondPage.AddLabel("[+] Auto Shopy  🛒💨");
    local SecondToggle = SecondPage.AddToggle("Stand Arrow | 1x every 1 sec  🎯", false, function(Value)
        getgenv().LoopArrow = Value

        while getgenv().LoopArrow == true do wait(1)
            local args = {[1] = "Merchant1",[2] = "Option4"}
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyItem"):FireServer(unpack(args));
        end
    end);

    local SecondToggle = SecondPage.AddToggle("Rokakaka Fruit | 1x every 1 sec  🍎", false, function(Value)
        getgenv().LoopFruit = Value

        while getgenv().LoopFruit == true do wait(1)
            local args = {[1] = "Merchant1",[2] = "Option2"};
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuyItem"):FireServer(unpack(args));  
        end
    end);

    local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Storage  🗃️");
    local SecondAndHalfButton = SecondAndHalfPage.AddButton("Stand Storage  📦", function()
        workspace:WaitForChild("Map"):WaitForChild("NPCs"):WaitForChild("admpn"):WaitForChild("Done"):FireServer();
    end);

    local ThirdLabel = ThirdPage.AddLabel("[+] Safe Zone  🦺");
    local ThirdToggle = ThirdPage.AddToggle("Safe Zone [For farming]", false, function(Value)
        getgenv().SafeInHell = Value

        while getgenv().SafeInHell == true do wait(1.5);
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-556.783935546875, -420.8061828613281, -10576.720703125)
        end
    end);

    local ThirdLabel = ThirdPage.AddLabel("[+] Items  💎");
    local ThirdToggle = ThirdPage.AddToggle("Start Farming", false, function(Value)
        getgenv().ItemsFarming = Value

        while getgenv().ItemsFarming == true do wait(0.35);
            pcall(function()
                for i,v in pairs(game.Workspace.Vfx:GetChildren()) do
                    if v:IsA("Tool") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Handle.Position);wait(0.2525);
                        for i,v in pairs(game.Workspace.Vfx:GetDescendants()) do
                            if v:IsA("ProximityPrompt") then
                                fireproximityprompt(v,0)
                           end
                       end
                    end
                end                
            end)
        end
    end);

    local ThirdLabel = ThirdPage.AddLabel("[+] Auto Stand Farm  💥");
    local ThirdButton = ThirdPage.AddButton("Info  📜", function()
        task.spawn(function()
            Notif:Notification("Resonance 💀", "Open F9 console", "GothamSemibold", "Gotham", 1);
        end)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-652.4725952148438, 66.72492980957031, -453.6540832519531);
        
        warn("D4C - Dirty Deeds")
        print("GE - Golden Experience")
        warn("HG - Hierophant Green")
        print("MR - Maigican's Red")
        warn("--------------------")
        warn("PM - Premier Macho")
        print("SCOVA - Silver Chariot OVA")
        warn("TWOVA - The World OVA")
        print("TWAU - The World Alternate Universe")
        warn("DTW - Dio's The World [Rarest]")
    end);
    local FirstDropdown = ThirdPage.AddDropdown("Selected 1", {
        "Aerosmith",
        "Cream",
        "CrazyDiamond",
        "D4C",
        "DiverDown",
        "GE",
        "HG",
        "KillerQueen",
        "KingCrimson",
        "MR",
        "PurpleHaze",
        "SilverChariot",
        "SoftAndWet",
        "StarPlatinum",
        "StarPlatinumStoneOcean",
        "StickyFingers",
        "StoneFree",
        "TheEmperor",
        "TheHand",
        "TheWorld",
        "WeatherReport",
        "WhiteSnake",
        "PM",
        "SCOVA",
        "TWOVA",
        "JotarosStarPlatinum",
        "StarPlatinumOVA",
        "TWAU",
        "DTW",
        "------------",
    },
    function(PlayerStandValue111)
        getgenv().StandFarm111 = PlayerStandValue111
    end)

    local FirstDropdown = ThirdPage.AddDropdown("Selected 2", {
        "Aerosmith",
        "Cream",
        "CrazyDiamond",
        "D4C",
        "DiverDown",
        "GE",
        "HG",
        "KillerQueen",
        "KingCrimson",
        "MR",
        "PurpleHaze",
        "SilverChariot",
        "SoftAndWet",
        "StarPlatinum",
        "StarPlatinumStoneOcean",
        "StickyFingers",
        "StoneFree",
        "TheEmperor",
        "TheHand",
        "TheWorld",
        "WeatherReport",
        "WhiteSnake",
        "PM",
        "SCOVA",
        "TWOVA",
        "JotarosStarPlatinum",
        "StarPlatinumOVA",
        "TWAU",
        "DTW",
        "------------",
    },
    function(PlayerStandValue222)
        getgenv().StandFarm222 = PlayerStandValue222
    end)

    local FirstDropdown = ThirdPage.AddDropdown("Selected 3", {
        "Aerosmith",
        "Cream",
        "CrazyDiamond",
        "D4C",
        "DiverDown",
        "GE",
        "HG",
        "KillerQueen",
        "KingCrimson",
        "MR",
        "PurpleHaze",
        "SilverChariot",
        "SoftAndWet",
        "StarPlatinum",
        "StarPlatinumStoneOcean",
        "StickyFingers",
        "StoneFree",
        "TheEmperor",
        "TheHand",
        "TheWorld",
        "WeatherReport",
        "WhiteSnake",
        "PM",
        "SCOVA",
        "TWOVA",
        "JotarosStarPlatinum",
        "StarPlatinumOVA",
        "TWAU",
        "DTW",
        "------------",
    },
    function(PlayerStandValue333)
        getgenv().StandFarm333 = PlayerStandValue333
    end)

    local FirstDropdown = ThirdPage.AddDropdown("Selected 4", {
        "Aerosmith",
        "Cream",
        "CrazyDiamond",
        "D4C",
        "DiverDown",
        "GE",
        "HG",
        "KillerQueen",
        "KingCrimson",
        "MR",
        "PurpleHaze",
        "SilverChariot",
        "SoftAndWet",
        "StarPlatinum",
        "StarPlatinumStoneOcean",
        "StickyFingers",
        "StoneFree",
        "TheEmperor",
        "TheHand",
        "TheWorld",
        "WeatherReport",
        "WhiteSnake",
        "PM",
        "SCOVA",
        "TWOVA",
        "JotarosStarPlatinum",
        "StarPlatinumOVA",
        "TWAU",
        "DTW",
        "------------",
    },
    function(PlayerStandValue444)
        getgenv().StandFarm444 = PlayerStandValue444
    end)

    local FirstDropdown = ThirdPage.AddDropdown("Selected 5", {
        "Aerosmith",
        "Cream",
        "CrazyDiamond",
        "D4C",
        "DiverDown",
        "GE",
        "HG",
        "KillerQueen",
        "KingCrimson",
        "MR",
        "PurpleHaze",
        "SilverChariot",
        "SoftAndWet",
        "StarPlatinum",
        "StarPlatinumStoneOcean",
        "StickyFingers",
        "StoneFree",
        "TheEmperor",
        "TheHand",
        "TheWorld",
        "WeatherReport",
        "WhiteSnake",
        "PM",
        "SCOVA",
        "TWOVA",
        "JotarosStarPlatinum",
        "StarPlatinumOVA",
        "TWAU",
        "DTW",
        "------------",
    },
    function(PlayerStandValue555)
        getgenv().StandFarm555 = PlayerStandValue555
    end)

    local FirstDropdown = ThirdPage.AddDropdown("Selected 6", {
        "Aerosmith",
        "Cream",
        "CrazyDiamond",
        "D4C",
        "DiverDown",
        "GE",
        "HG",
        "KillerQueen",
        "KingCrimson",
        "MR",
        "PurpleHaze",
        "SilverChariot",
        "SoftAndWet",
        "StarPlatinum",
        "StarPlatinumStoneOcean",
        "StickyFingers",
        "StoneFree",
        "TheEmperor",
        "TheHand",
        "TheWorld",
        "WeatherReport",
        "WhiteSnake",
        "PM",
        "SCOVA",
        "TWOVA",
        "JotarosStarPlatinum",
        "StarPlatinumOVA",
        "TWAU",
        "DTW",
        "------------",
    },
    function(PlayerStandValue666)
        getgenv().StandFarm666 = PlayerStandValue666
    end)

    local FirstDropdown = ThirdPage.AddDropdown("Selected 7", {
        "Aerosmith",
        "Cream",
        "CrazyDiamond",
        "D4C",
        "DiverDown",
        "GE",
        "HG",
        "KillerQueen",
        "KingCrimson",
        "MR",
        "PurpleHaze",
        "SilverChariot",
        "SoftAndWet",
        "StarPlatinum",
        "StarPlatinumStoneOcean",
        "StickyFingers",
        "StoneFree",
        "TheEmperor",
        "TheHand",
        "TheWorld",
        "WeatherReport",
        "WhiteSnake",
        "PM",
        "SCOVA",
        "TWOVA",
        "JotarosStarPlatinum",
        "StarPlatinumOVA",
        "TWAU",
        "DTW",
        "------------",
    },
    function(PlayerStandValue777)
        getgenv().StandFarm777 = PlayerStandValue777
    end)

    local FirstDropdown = ThirdPage.AddDropdown("Selected 8", {
        "Aerosmith",
        "Cream",
        "CrazyDiamond",
        "D4C",
        "DiverDown",
        "GE",
        "HG",
        "KillerQueen",
        "KingCrimson",
        "MR",
        "PurpleHaze",
        "SilverChariot",
        "SoftAndWet",
        "StarPlatinum",
        "StarPlatinumStoneOcean",
        "StickyFingers",
        "StoneFree",
        "TheEmperor",
        "TheHand",
        "TheWorld",
        "WeatherReport",
        "WhiteSnake",
        "PM",
        "SCOVA",
        "TWOVA",
        "JotarosStarPlatinum",
        "StarPlatinumOVA",
        "TWAU",
        "DTW",
        "------------",
    },
    function(PlayerStandValue888)
        getgenv().StandFarm888 = PlayerStandValue888
    end)

    local FirstDropdown = ThirdPage.AddDropdown("Selected 9", {
        "Aerosmith",
        "Cream",
        "CrazyDiamond",
        "D4C",
        "DiverDown",
        "GE",
        "HG",
        "KillerQueen",
        "KingCrimson",
        "MR",
        "PurpleHaze",
        "SilverChariot",
        "SoftAndWet",
        "StarPlatinum",
        "StarPlatinumStoneOcean",
        "StickyFingers",
        "StoneFree",
        "TheEmperor",
        "TheHand",
        "TheWorld",
        "WeatherReport",
        "WhiteSnake",
        "PM",
        "SCOVA",
        "TWOVA",
        "JotarosStarPlatinum",
        "StarPlatinumOVA",
        "TWAU",
        "DTW",
        "------------",
    },
    function(PlayerStandValue999)
        getgenv().StandFarm999 = PlayerStandValue999
    end)

    local FirstDropdown = ThirdPage.AddDropdown("Selected 10", {
        "Aerosmith",
        "Cream",
        "CrazyDiamond",
        "D4C",
        "DiverDown",
        "GE",
        "HG",
        "KillerQueen",
        "KingCrimson",
        "MR",
        "PurpleHaze",
        "SilverChariot",
        "SoftAndWet",
        "StarPlatinum",
        "StarPlatinumStoneOcean",
        "StickyFingers",
        "StoneFree",
        "TheEmperor",
        "TheHand",
        "TheWorld",
        "WeatherReport",
        "WhiteSnake",
        "PM",
        "SCOVA",
        "TWOVA",
        "JotarosStarPlatinum",
        "StarPlatinumOVA",
        "TWAU",
        "DTW",
        "------------",
    },
    function(PlayerStandValue000)
        getgenv().StandFarm000 = PlayerStandValue000
    end)

    local ThirdToggle = ThirdPage.AddToggle("Start Farming", false, function(Value)
        getgenv().Farming111 = Value
    
        while getgenv().Farming111 do wait(0.1);
            if game:GetService("Players").LocalPlayer.Data.Stand.Value == "None" then
                pcall(function()
                    if math.random(1, 2) == 1 and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Stand Arrow") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stand Arrow") == nil then
                        game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Stand Arrow"))
                        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UseItem"):FireServer();
                    elseif math.random(1, 2) == 2 and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Charged Arrow") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Charged Arrow") == nil then
                        game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Charged Arrow"))
                        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UseItem"):FireServer();
                    end
                end)
            elseif game:GetService("Players").LocalPlayer.Data.Stand.Value == getgenv().StandFarm111 or game:GetService("Players").LocalPlayer.Data.Stand.Value == getgenv().StandFarm222 or game:GetService("Players").LocalPlayer.Data.Stand.Value == getgenv().StandFarm333 or game:GetService("Players").LocalPlayer.Data.Stand.Value == getgenv().StandFarm444 or game:GetService("Players").LocalPlayer.Data.Stand.Value == getgenv().StandFarm555 or game:GetService("Players").LocalPlayer.Data.Stand.Value == getgenv().StandFarm666 or game:GetService("Players").LocalPlayer.Data.Stand.Value == getgenv().StandFarm777 or game:GetService("Players").LocalPlayer.Data.Stand.Value == getgenv().StandFarm888 or game:GetService("Players").LocalPlayer.Data.Stand.Value == getgenv().StandFarm999 or game:GetService("Players").LocalPlayer.Data.Stand.Value == getgenv().StandFarm999 or game:GetService("Players").LocalPlayer.Data.Stand.Value == getgenv().StandFarm000 then
                Notif:Notification("Resonance 💀", "🥳🎉: " .. game:GetService("Players").LocalPlayer.Data.Stand.Value, "GothamSemibold", "Gotham", 9e9)
                break
            else
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rokakaka") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rokakaka") == nil then
                        game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rokakaka"))
                        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UseItem"):FireServer();
                    end
                end)
            end
        end
    end)

    local ThirdLabel = ThirdPage.AddLabel("[+] Auto Quests  ❗");
    local ThirdToggle = ThirdPage.AddToggle("Soon  🟠", false, function(Value)

    end)

end

--// 🟢 AUT:OldUniverse \\-- [Lazy to continue, But enjoy what it has
if game.PlaceId == Supported.AUT_OldUniverse then
    task.spawn(function()
        wait(3);
        Notif:Notification("Game Detected ⚠️", "AUT:OldUniverse  🔥", "GothamSemibold", "Gotham", 2.5);
    end)

    --// Main Pages \\--
    local SecondPage = MainUI.AddPage("Stuff");
    local SecondAndHalfPage = MainUI.AddPage("Farming");

    local SecondLabel = SecondPage.AddLabel("[+] Deadly  💀");
    local SecondToggle = SecondPage.AddToggle("Kill Aura", false, function(Value)
        getgenv().KillAuraX = Value

        while getgenv().KillAuraX == true do wait(0.15)
            for i,v in pairs(game:GetService("Players"):GetChildren()) do
                if v.Name ~= game.Players.LocalPlayer.Name then
                    local args = {
                        [1] = game:GetService("Players"):WaitForChild(v.Name).Character.Humanoid,
                        [2] = 5000,
                        [3] = Vector3.new(-7.990391254425049, 1.5294826027911768e-07, -0.39198222756385803),
                        [4] = "rbxassetid://260430079",
                        [5] = 0.3,
                        [6] = "rbxassetid://241837157",
                        [7] = 20,
                        [8] = 0.5,
                        [9] = false,
                        [10] = false,
                        [11] = false,
                        [13] = 5
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("newremotes"):WaitForChild("dmgsystem"):WaitForChild("basicdmg"):FireServer(unpack(args))
                end
            end
        end
    end);

    local SecondToggle = SecondPage.AddToggle("Inf Heal [Ge needed]", false, function(Value)
        getgenv().InfHealing = Value

        while getgenv().InfHealing == true do wait(1)
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("GoldExperience") then
                Notif:Notification("Resonance 💀", "Soon", "GothamSemibold", "Gotham", 1);
            else
                Notif:Notification("Resonance 💀", "Soon", "GothamSemibold", "Gotham", 1);
                break
            end
        end
    end);

    local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Items  💎");
    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Start Farming (Any Item)", false, function(Value)
        getgenv().iTEMS = Value

        local Tools = {}
        while getgenv().iTEMS == true do wait(3.15)
            pcall(function()
                for i,v in pairs(workspace.Items:GetChildren()) do
                    if v:IsA("Tool") then
                        table.insert(Tools,v)
                    end
                end
                for i,v in ipairs(Tools) do
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(v)
                end
                wait(0.25)
                for i,v in ipairs(Tools) do
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
                end
            end)
        end
    end);
    
    local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Auto Bosses  ❗");
    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Dawn", false, function(Value)
        getgenv().Bossing1 = Value

        while getgenv().Bossing1 == true do wait(1)
            pcall(function()
                game:GetService("Players").LocalPlayer.Character:MoveTo(workspace.Living["Dawn (Boss)"].HumanoidRootPart.Position);
                local args = {
                    [1] = workspace:WaitForChild("Living"):WaitForChild("Dawn (Boss)"):WaitForChild("Humanoid"),
                    [2] = 5555,
                    [3] = Vector3.new(-7.3831987380981445, 0.8633949756622314, 2.9568440914154053),
                    [4] = "rbxassetid://260430079",
                    [5] = 0.3,
                    [6] = "rbxassetid://241837157",
                    [7] = 20,
                    [8] = 0.5,
                    [9] = false,
                    [10] = false,
                    [11] = false,
                    [13] = 5
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("newremotes"):WaitForChild("dmgsystem"):WaitForChild("basicdmg"):FireServer(unpack(args))
            end)
        end
    end);


    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Soon  🟠", false, function(Value)
        getgenv().Bossing2 = Value

        while getgenv().Bossing2 == true do wait(1)
            pcall(function()

            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Soon  🟠", false, function(Value)
        getgenv().Bossing3 = Value

        while getgenv().Bossing3 == true do wait(1)
            pcall(function()

            end)
        end
    end);


    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Soon  🟠", false, function(Value)
        getgenv().Bossing4 = Value

        while getgenv().Bossing4 == true do wait(1)
            pcall(function()

            end)
        end
    end);


    local FirstDropdown = SecondAndHalfPage.AddDropdown("Selected 1", {
        "This is gonna reset your stand, Watch out!",
        "------------",
    },
    function(StandoDa11)
        getgenv().StandoDa11 = StandoDa11
    end)

    local FirstToggle = SecondAndHalfPage.AddToggle("Start Farming", false, function(Value)
        getgenv().StandoDa1 = Value

        while getgenv().StandoDa1 do wait(0.5)
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Standless") then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Arrow") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Arrow") == nil then
                    game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Arrow"))
                    wait(0.25);
                    game:GetService("ReplicatedStorage"):WaitForChild("newremotes"):WaitForChild("UseItem"):FireServer();
                end
            end)
            elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(getgenv().StandoDa11) then
                Notif:Notification("Resonance 💀", "You got it!", "GothamSemibold", "Gotham", 1);
                break
            else
                pcall(function()
                    Notif:Notification("Resonance 💀", "Reset", "GothamSemibold", "Gotham", 1);
                    game:GetService("Players").LocalPlayer.PlayerGui.resetgui.reset.Visible = true
                    wait(0.25)
                    local vim = game:GetService'VirtualInputManager'
                    local x = game:GetService("Players").LocalPlayer.PlayerGui.resetgui.reset.yes
                    
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,true,x,1)
                    vim:SendMouseButtonEvent(x.AbsolutePosition.X+x.AbsoluteSize.X/2,x.AbsolutePosition.Y+50,0,false,x,1)
                end)
            end
        end
    end)


end

--// 🟢 Sakura Stand \\--
if game.PlaceId == Supported.Sakura_Stand then
    task.spawn(function()
        wait(3);
        Notif:Notification("Game Detected ⚠️", "Sakura Stand  🔥", "GothamSemibold", "Gotham", 2.5);
    end)

    --// Main Pages \\--
    local BackupPage = MainUI.AddPage("Shoping");
    local SecondPage = MainUI.AddPage("Storage");
    local SecondAndHalfHalfPage = MainUI.AddPage("Fighting");
    local SecondAndHalfPage = MainUI.AddPage("Farming");
    local BackupEndPage = MainUI.AddPage("Teleports");

    local BackupLabel = BackupPage.AddLabel("[+] Shop 🏪");
    local BackupButton = BackupPage.AddButton("Arrow   🎯  [$100]", function()
        local args = {[1] = ""};
        game:GetService("ReplicatedStorage"):WaitForChild("BuyItemRemote"):WaitForChild("Arrow"):FireServer(unpack(args));
    end);

    local BackupButton = BackupPage.AddButton("Rokakaka  🍎  [$75]", function()
        local args = {[1] = ""};
        game:GetService("ReplicatedStorage"):WaitForChild("BuyItemRemote"):WaitForChild("Rokakaka"):FireServer(unpack(args));
    end);

    local BackupButton = BackupPage.AddButton("Stop Sign  ⛔  [$750]", function()
        local args = {[1] = ""};
        game:GetService("ReplicatedStorage"):WaitForChild("BuyItemRemote"):WaitForChild("StopSign"):FireServer(unpack(args));
    end);

    local BackupButton = BackupPage.AddButton("Hamon Manual  ⚡  [$1,250]", function()
        local args = {[1] = ""};
        game:GetService("ReplicatedStorage"):WaitForChild("BuyItemRemote"):WaitForChild("Hamon"):FireServer(unpack(args));
    end);

    local BackupButton = BackupPage.AddButton("Spin Manual  💫  [$1,250]", function()
        local args = {[1] = ""};
        game:GetService("ReplicatedStorage"):WaitForChild("BuyItemRemote"):WaitForChild("Spin"):FireServer(unpack(args));
    end);

    local BackupButton = BackupPage.AddButton("Stone Mask  🎭  [$1,000]", function()
        local args = {[1] = ""};
        game:GetService("ReplicatedStorage"):WaitForChild("BuyItemRemote"):WaitForChild("Vampire"):FireServer(unpack(args));
    end);

    local BackupButton = BackupPage.AddButton("Camera  📸  [$1,500]", function()
        local args = {[1] = ""};
        game:GetService("ReplicatedStorage"):WaitForChild("BuyItemRemote"):WaitForChild("Camera"):FireServer(unpack(args));      
    end);

    local SecondPageLabel = SecondPage.AddLabel("[+] Stand Storage  🗃️");
    local SecondButton = SecondPage.AddButton("Open It", function()
        for i,v in pairs(game:GetService("Workspace").Map.NPCs.Simplrr:GetDescendants()) do
            if v:IsA("ClickDetector") then
                fireclickdetector(v);
            end
        end
    end);

    local SecondPageLabel = SecondPage.AddLabel("[+] Fast Stand Switch  🔁");
    local SecondButton = SecondPage.AddButton("Slot 1 [Free]", function()
        game:GetService("ReplicatedStorage"):WaitForChild("StorageRemote"):WaitForChild("Slot1"):FireServer();
    end);

    local SecondButton = SecondPage.AddButton("Slot 2 [Free]", function()
        game:GetService("ReplicatedStorage"):WaitForChild("StorageRemote"):WaitForChild("Slot2"):FireServer();
    end);

    local SecondButton = SecondPage.AddButton("Slot 3 [Free]", function()
        game:GetService("ReplicatedStorage"):WaitForChild("StorageRemote"):WaitForChild("Slot3"):FireServer();
    end);

    local SecondButton = SecondPage.AddButton("Slot 4 [50 Robux]", function()
        game:GetService("ReplicatedStorage"):WaitForChild("StorageRemote"):WaitForChild("Slot4"):FireServer();
    end);

    local SecondButton = SecondPage.AddButton("Slot 5 [50 Robux]", function()
        game:GetService("ReplicatedStorage"):WaitForChild("StorageRemote"):WaitForChild("Slot5"):FireServer();
    end);

    local SecondButton = SecondPage.AddButton("Slot 6 [75 Robux]", function()
        game:GetService("ReplicatedStorage"):WaitForChild("StorageRemote"):WaitForChild("Slot6"):FireServer();
    end);

    local SecondAndHalfHalfLabel = SecondAndHalfHalfPage.AddLabel("[+] Fighting  ✊⚔️");
    local SecondAndHalfHalfLToggle = SecondAndHalfHalfPage.AddToggle("Slient Anti Stun  🤓", false, function(Value)
        getgenv().SlientNoStun = Value
        getgenv().Speed = 2.15
        
        local speaker = game:GetService("Players").LocalPlayer
        local chr = speaker.Character
        local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
        local hb = game:GetService("RunService").Heartbeat
        while getgenv().SlientNoStun and chr and hum and hum.Parent do
            local delta = hb:Wait()
            if hum.MoveDirection.Magnitude > 0 then
                chr:TranslateBy(hum.MoveDirection * tonumber(getgenv().Speed) * delta * 2)
            else
                chr:TranslateBy(hum.MoveDirection * delta * 2)
            end
        end
    end);


    local SecondAndHalfButton = SecondAndHalfPage.AddButton("Fast Reset + Return  💀", function()
        local Tog = true

        local CurrentLoc = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        local BaseReset = Instance.new("Part")
        BaseReset.Size = Vector3.new(100, 5, 100)
        BaseReset.Anchored = true
        BaseReset.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, -1000, 0)
        BaseReset.Parent = workspace
        BaseReset.Transparency = 1 
        game.Workspace.Gravity = 9e9
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = BaseReset.CFrame + Vector3.new(0, 0, 0)
        wait(0.1)
        BaseReset:Destroy()
        
        local Con
        Con = game.Players.LocalPlayer.CharacterAdded:Connect(function()
            if Tog == true then
                wait(1.55)
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CurrentLoc
                game.Workspace.Gravity = 192.2
                wait(0.15)
                Tog = false
            end
        end)
    end);

    local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Breakthrough Points  🅱️🅿️");
    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("50,000$ Cash capacity+  💵", false, function(Value)
        getgenv().Cashss = Value

        local notifications1 = loadstring(game:HttpGet(("https://raw.githubusercontent.com/AbstractPoo/Main/main/Notifications.lua"),true))()
        notifications1:notify{
            Title = "Warning!",
            Description = "Are you sure you want to enable this feature? | 1",
            Accept = {
            Text = "Yes",
                Callback = function()
                    while getgenv().Cashss == true do wait(1.25)
                        pcall(function()
                            local args = {[1] = "Cash"};
                            game:GetService("ReplicatedStorage"):WaitForChild("BPPurchase"):WaitForChild("Purchase"):FireServer(unpack(args));
                        end)
                    end
                end,
            },
            Dismiss = {
                Text = "No",
                Callback = function()
                end,
            }
        }
    end)

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("1 Stand Storage Slot+  📦", false, function(Value)
        getgenv().Standsss = Value

        local notifications2 = loadstring(game:HttpGet(("https://raw.githubusercontent.com/AbstractPoo/Main/main/Notifications.lua"),true))()
        notifications2:notify{
            Title = "Warning!",
            Description = "Are you sure you want to enable this feature? | 2",
            Accept = {
            Text = "Yes",
                Callback = function()
                    while getgenv().Standsss == true do wait(1.25)
                        pcall(function()
                            local args = {[1] = "Storage"};
                            game:GetService("ReplicatedStorage"):WaitForChild("BPPurchase"):WaitForChild("Purchase"):FireServer(unpack(args));
                        end)
                    end
                end,
            },
            Dismiss = {
                Text = "No",
                Callback = function()
                end,
            }
        }
    end)

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("5 Bags of Presents+  🎁", false, function(Value)
        getgenv().Bagss = Value
        local notifications3 = loadstring(game:HttpGet(("https://raw.githubusercontent.com/AbstractPoo/Main/main/Notifications.lua"),true))()
        notifications3:notify{
            Title = "Warning!",
            Description = "Are you sure you want to enable this feature? | 3",
            Accept = {
            Text = "Yes",
                Callback = function()
                    while getgenv().Bagss == true do wait(1.25)
                        pcall(function()
                            local args = {[1] = "Present"};
                            game:GetService("ReplicatedStorage"):WaitForChild("BPPurchase"):WaitForChild("Purchase"):FireServer(unpack(args));
                        end)
                    end
                end,
            },
            Dismiss = {
                Text = "No",
                Callback = function()
                end,
            }
        }
    end)

    local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Auto Mastery  💪");
    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Buy + Sell  💰", false, function(Value)
        getgenv().Rokia = Value

        if getgenv().Rokia == false then wait(0.25);
            pcall(function()
                game:GetService("Players").LocalPlayer.PlayerGui.PurchaseFailed.Spin1.Visible = false
                game:GetService("Players").LocalPlayer.PlayerGui.PurchaseFailed.Spin2.Visible = false
                game:GetService("Players").LocalPlayer.PlayerGui.PurchaseFailed.Spin3.Visible = false
                game:GetService("Players").LocalPlayer.PlayerGui.PurchaseFailed.Outer.Visible = false
                game:GetService("Players").LocalPlayer.PlayerGui.PurchaseFailed.ConfirmationText.Visible = false
            end)
        end

        while getgenv().Rokia == true do wait(0.10)
            pcall(function()
                local args = {[1] = ""};
                game:GetService("ReplicatedStorage"):WaitForChild("BuyItemRemote"):WaitForChild("Rokakaka"):FireServer(unpack(args));
                local args = {[1] = "Rokakaka"};
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer(unpack(args));
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Auto Rebirth  🎖️", false, function(Value)
        getgenv().Rebirthss = Value
        while getgenv().Rebirthss == true do wait(1)
            pcall(function()
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("UpgradeMas"):FireServer();
            end)
        end
    end);
 
    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Auto Breakthrough  😤", false, function(Value)
        getgenv().Breakthroughss = Value
        while getgenv().Breakthroughss == true do wait(0.25)
            pcall(function()
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("Breakthrough"):FireServer();
            end)
        end
    end);

    local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Item Farming  🧑🏿‍🌾");
    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Start Farming   🧺  (Any Item)", false, function(Value)
        getgenv().FarmingRightHere = Value
        getgenv().Now = Value
        getgenv().GoingOnIT = Value
        
        getgenv().Press = function(v)
            return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game);
        end

        getgenv().Teleport = function(x, y, z)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(x, y, z);
        end

        if getgenv().FarmingRightHere == true then
            Teleport(9e9,9e9,9e9);
        else
            Press("P");
        end
        
        task.spawn(function()
            while getgenv().FarmingRightHere == true do wait(0.01)
                pcall(function()
                    for i,v in pairs(workspace.Item:GetDescendants()) do
                        if v:IsA("ProximityPrompt") then
                            fireproximityprompt(v, 0);
                        end
                    end
                end)
            end
        end)
        local Con
        Con = game.Players.LocalPlayer.CharacterAdded:Connect(function()
            if getgenv().FarmingRightHere == true then
                getgenv().GoingOnIT = false
                wait(0.55)
                getgenv().GoingOnIT = true
                if getgenv().Now == true then wait(2.25);Press("P");
                end
                wait(0.55);
                while getgenv().GoingOnIT == true do wait(0.15)
                    pcall(function()
                        if #game:GetService("Workspace").Item:GetChildren() > 0 then local List = {} for i,v in ipairs(game:GetService("Workspace").Item:GetChildren()) do if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Y - v.Position.Y < 50 then table.insert(List, v) end end if #List > 0 then game:GetService("Players").LocalPlayer.Character:MoveTo(List[math.random(1, #List)].Position) end end
                    end)
                end
            end
        end)
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Auto Refresh  ⚡  (15s)", false, function(Value)
        getgenv().Refreshss = Value

        getgenv().Teleport = function(x, y, z)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(x, y, z);
        end

        while getgenv().Refreshss == true do
            pcall(function()
                Teleport(9e9,9e9,9e9);
            end)
            wait(15);
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Auto Intelligent  🧠  (Title)", false, function(Value)
        getgenv().AutoIntelligent = Value

        while getgenv().AutoIntelligent == true do wait(1);
            local x,b = pcall(function()
                return game:GetService("Players").LocalPlayer.Data.Achievements["The Intelligent"]
            end)
            
            if x and b then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Menu.Outer.AchievementFrame["The Intelligent"].Title.Apply.Text == "Apply" then
                        local args = {[1] = "The Intelligent"};
                        game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("ApplyAchievement"):FireServer(unpack(args));
                    else
                        return
                    end
                end)
            else
                Notif:Notification("Resonance 💀", "Title not owned", "GothamSemibold", "Gotham", 2.5);
                break
            end
        end
    end);

--[[ Broken

    local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Public Rares Sniper  💎");
    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Start Stealing (Any Item) ", false, function(Value)
        getgenv().AnyItemDrop = Value
        while getgenv().AnyItemDrop == true do wait(0.35);
            pcall(function()
                local ItemTypes = {"Split Soul Katana","Inverted Spear Of Heaven","Chain of A Thousand Miles","Heavenly Restrictions","Kujo's Hat","Requiem Arrow","Dio's Bone","Dio's Diary","Sukuna's Cursed Finger"};
                for i,Type in pairs(ItemTypes) do
                    if game:GetService("Workspace").Item:FindFirstChild(Type) then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Item:FindFirstChild(Type).Position)
                        wait(0.15);
                        fireproximityprompt(game:GetService("Workspace").Item:FindFirstChild(Type):FindFirstChildOfClass("ProximityPrompt"), 0);
                    end
                end
            end)
        end
    end);

--]]

    local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Auto Item Store  ⚡");
    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Sukuna's Cursed Finger  ☝️", false, function(Value)
        getgenv().StoringItemlOL = Value

        local ItemSlots = {
            "Slot1",
            "Slot2",
            "Slot3",
            "Slot4",
            "Slot5",
            "Slot6"
        }
        
        while getgenv().StoringItemlOL == true do wait(1)
            pcall(function()
                game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sukuna's Cursed Finger"));wait(1.15);
                for i,v in ipairs(ItemSlots) do
                    if game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner[v].Text.Text == "None" then
                        local args = {[1] = tonumber(v:sub(5))};
                        game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                    end
                end
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Inverted Spear Of Heaven  😇", false, function(Value)
        getgenv().StoringItemlOL2 = Value

        local ItemSlots = {
            "Slot1",
            "Slot2",
            "Slot3",
            "Slot4",
            "Slot5",
            "Slot6"
        }
        
        while getgenv().StoringItemlOL2 == true do wait(0.35)
            pcall(function()
                game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Inverted Spear Of Heaven"));wait(1.15);
                for i,v in ipairs(ItemSlots) do
                    if game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner[v].Text.Text == "None" then
                        local args = {[1] = tonumber(v:sub(5))};
                        game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                    end
                end
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Split Soul Katana  ⚔️", false, function(Value)
        getgenv().StoringItemlOL3 = Value

        local ItemSlots = {
            "Slot1",
            "Slot2",
            "Slot3",
            "Slot4",
            "Slot5",
            "Slot6"
        }
        
        while getgenv().StoringItemlOL3 == true do wait(0.35)
            pcall(function()
                game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Split Soul Katana"));wait(1.15);
                for i,v in ipairs(ItemSlots) do
                    if game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner[v].Text.Text == "None" then
                        local args = {[1] = tonumber(v:sub(5))};
                        game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                    end
                end
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Chain of A Thousand Miles  ⛓️", false, function(Value)
        getgenv().StoringItemlOL4 = Value

        local ItemSlots = {
            "Slot1",
            "Slot2",
            "Slot3",
            "Slot4",
            "Slot5",
            "Slot6"
        }
        
        while getgenv().StoringItemlOL4 == true do wait(0.35)
            pcall(function()
                game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chain of A Thousand Miles"));wait(1.15);
                for i,v in ipairs(ItemSlots) do
                    if game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner[v].Text.Text == "None" then
                        local args = {[1] = tonumber(v:sub(5))};
                        game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                    end
                end
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Requiem Arrow  🎯", false, function(Value)
        getgenv().StoringItemlOL6 = Value

        local ItemSlots = {
            "Slot1",
            "Slot2",
            "Slot3",
            "Slot4",
            "Slot5",
            "Slot6"
        }
        
        while getgenv().StoringItemlOL6 == true do wait(0.35)
            pcall(function()
                game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Requiem Arrow"));wait(1.15);
                for i,v in ipairs(ItemSlots) do
                    if game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner[v].Text.Text == "None" then
                        local args = {[1] = tonumber(v:sub(5))};
                        game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                    end
                end
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Dio's Bone  🦴", false, function(Value)
        getgenv().StoringItemlOL7 = Value

        local ItemSlots = {
            "Slot1",
            "Slot2",
            "Slot3",
            "Slot4",
            "Slot5",
            "Slot6"
        }
        
        while getgenv().StoringItemlOL7 == true do wait(0.35)
            pcall(function()
                game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dio's Bone"));wait(1.15);
                for i,v in ipairs(ItemSlots) do
                    if game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner[v].Text.Text == "None" then
                        local args = {[1] = tonumber(v:sub(5))};
                        game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                    end
                end
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Dio's Diary  📕", false, function(Value)
        getgenv().StoringItemlOL8 = Value

        local ItemSlots = {
            "Slot1",
            "Slot2",
            "Slot3",
            "Slot4",
            "Slot5",
            "Slot6"
        }
        
        while getgenv().StoringItemlOL8 == true do wait(0.35)
            pcall(function()
                game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dio's Diary"));wait(1.15);
                for i,v in ipairs(ItemSlots) do
                    if game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner[v].Text.Text == "None" then
                        local args = {[1] = tonumber(v:sub(5))};
                        game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                    end
                end
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Jotaro's Bozo Hat  🎩", false, function(Value)
        getgenv().StoringItemlOL9 = Value

        local ItemSlots = {
            "Slot1",
            "Slot2",
            "Slot3",
            "Slot4",
            "Slot5",
            "Slot6"
        }
        
        while getgenv().StoringItemlOL9 == true do wait(0.35)
            pcall(function()
                game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kujo's Hat"));wait(1.15);
                for i,v in ipairs(ItemSlots) do
                    if game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner[v].Text.Text == "None" then
                        local args = {[1] = tonumber(v:sub(5))};
                        game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                    end
                end
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Nikyu Nikyu Devil Fruit  🍇", false, function(Value)
        getgenv().StoringItemlOL10 = Value

        local ItemSlots = {
            "Slot1",
            "Slot2",
            "Slot3",
            "Slot4",
            "Slot5",
            "Slot6"
        }
        
        while getgenv().StoringItemlOL10 == true do wait(0.35)
            pcall(function()
                game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Nikyu Nikyu Devil Fruit"));wait(1.15);
                for i,v in ipairs(ItemSlots) do
                    if game:GetService("Players").LocalPlayer.PlayerGui.ItemStorage.Outer.Inner.Inner[v].Text.Text == "None" then
                        local args = {[1] = tonumber(v:sub(5))};
                        game:GetService("ReplicatedStorage"):WaitForChild("ItemStorageRemote"):WaitForChild("UseItemStorage"):FireServer(unpack(args));
                    end
                end
            end)
        end
    end);

    local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Auto One For All  🦸");
    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Start Farming [Be standless]", false, function(Value)
        getgenv().AFO = Value

        while getgenv().AFO == true do wait(1)
            pcall(function()
                for i,v in pairs(workspace.Map.NPCs.AFO:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v);
                    end
                end
            end)
        end
    end);

    local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Auto Sell  💸");
    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Everything  🖐️", false, function(Value)
        getgenv().EverythingLoL = Value
        while getgenv().EverythingLoL == true do wait(0.25)
            pcall(function()
                local Selling = {"Arrow","Barrel","Rokakaka","Stop Sign","Mysterious Camera" ,"Haunted Sword","Spin Manual","Hamon Manual","Stone Mask","Bomu Bomu Devil Fruit","Mochi Mochi Devil Fruit","Bari Bari Devil Fruit"}
                for i,v in ipairs(Selling) do
                    local args = {[1] = v}
                    game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer(unpack(args))
                end    
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Barrels  😑", false, function(Value)
        getgenv().SellingBarrels = Value
        while getgenv().SellingBarrels == true do wait(0.15)
            pcall(function()
                local args = {[1] = "Barrel"};
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer(unpack(args));           
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Arrows   🎯", false, function(Value)
        getgenv().SellingArrows = Value
        while getgenv().SellingArrows == true do wait(0.15)
            pcall(function()
                local args = {[1] = "Arrow"};
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer(unpack(args));           
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Rokakakas  🍎", false, function(Value)
        getgenv().SellingRoks = Value
        while getgenv().SellingRoks == true do wait(0.15)
            pcall(function()
                local args = {[1] = "Rokakaka"};
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer(unpack(args));           
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Stop Signs  🛑", false, function(Value)
        getgenv().SellingSigns = Value
        while getgenv().SellingSigns == true do wait(0.15)
            pcall(function()
                local args = {[1] = "Stop Sign"};
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer(unpack(args));           
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Mysterious Cameras  📸", false, function(Value)
        getgenv().SellingCams = Value
        while getgenv().SellingCams == true do wait(0.15)
            pcall(function()
                local args = {[1] = "Mysterious Camera"};
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer(unpack(args));           
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Haunted Swords  ⚔️", false, function(Value)
        getgenv().SellingSwords = Value
        while getgenv().SellingSwords == true do wait(0.15)
            pcall(function()
                local args = {[1] = "Haunted Sword"};
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer(unpack(args));           
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Spin Manuals  💫", false, function(Value)
        getgenv().SellingSpinManuals = Value
        while getgenv().SellingSpinManuals == true do wait(0.15)
            pcall(function()
                local args = {[1] = "Spin Manual"};
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer(unpack(args));           
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Hamon Manuals  ⚡", false, function(Value)
        getgenv().SellingHamons = Value
        while getgenv().SellingHamons == true do wait(0.15)
            pcall(function()
                local args = {[1] = "Hamon Manual"};
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer(unpack(args));           
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Stone Masks  🎭", false, function(Value)
        getgenv().SellingStoneMasks = Value
        while getgenv().SellingStoneMasks == true do wait(0.15)
            pcall(function()
                local args = {[1] = "Stone Mask"};
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer(unpack(args));           
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Bomu Bomu Devil Fruits  🍇", false, function(Value)
        getgenv().SellingBomu = Value
        while getgenv().SellingBomu == true do wait(0.15)
            pcall(function()
                local args = {[1] = "Bomu Bomu Devil Fruit"};
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer(unpack(args));           
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Mochi Mochi Devil Fruits  🍐", false, function(Value)
        getgenv().SellingMochi = Value
        while getgenv().SellingMochi == true do wait(0.15)
            pcall(function()
                local args = {[1] = "Mochi Mochi Devil Fruit"};
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer(unpack(args));           
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Bari Bari Devil Fruits  🍈", false, function(Value)
        getgenv().SellingBari = Value
        while getgenv().SellingBari == true do wait(0.15)
            pcall(function()
                local args = {[1] = "Bari Bari Devil Fruit"};
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("SellItem"):FireServer(unpack(args));           
            end)
        end
    end);

    local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Auto Arcade + Banner  👀");
    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Start Gambling | Arcade  🕹️", false, function(Value)
        getgenv().Arcading = Value -- wtf?
        while getgenv().Arcading == true do wait(0.15)
            pcall(function()
                local args = {[1] = false,[2] = true};
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("ArcadePurchase"):FireServer(unpack(args));                         
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Start Rolling | Banner  🀄", false, function(Value)
        getgenv().Bannering = Value -- wtf?
        while getgenv().Bannering == true do wait(0.15)
            pcall(function()
                local args = {[1] = "Single",[2] = "ArrowOfNavae"};
                game:GetService("ReplicatedStorage"):WaitForChild("GlobalUsedRemotes"):WaitForChild("BannerPull"):FireServer(unpack(args));
            end)
        end
    end);

    local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Auto Quests  📋");
    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Parry Damage + Block Damage  ✊⚔️", false, function(Value)
        getgenv().ParryLolz = Value

        while getgenv().ParryLolz == true do wait(0.001)
            pcall(function()
                game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").Living["Attacking Dummy"].HumanoidRootPart.Position + -game:GetService("Workspace").Living["Attacking Dummy"].HumanoidRootPart.CFrame.LookVector * -5); game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(game:GetService("Workspace").Living["Attacking Dummy"].HumanoidRootPart.Position + -game:GetService("Workspace").Living["Attacking Dummy"].HumanoidRootPart.CFrame.LookVector * -5, game:GetService("Workspace").Living["Attacking Dummy"].HumanoidRootPart.Position - -game:GetService("Workspace").Living["Attacking Dummy"].HumanoidRootPart.CFrame.LookVector * -5));
                game:GetService("VirtualUser"):ClickButton1(Vector2.new());
                if workspace.Living["Attacking Dummy"].CDValues:FindFirstChild("OnCooldown") then
                    getgenv().Press = function(v)
                        return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game);
                    end
                    getgenv().Unpress = function(v)
                        return game:GetService("VirtualInputManager"):SendKeyEvent(false, v, false, game);
                    end
                    Press("F");wait(0.15);Unpress("F");
                end
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Block Damage  ⚔️", false, function(Value)
        getgenv().ParryLolz = Value

        while getgenv().ParryLolz == true do wait(0.001)
            pcall(function()
                game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").Living["Attacking Dummy"].HumanoidRootPart.Position + -game:GetService("Workspace").Living["Attacking Dummy"].HumanoidRootPart.CFrame.LookVector * -5); game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(game:GetService("Workspace").Living["Attacking Dummy"].HumanoidRootPart.Position + -game:GetService("Workspace").Living["Attacking Dummy"].HumanoidRootPart.CFrame.LookVector * -5, game:GetService("Workspace").Living["Attacking Dummy"].HumanoidRootPart.Position - -game:GetService("Workspace").Living["Attacking Dummy"].HumanoidRootPart.CFrame.LookVector * -5));
                if workspace.Living["Attacking Dummy"].CDValues:FindFirstChild("OnCooldown") then
                    getgenv().Press = function(v)
                        return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game);
                    end
                    getgenv().Unpress = function(v)
                        return game:GetService("VirtualInputManager"):SendKeyEvent(false, v, false, game);
                    end
                    Press("F");wait(0.15);Unpress("F");
                end
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Deal Damage   👊", false, function(Value)
        getgenv().DealingPainX = Value
        
        while getgenv().DealingPainX == true do wait(0.015)
            pcall(function()
                game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").Living.Dummy.HumanoidRootPart.Position + -game:GetService("Workspace").Living.Dummy.HumanoidRootPart.CFrame.LookVector * -3); game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(game:GetService("Workspace").Living.Dummy.HumanoidRootPart.Position + -game:GetService("Workspace").Living.Dummy.HumanoidRootPart.CFrame.LookVector * -3, game:GetService("Workspace").Living.Dummy.HumanoidRootPart.Position - -game:GetService("Workspace").Living.Dummy.HumanoidRootPart.CFrame.LookVector * -3));                           
                task.spawn(function()
                    getgenv().Press = function(v) -- bruh 2
                        return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game);
                    end
                    Press("E");Press("T");Press("V");Press("G");Press("Y");Press("H");Press("R")
                    game:GetService("VirtualUser"):ClickButton1(Vector2.new());
                end)
            end)
        end          
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Take Damage  🤕", false, function(Value)
        getgenv().Masochist = Value
        
        while getgenv().Masochist == true do wait(0.015)
            pcall(function()
                game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").Living["Attacking Dummy"].HumanoidRootPart.Position + -game:GetService("Workspace").Living["Attacking Dummy"].HumanoidRootPart.CFrame.LookVector * -5); game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(game:GetService("Workspace").Living["Attacking Dummy"].HumanoidRootPart.Position + -game:GetService("Workspace").Living["Attacking Dummy"].HumanoidRootPart.CFrame.LookVector * -5, game:GetService("Workspace").Living["Attacking Dummy"].HumanoidRootPart.Position - -game:GetService("Workspace").Living["Attacking Dummy"].HumanoidRootPart.CFrame.LookVector * -5));            
            end)
        end          
    end);

    local SecondAndHalfLabel = SecondAndHalfPage.AddLabel("[+] Auto Bosses  💥");
    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Jotaro Kujo  💀", false, function(Value)
        getgenv().BossingJotaroKuzo = Value

        while getgenv().BossingJotaroKuzo == true do wait(0.015)
            pcall(function()
                if workspace.Living:FindFirstChild("Jotaro Kujo") and workspace.Living:FindFirstChild("Jotaro Kujo"):FindFirstChild("HumanoidRootPart") then
                    game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").Living["Jotaro Kujo"].HumanoidRootPart.Position + -game:GetService("Workspace").Living["Jotaro Kujo"].HumanoidRootPart.CFrame.LookVector * 10) game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(game:GetService("Workspace").Living["Jotaro Kujo"].HumanoidRootPart.Position + -game:GetService("Workspace").Living["Jotaro Kujo"].HumanoidRootPart.CFrame.LookVector * 3, game:GetService("Workspace").Living["Jotaro Kujo"].HumanoidRootPart.Position - -game:GetService("Workspace").Living["Jotaro Kujo"].HumanoidRootPart.CFrame.LookVector * 3));                    
                    task.spawn(function()
                        pcall(function()
                            getgenv().Press = function(v) -- bruh 2
                                return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game);
                            end
                            Press("E");Press("T");Press("V");Press("G");Press("Y");Press("H");Press("R")
                            game:GetService("VirtualUser"):ClickButton1(Vector2.new());
                        end)
                    end)
                else
                    Notif:Notification("Resonance 💀", "Jotaro Bozo not found", "GothamSemibold", "Gotham", 3);
                end
            end)
        end     
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Chariot Requiem  💀", false, function(Value)
        getgenv().BossingChriotRequiem = Value

        while getgenv().BossingChriotRequiem == true do wait(0.015)
            pcall(function()
                if workspace.Living:FindFirstChild("Chariot Requiem") and workspace.Living:FindFirstChild("Chariot Requiem"):FindFirstChild("HumanoidRootPart") then
                    pcall(function()
                        game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").Living["Chariot Requiem"].HumanoidRootPart.Position + -game:GetService("Workspace").Living["Chariot Requiem"].HumanoidRootPart.CFrame.LookVector * 3) game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(game:GetService("Workspace").Living["Chariot Requiem"].HumanoidRootPart.Position + -game:GetService("Workspace").Living["Chariot Requiem"].HumanoidRootPart.CFrame.LookVector * 3, game:GetService("Workspace").Living["Chariot Requiem"].HumanoidRootPart.Position - -game:GetService("Workspace").Living["Chariot Requiem"].HumanoidRootPart.CFrame.LookVector * 3));                    
                        task.spawn(function()
                            pcall(function()
                                getgenv().Press = function(v) -- bruh 2
                                    return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game);
                                end
                                Press("E");Press("T");Press("V");Press("G");Press("Y");Press("H");Press("R")Press("V");Press("H");Press("J");Press("U");Press("B");
                                game:GetService("VirtualUser"):ClickButton1(Vector2.new());             
                            end)
                        end)
                    end)
                else
                    Notif:Notification("Resonance 💀", "Chariot not found", "GothamSemibold", "Gotham", 3);
                end
            end)
        end
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Toji Fushiguro  💀", false, function(Value)
        getgenv().BossingToji = Value

        while getgenv().BossingToji == true do wait(0.015)
            pcall(function()
                if workspace.Living:FindFirstChild("Toji") and workspace.Living:FindFirstChild("Toji"):FindFirstChild("HumanoidRootPart") then
                    game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").Living["Toji"].HumanoidRootPart.Position + -game:GetService("Workspace").Living["Toji"].HumanoidRootPart.CFrame.LookVector * 3) game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(game:GetService("Workspace").Living["Toji"].HumanoidRootPart.Position + -game:GetService("Workspace").Living["Toji"].HumanoidRootPart.CFrame.LookVector * 3, game:GetService("Workspace").Living["Toji"].HumanoidRootPart.Position - -game:GetService("Workspace").Living["Toji"].HumanoidRootPart.CFrame.LookVector * 3));                    
                    task.spawn(function()
                        pcall(function()
                            getgenv().Press = function(v) -- bruh 2
                                return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game);
                            end
                            Press("E");Press("T");Press("V");Press("G");Press("Y");Press("H");Press("R")
                            game:GetService("VirtualUser"):ClickButton1(Vector2.new());
                        end)
                    end)
                else
                    Notif:Notification("Resonance 💀", "Toji not found", "GothamSemibold", "Gotham", 3);
                end
            end)
        end 
    end);

    local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Dio Brando  💀", false, function(Value)
        getgenv().BossingDio = Value

        while getgenv().BossingDio == true do wait(0.015)
            pcall(function()
                if workspace.Living:FindFirstChild("Dio") and workspace.Living:FindFirstChild("Dio"):FindFirstChild("HumanoidRootPart") then
                    game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").Living["Dio"].HumanoidRootPart.Position + -game:GetService("Workspace").Living["Dio"].HumanoidRootPart.CFrame.LookVector * 3) game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(game:GetService("Workspace").Living["Dio"].HumanoidRootPart.Position + -game:GetService("Workspace").Living["Dio"].HumanoidRootPart.CFrame.LookVector * 3, game:GetService("Workspace").Living["Dio"].HumanoidRootPart.Position - -game:GetService("Workspace").Living["Dio"].HumanoidRootPart.CFrame.LookVector * 3));                    
                    task.spawn(function()
                        pcall(function()
                            getgenv().Press = function(v) -- bruh 2
                                return game:GetService("VirtualInputManager"):SendKeyEvent(true, v, false, game);
                            end
                            Press("E");Press("T");Press("V");Press("G");Press("Y");Press("H");Press("R")
                            game:GetService("VirtualUser"):ClickButton1(Vector2.new());
                        end)
                    end)
                else
                    Notif:Notification("Resonance 💀", "Dio not found", "GothamSemibold", "Gotham", 3);
                end
            end)
        end 
    end);
local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Deku 💀", false, function(Value)

    getgenv().BossingDeku = Value
    while getgenv().BossingDeku == true do
        wait(0.015)
        pcall(function()
            local dekuHumanoid = workspace.Living:FindFirstChild("Deku")
            if dekuHumanoid and dekuHumanoid:FindFirstChild("HumanoidRootPart") then
                local dekuRootPart = dekuHumanoid.HumanoidRootPart
                local playerCharacter = game:GetService("Players").LocalPlayer.Character
                local playerPosition = playerCharacter and playerCharacter.PrimaryPart and playerCharacter.PrimaryPart.Position
                if playerPosition then
                    local targetPosition = dekuRootPart.Position + dekuRootPart.CFrame.LookVector * 3
                    playerCharacter:MoveTo(targetPosition)
                    playerCharacter:SetPrimaryPartCFrame(CFrame.new(targetPosition))
                    
                    task.spawn(function()
                        pcall(function()
                            local function Press(key)
                                return game:GetService("VirtualInputManager"):SendKeyEvent(true, key, false, game)
                            end
                            Press("E")
                            Press("T")
                            Press("V")
                            Press("G")
                            Press("Y")
                            Press("H")
                            Press("R")
                            game:GetService("VirtualUser"):ClickButton1(Vector2.new())
                        end)
                    end)
                    
                     game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Workspace").Living["Deku"].HumanoidRootPart.Position + game:GetService("Workspace").Living["Deku"].HumanoidRootPart.CFrame.LookVector * 3)
                     game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(game:GetService("Workspace").Living["Deku"].HumanoidRootPart.Position + game:GetService("Workspace").Living["Deku"].HumanoidRootPart.CFrame.LookVector * 3, game:GetService("Workspace").Living["Deku"].HumanoidRootPart.Position - game:GetService("Workspace").Living["Deku"].HumanoidRootPart.CFrame.LookVector * 3))
                end
            else
                Notif:Notification("Resonance 💀", "Deku not found", "GothamSemibold", "Gotham", 3)
            end
        end)
    end
end)


local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Bandit ezz  💀", false, function(Value)
    getgenv().BossingBandit = Value
    while getgenv().BossingBandit == true do
        wait(0.015)
        pcall(function()
            local banditHumanoid = workspace.Living:FindFirstChild("Bandit")
            if banditHumanoid and banditHumanoid:FindFirstChild("HumanoidRootPart") then
                local banditRootPart = banditHumanoid.HumanoidRootPart
                local playerCharacter = game:GetService("Players").LocalPlayer.Character
                local playerPosition = playerCharacter and playerCharacter.PrimaryPart and playerCharacter.PrimaryPart.Position
                if playerPosition then
                    local targetPosition = banditRootPart.Position - banditRootPart.CFrame.LookVector * 3
                    playerCharacter:MoveTo(targetPosition)
                    playerCharacter:SetPrimaryPartCFrame(CFrame.new(targetPosition))
                    
                    task.spawn(function()
                        pcall(function()
                            local function Press(key)
                                return game:GetService("VirtualInputManager"):SendKeyEvent(true, key, false, game)
                            end
                            Press("E")
                            Press("T")
                            Press("V")
                            Press("G")
                            Press("Y")
                            Press("H")
                            Press("R")
                            game:GetService("VirtualUser"):ClickButton1(Vector2.new())
                        end)
                    end)

                    playerCharacter:MoveTo(banditRootPart.Position + banditRootPart.CFrame.LookVector * 3)
                    playerCharacter:SetPrimaryPartCFrame(CFrame.new(banditRootPart.Position + banditRootPart.CFrame.LookVector * 3, banditRootPart.Position - banditRootPart.CFrame.LookVector * 3))
                end
            else
                Notif:Notification("Resonance 💀", "Bandit not found", "GothamSemibold", "Gotham", 3)
            end
        end)
    end
end)

local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Thug ezz  💀", false, function(Value)
    getgenv().BossingThug = Value
    while getgenv().BossingThug == true do
        wait(0.015)
        pcall(function()
            local thugHumanoid = workspace.Living:FindFirstChild("Thug")
            if thugHumanoid and thugHumanoid:FindFirstChild("HumanoidRootPart") then
                local thugRootPart = thugHumanoid.HumanoidRootPart
                local playerCharacter = game:GetService("Players").LocalPlayer.Character
                local playerPosition = playerCharacter and playerCharacter.PrimaryPart and playerCharacter.PrimaryPart.Position
                if playerPosition then
                    local targetPosition = thugRootPart.Position - thugRootPart.CFrame.LookVector * 3
                    playerCharacter:MoveTo(targetPosition)
                    playerCharacter:SetPrimaryPartCFrame(CFrame.new(targetPosition))
                    
                    task.spawn(function()
                        pcall(function()
                            local function Press(key)
                                return game:GetService("VirtualInputManager"):SendKeyEvent(true, key, false, game)
                            end
                            Press("E")
                            Press("T")
                            Press("V")
                            Press("G")
                            Press("Y")
                            Press("H")
                            Press("R")
                            game:GetService("VirtualUser"):ClickButton1(Vector2.new())
                        end)
                    end)

                    
                    playerCharacter:MoveTo(thugRootPart.Position + thugRootPart.CFrame.LookVector * 3)
                    playerCharacter:SetPrimaryPartCFrame(CFrame.new(thugRootPart.Position + thugRootPart.CFrame.LookVector * 3, thugRootPart.Position - thugRootPart.CFrame.LookVector * 3))
                end
            else
                Notif:Notification("Resonance 💀", "Thug not found", "GothamSemibold", "Gotham", 3)
            end
        end)
    end
end)

local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Glutton Curse ezz 💀", false, function(Value)
    getgenv().BossingGlutton = Value
    while getgenv().BossingGlutton == true do
        wait(0.015)
        pcall(function()
            local gluttonRootPart = workspace.Living["Glutton Curse"].HumanoidRootPart
            local playerCharacter = game:GetService("Players").LocalPlayer.Character
            local playerPosition = playerCharacter and playerCharacter.PrimaryPart and playerCharacter.PrimaryPart.Position
            if playerPosition then
                local targetPosition = gluttonRootPart.Position - gluttonRootPart.CFrame.LookVector * 3
                playerCharacter:MoveTo(targetPosition)
                playerCharacter:SetPrimaryPartCFrame(CFrame.new(targetPosition))
                
                task.spawn(function()
                    pcall(function()
                        local function Press(key)
                            return game:GetService("VirtualInputManager"):SendKeyEvent(true, key, false, game)
                        end
                        Press("E")
                        Press("T")
                        Press("V")
                        Press("G")
                        Press("Y")
                        Press("H")
                        Press("R")
                        game:GetService("VirtualUser"):ClickButton1(Vector2.new())
                    end)
                end)

                playerCharacter:MoveTo(gluttonRootPart.Position + gluttonRootPart.CFrame.LookVector * 3)
                playerCharacter:SetPrimaryPartCFrame(CFrame.new(gluttonRootPart.Position + gluttonRootPart.CFrame.LookVector * 3, gluttonRootPart.Position - gluttonRootPart.CFrame.LookVector * 3))
            else
                Notif:Notification("Resonance 💀", "Glutton Curse's HumanoidRootPart not found", "GothamSemibold", "Gotham", 3)
            end
        end)
    end
end);


local SecondAndHalfToggle = SecondAndHalfPage.AddToggle("Curse ezz 💀", false, function(Value)
    getgenv().BossingCurse = Value

    while getgenv().BossingCurse == true do
        wait(0.015)
        pcall(function()
            local curseRootPart = workspace.Living["Mosquito Curse"].HumanoidRootPart
            local playerCharacter = game:GetService("Players").LocalPlayer.Character

            if curseRootPart and playerCharacter then
                local playerPosition = playerCharacter:FindFirstChild("HumanoidRootPart").Position
                local targetPosition = curseRootPart.Position
                local direction = (playerPosition - targetPosition).unit -- Получаем единичный вектор в направлении к игроку

                -- Устанавливаем ориентацию в сторону игрока
                playerCharacter:SetPrimaryPartCFrame(CFrame.new(playerCharacter.PrimaryPart.Position, targetPosition))
                
                task.spawn(function()
                    pcall(function()
                        local function Press(key)
                            return game:GetService("VirtualInputManager"):SendKeyEvent(true, key, false, game)
                        end
                        Press("E")
                        Press("T")
                        Press("V")
                        Press("G")
                        Press("Y")
                        Press("H")
                        Press("R")
                        game:GetService("VirtualUser"):ClickButton1(Vector2.new())
                    end)
                end)

                -- Добавляем движение персонажа к противнику и устанавливаем его ориентацию
                playerCharacter:MoveTo(targetPosition + direction * 3)
                playerCharacter:SetPrimaryPartCFrame(CFrame.new(targetPosition + direction * 3, targetPosition - direction * 3))
            else
                Notif:Notification("Resonance 💀", "Mosquito Curse's HumanoidRootPart not found", "GothamSemibold", "Gotham", 3)
            end
        end)
    end
end)





    local BackupEndLabel = BackupEndPage.AddLabel("[+] Places  🗺️");
    local BackupEndButton = BackupEndPage.AddButton("Shop   🏪", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-375.9766845703125, -31.704181671142578, 1810.9178466796875);
    end);

    local BackupEndButton = BackupEndPage.AddButton("Cafe   ☕", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-237.51318359375, -32.0684814453125, 1452.0396728515625);
    end);

    local BackupEndButton = BackupEndPage.AddButton("Guilds  ⚔️", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-688.5193481445312, -31.074769973754883, 1662.5528564453125);
    end);

    local BackupEndButton = BackupEndPage.AddButton("Battle Field  💥", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-520.662841796875, -31.358125686645508, 1584.3505859375)
    end);

    local BackupEndButton = BackupEndPage.AddButton("Side Park  ⛲", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-73.15850830078125, -32.01318359375, 1636.9390869140625);
    end);

    local BackupEndButton = BackupEndPage.AddButton("Park  🏞️", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-537.5374145507812, -32.051334381103516, 1419.20361328125);
    end);

    local BackupEndButton = BackupEndPage.AddButton("Ruined City  🌆", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7469.16259765625, -32.022640228271484, 1293.190185546875);
    end);

    local BackupEndButton = BackupEndPage.AddButton("Cave  💀", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2343.34326171875, -393.6280822753906, -5044.39013671875);
    end);

    local BackupEndButton = BackupEndPage.AddButton("Hall of Heroes  🦸", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3642.984619140625, -234.16964721679688, 4537.80078125);
    end);

    local BackupEndLabel = BackupEndPage.AddLabel("[+] NPC  🌐");
    local BackupEndButton = BackupEndPage.AddButton("Skin Remover [$5,000]", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(55.15070724487305, -32.537261962890625, 1576.3802490234375);
    end);

    local BackupEndButton = BackupEndPage.AddButton("Normal Dummies", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-122.98736572265625, -32.53725814819336, 1775.2222900390625);
    end);

    local BackupEndButton = BackupEndPage.AddButton("Blocking Dummies", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-40.976383209228516, -32.73731231689453, 1755.3009033203125);
    end);

    local BackupEndButton = BackupEndPage.AddButton("Attacking Dummies", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-659.4290161132812, -33.014976501464844, 1851.7779541015625);
    end);

    local BackupEndButton = BackupEndPage.AddButton("Drago | Daily Quest", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-97.93447875976562, -32.013179779052734, 1671.56298828125);
    end);

    local BackupEndButton = BackupEndPage.AddButton("All Might | Quest", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-433.9189147949219, -32.64363098144531, 1133.6900634765625)
    end);

    local BackupEndButton = BackupEndPage.AddButton("Gojo | Quest", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-581.3973999023438, -32.15133285522461, 1416.25390625);
    end);

    local BackupEndButton = BackupEndPage.AddButton("Hikarishi | Quest", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-508.49334716796875, -32.792144775390625, 1508.5386962890625);
    end);

-- More to come!
end

--// 🟢 Ragdoll Engine \\--
if game.PlaceId == Supported.Ragdoll_Engine then
    task.spawn(function()
        wait(3);
        Notif:Notification("Game Detected ⚠️", "Ragdoll Engine  🔥", "GothamSemibold", "Gotham", 2.5);
    end)

    --// Main Pages \\--
    local SecondPage = MainUI.AddPage("Trolling");

    local SecondLabel = SecondPage.AddLabel("[+] Fun To Mess With  🤪");
    local SecondButton = SecondPage.AddButton("Anti Push 👀", function()
        spawn(function()
            game:GetService("Workspace"):FindFirstChild("Ragdoll-Admin"):Destroy();
            end)
            spawn(function()
            game:GetService("Workspace"):FindFirstChild("Ragdoll 1"):Destroy();
            end)
            spawn(function()
            game:GetService("Workspace"):FindFirstChild("Ragdoll 2"):Destroy();
            end)
            spawn(function()
            game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name]:FindFirstChild("Falling down"):Destroy();
            end)
            spawn(function()
            game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name]:FindFirstChild("KillScript"):Destroy();
            end)
            spawn(function()
            game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name]:FindFirstChild("Pushed"):Destroy();
            end)
            spawn(function()
            game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name]:FindFirstChild("RagdollMe"):Destroy();
            end)
            spawn(function()
            game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name]:FindFirstChild("FirstPerson"):Destroy();
            end)
            spawn(function()
            game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name]:FindFirstChild("Swimming"):Destroy();
            end)
            spawn(function()
            game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name]:FindFirstChild("StartRagdoll"):Destroy();
        end)
    end);

    local SecondToggle = SecondPage.AddToggle("Push Aura  ✋", false, function(Value)
        getgenv().PushAura = Value

        while getgenv().PushAura == true do wait(0.15)
            pcall(function()
                for i,v in ipairs(game:GetService("Players"):GetPlayers()) do
                    if v ~= game:GetService("Players").LocalPlayer then
                        if (game:GetService("Players").LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude < 25 then
                            local args = {[1] = workspace:WaitForChild(v.Name)};
                            game:GetService("Players").LocalPlayer.Character.Push.PushTool:FireServer(unpack(args));
                        end
                    end
                end                
            end)
        end
    end);

    local SecondToggle = SecondPage.AddToggle("Bombastic  💣", false, function(Value)
        getgenv().Bombastics = Value

        while getgenv().Bombastics == true do wait(0.015)
            pcall(function()
                for i,v in pairs(workspace.Landmines:GetDescendants()) do 
                    if v.Name == "TouchInterest" then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1);
                    end
                end
            end)
        end
    end);

end

--// 🟢 Stardust Reborn \\--
if game.PlaceId == Supported.Stardust_Reborn then
    task.spawn(function()
        wait(3);
        Notif:Notification("Game Detected ⚠️", "Stardust Reborn  🔥", "GothamSemibold", "Gotham", 2.5);
    end)

    --// Main Pages \\--
    local SecondPage = MainUI.AddPage("Farming");

    local SecondLabel = SecondPage.AddLabel("[+] Auto Pick Items  💍");
    local SecondToggle = SecondPage.AddToggle("Start Farming (Any Item)", false, function(Value)
        getgenv().PickItems = Value

        while getgenv().PickItems == true do wait(0.15)
            pcall(function()
                for i,v in pairs(workspace.Game.Items:GetDescendants()) do
                    if v:IsA("MeshPart") then
                        v.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
                    end
                end
           end)
        end
    end);
--[[
    -- Auto stand farmer (Usless but works)
    getgenv().FarmingEz = true
    
    local Toggle = true

    local WantedStand1 = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Client"):FindFirstChild("Movesets"):FindFirstChild("Gold Experience") -- stand that you want to farm for

    local Standless = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Client"):FindFirstChild("Movesets"):FindFirstChild("Standless")
    
    while getgenv().FarmingEz == true do wait(0.35)
        if Standless and not WantedStand1 then
            if Toggle then
                pcall(function()
                    game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Arrow"))
                    wait(0.15);
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Arrow"):Activate()
                end)
            else
                pcall(function()
                    game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Roka"))
                    wait(0.15);
    
                    local Main = game:GetService("Players").LocalPlayer.PlayerGui.RokaGUI.Frame
                    mousemoverel((Main.AbsolutePosition.x + Main.AbsoluteSize.x / 2),(Main.AbsolutePosition.y + Main.AbsoluteSize.y / 2 - -100));
    
                    wait(0.15);
                    mouse1press();
                end)
            end
            
            Toggle = not Toggle
        elseif Standless and WantedStand1 then
            print("OMGGGG1!111!1");break
        end
    end
--]]

    getgenv().AttackingOnStardustReborn = function()
        keypress(0x42);keypress(0x43);keypress(0x46);keypress(0x47);keypress(0x48);keypress(0x52);keypress(0x54);keypress(0x59);
    end

    local SecondLabel = SecondPage.AddLabel("[+] Bosses  🤪");
    local SecondButton = SecondPage.AddButton("One Shot Kill  💀", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/Throwables/main/StardustOneShotKill"))();
    end);

    local SecondToggle = SecondPage.AddToggle("DIO  💀👊", false, function(Value)
        getgenv().HittingNpc1 = Value
        while getgenv().HittingNpc1 == true do wait(0.015)
            pcall(function()
                game:GetService("Players").LocalPlayer.Character:MoveTo(workspace.Game.Alive.DIO.HumanoidRootPart.Position + -workspace.Game.Alive.DIO.HumanoidRootPart.CFrame.LookVector * 11) game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(workspace.Game.Alive.DIO.HumanoidRootPart.Position + -workspace.Game.Alive.DIO.HumanoidRootPart.CFrame.LookVector * 11, workspace.Game.Alive.DIO.HumanoidRootPart.Position - -workspace.Game.Alive.DIO.HumanoidRootPart.CFrame.LookVector * 11));
                task.spawn(function()
                    getgenv().AttackingOnStardustReborn();
                end)
            end)
        end
    end);

    local SecondToggle = SecondPage.AddToggle("Kujo  💀👊", false, function(Value)
        getgenv().HittingNpc2 = Value
        while getgenv().HittingNpc2 == true do wait(0.015)
            pcall(function()
                game:GetService("Players").LocalPlayer.Character:MoveTo(workspace.Game.Alive["Jotaro P3"].HumanoidRootPart.Position + -workspace.Game.Alive["Jotaro P3"].HumanoidRootPart.CFrame.LookVector * 11) game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(workspace.Game.Alive["Jotaro P3"].HumanoidRootPart.Position + -workspace.Game.Alive["Jotaro P3"].HumanoidRootPart.CFrame.LookVector * 11, workspace.Game.Alive["Jotaro P3"].HumanoidRootPart.Position - -workspace.Game.Alive["Jotaro P3"].HumanoidRootPart.CFrame.LookVector * 11));
                task.spawn(function()
                    getgenv().AttackingOnStardustReborn();
                end)
            end)
        end
    end);

    local SecondToggle = SecondPage.AddToggle("Diavolo  💀👊", false, function(Value)
        getgenv().HittingNpc3 = Value
        while getgenv().HittingNpc3 == true do wait(0.015)
            pcall(function()
                game:GetService("Players").LocalPlayer.Character:MoveTo(workspace.Game.Alive.Diavolo.HumanoidRootPart.Position + -workspace.Game.Alive.Diavolo.HumanoidRootPart.CFrame.LookVector * 11) game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(workspace.Game.Alive.Diavolo.HumanoidRootPart.Position + -workspace.Game.Alive.Diavolo.HumanoidRootPart.CFrame.LookVector * 11, workspace.Game.Alive.Diavolo.HumanoidRootPart.Position - -workspace.Game.Alive.Diavolo.HumanoidRootPart.CFrame.LookVector * 11));
                task.spawn(function()
                    getgenv().AttackingOnStardustReborn();
                end)
            end)
        end  
    end);

    local SecondToggle = SecondPage.AddToggle("Chaka  💀👊", false, function(Value)
        getgenv().HittingNpc4 = Value
        while getgenv().HittingNpc4 == true do wait(0.015)
            pcall(function()
                game:GetService("Players").LocalPlayer.Character:MoveTo(workspace.Game.Alive.Chaka.HumanoidRootPart.Position + -workspace.Game.Alive.Chaka.HumanoidRootPart.CFrame.LookVector * 11) game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(workspace.Game.Alive.Chaka.HumanoidRootPart.Position + -workspace.Game.Alive.Chaka.HumanoidRootPart.CFrame.LookVector * 11, workspace.Game.Alive.Chaka.HumanoidRootPart.Position - -workspace.Game.Alive.Chaka.HumanoidRootPart.CFrame.LookVector * 11));
                task.spawn(function()
                    getgenv().AttackingOnStardustReborn();
                end)
            end)
        end  
    end);

    local SecondToggle = SecondPage.AddToggle("Giorno 💀👊", false, function(Value)
        getgenv().HittingNpc4 = Value
        while getgenv().HittingNpc4 == true do wait(0.015)
            pcall(function()
                game:GetService("Players").LocalPlayer.Character:MoveTo(workspace.Game.Alive["Giorno Giovanna"].HumanoidRootPart.Position + -workspace.Game.Alive["Giorno Giovanna"].HumanoidRootPart.CFrame.LookVector * 11) game:GetService("Players").LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(workspace.Game.Alive["Giorno Giovanna"].HumanoidRootPart.Position + -workspace.Game.Alive["Giorno Giovanna"].HumanoidRootPart.CFrame.LookVector * 11, workspace.Game.Alive["Giorno Giovanna"].HumanoidRootPart.Position - -workspace.Game.Alive["Giorno Giovanna"].HumanoidRootPart.CFrame.LookVector * 11));
                task.spawn(function()
                    getgenv().AttackingOnStardustReborn();
                end)
            end)
        end  
    end);

    local SecondToggle = SecondPage.AddToggle("Goku  💀👊", false, function(Value)
        if Value == true then
            Notif:Notification("Resonance 💀", "Sorry... But you cant", "GothamSemibold", "Gotham", 1);wait()Notif:Notification("Resonance 💀", "I love goku >:(", "GothamSemibold", "Gotham", 1);
        end
    end);

--[[
    local SecondLabel = SecondPage.AddLabel("[+] Undetermined  🟠");
    local SecondToggle = SecondPage.AddToggle("Soon?  🟠", false, function(Value)
        
    end);
--]]

    -- More yet to come
end

--// 🟢 A Universal Time \\--
if game.PlaceId == Supported.A_Universal_Time then
    task.spawn(function()
        wait(3);
        Notif:Notification("Game Detected ⚠️", " A Universal Time  🔥", "GothamSemibold", "Gotham", 2.5);
    end)

    --// Main Pages \\--
    local SecondPage = MainUI.AddPage("Farming");

    local SecondLabel = SecondPage.AddLabel("[+] Item Farming  🤪");
    local SecondToggle = SecondPage.AddToggle("Start Farming (Any Item) | V1", false, function(Value)
        getgenv().TheyreMagsNotClips = Value
        getgenv().DoinItVersion1 = Value

        local FloatPart = Instance.new("Part", game.Workspace)
        local Path = workspace.ItemSpawns
        
        FloatPart.Name = "FloatPart"
        FloatPart.Size = Vector3.new(6,0.1,6)
        FloatPart.Anchored = true
        FloatPart.Transparency = 1
        
        task.spawn(function()
            while getgenv().DoinItVersion1 == true do wait(0.001)
                pcall(function()
                    FloatPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,-3.05,0);
                    for i,v in pairs(Path:GetDescendants()) do
                        if v:IsA("ProximityPrompt") then
                            fireproximityprompt(v, 0);
                        end
                    end
                end)
            end
        end)
        task.spawn(function()
            while getgenv().TheyreMagsNotClips == true do
                wait(0.1)
                for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end

            for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                if v:IsA("BasePart") then
                    v.CanCollide = true
                end
            end
        end)
        task.spawn(function()
            while getgenv().DoinItVersion1 == true do wait(0.15)
                pcall(function()
                    local Table = {} for i,v in pairs(workspace.ItemSpawns:GetDescendants()) do if v:IsA("BasePart") then table.insert(Table, v) end end if #Table > 0 then game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = Table[math.random(1, #Table)].CFrame * CFrame.new(0, -10, 0); end
                end)
            end
        end)        
    end);

    local SecondToggle = SecondPage.AddToggle("Start Farming (Any Item) | V2", false, function(Value)
        getgenv().DoinItVersion2 = Value

        local FloatPart = Instance.new("Part", game.Workspace)
        local Path = workspace.ItemSpawns
        
        FloatPart.Name = "FloatPart"
        FloatPart.Size = Vector3.new(6,0.1,6)
        FloatPart.Anchored = true
        FloatPart.Transparency = 1
        
        task.spawn(function()
            while getgenv().DoinItVersion2 == true do wait(0.001)
                pcall(function()
                    FloatPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,-3.05,0);
                end)
            end
        end)
        task.spawn(function()
                while getgenv().DoinItVersion2 == true do wait(0.001)
                    pcall(function()
                    for i,v in pairs(Path:GetDescendants()) do
                        if v.Parent:IsA("MeshPart") and v.Parent.Position then
                            game.Players.LocalPlayer.Character:MoveTo(v.Parent:IsA("MeshPart") and v.Parent.Position);
                            for i,v in pairs(Path:GetDescendants()) do
                                if v:IsA("ProximityPrompt") then
                                    fireproximityprompt(v, 0);
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end);

end

--// 🟢 Murim Cultivation \\--
if game.PlaceId == Supported.Murim_Cultivation then
    task.spawn(function()
        wait(3);
        Notif:Notification("Game Detected ⚠️", " Murim Cultivation  🔥", "GothamSemibold", "Gotham", 2.5);
    end)

    --// Main Pages \\--
    local SecondPage = MainUI.AddPage("Soon | 1");
    local BackupPage = MainUI.AddPage("Soon | 2");
    local SecondAndHalfPage = MainUI.AddPage("Soon | 3");
    local ThirdPage = MainUI.AddPage("Soon | 4");
    local FourthPage = MainUI.AddPage("Soon | 5");

    -- Soon!~
end

local Settings = MainUI.AddPage("Settings");
local SettingsLabel = Settings.AddLabel("Settings  ⚙️");
local SettingsToggle = Settings.AddToggle("Fps Booster  📈", true, function(Value)
    getgenv().Fps = Value

    if getgenv().Fps == true then
        setfpscap(math.huge); -- Fun fact: your eyes are stuck at 60 fps ;)
    else
        setfpscap(60);
    end
end)


local SettingsLabel = Settings.AddLabel("Server  🖥️");

local SettingsButton = Settings.AddButton("Rejoin", function()
    task.spawn(function()
        Notif:Notification("Resonance 💀", 'Rejoining...', "GothamSemibold", "Gotham", 0.5);
    end);
    local TeleportService = game:GetService("TeleportService");
    local Players = game:GetService("Players");
    if (#Players:GetPlayers() == 1) then
        game:GetService("Players").LocalPlayer:Kick();
        TeleportService:Teleport(game.PlaceId);
    else
        TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, Players:GetPlayers()[1]);
    end
end);

local SettingsButton = Settings.AddButton("Server Hop", function()
    task.spawn(function()
        Notif:Notification("Resonance 💀", 'Hopping...', "GothamSemibold", "Gotham", 0.5);
    end);
    -- Got from https://robloxscripts.com
    local Player = game.Players.LocalPlayer    
    local Http = game:GetService("HttpService")
    local TPS = game:GetService("TeleportService")
    local Api = "https://games.roblox.com/v1/games/"
    
    local _place,_id = game.PlaceId, game.JobId
    local _servers = Api.._place.."/servers/Public?sortOrder=Desc&limit=100"
    function ListServers(cursor)
       local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
       return Http:JSONDecode(Raw)
    end
    
    local Next; repeat
       local Servers = ListServers(Next)
       for i,v in next, Servers.data do
           if v.playing < v.maxPlayers and v.id ~= _id then
               local s,r = pcall(TPS.TeleportToPlaceInstance,TPS,_place,v.id,Player)
               if s then break end
           end
       end
       
       Next = Servers.nextPageCursor
    until not Next
end);


local SettingsButton = Settings.AddButton("Low Server Hop", function()
    task.spawn(function()
        Notif:Notification("Resonance 💀", 'Hopping...', "GothamSemibold", "Gotham", 0.5);
    end);
    -- Got from https://robloxscripts.com
    local Http = game:GetService("HttpService")
    local TPS = game:GetService("TeleportService")
    local Api = "https://games.roblox.com/v1/games/"
    
    local _place = game.PlaceId
    local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
    function ListServers(cursor)
       local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
       return Http:JSONDecode(Raw)
    end
    
    local Server, Next; repeat
       local Servers = ListServers(Next)
       Server = Servers.data[1]
       Next = Servers.nextPageCursor
    until Server
    
    TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
end);
