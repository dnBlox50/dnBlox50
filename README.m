local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/kav"))()
local Window = Library.CreateLib("🍕  SIMULADOR DE ALIMENTAÇÃO 🍕", "BlueTheme")
local Tab = Window:NewTab("Auto-Farm")
local Section = Tab:NewSection("Normal Function") 

eggs Selecionados = ""
eggs = {}
for i,v in pairs(game:GetService("ReplicatedStorage").Eggs:GetChildren()) do
    table.insert(Eggs,v.Name)
end
Section:NewToggle("Comer automaticamente", "XXX", function(bool)
_G.d = bool
while _G.d do wait()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
      if v.Name == "swing" then
      game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
    end
    end
game:GetService'VirtualUser':Button1Down(Vector2.new(1,1))
end
end)
Section:NewToggle("vender automáticamente", "XXX", function(bool) 

_G.x = bool 

while _G.x do wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(16.686979293823, 11.525447845459, -6.6648082733154) -- Change this teleport to island if u want
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-25.561155319214, -1.3697438240051, -6.9260401725769)
wait(2)
end
end) 

local Tab = Window:NewTab("Auto-Buy")
local Section = Tab:NewSection("AutoBuy Function")
Section:NewToggle("auto comprar comida", "XXX", function(bool)
_G.z = bool 

while _G.z do wait()
    -- Auto comprar Comida 

local args = {
    [1] = "Bats"
} 

game:GetService("ReplicatedStorage").Knit.Services.ShopService.RE.buyAll:FireServer(unpack(args)) 

    end
end)
Section:NewToggle("🧬Auto Comprar DNA🧬", "XXX", function(bool)
_G.f = bool 

while _G.f do wait()
-- 🧬Auto Comprar DNA🧬 

local args = {
    [1] = "DNA"
} 

game:GetService("ReplicatedStorage").Knit.Services.ShopService.RE.buyAll:FireServer(unpack(args)) 

    end
end)
local Tab = Window:NewTab("🥚Auto-Egg🥚")
local Section = Tab:NewSection("Egg Function")
Section:NewDropdown("eggs Selecionados", "DropdownInf", Eggs, function(dd)
    SelectedEggs = dd
end) 

Section:NewToggle("🧬Auto Comprar DNA🧬", "XXX", function(bool)
    _G.k = bool
    while _G.k do wait()
-- Script criado por ( DN_Blox50 ) 

local args = {
    [1] = SelectedEggs
} 

game:GetService("ReplicatedStorage").Knit.Services.EggService.RF.buy1Egg:InvokeServer(unpack(args))
end
end)
local Tab = Window:NewTab("MISC")
local Section = Tab:NewSection("MISC Function")
Section:NewToggle("Anti AFK", "XXX", function(bool)
    _G.t = bool
    while _G.t do wait()
        local bb=game:service'VirtualUser'
            bb:CaptureController()
            bb:ClickButton2(Vector2.new())
    end
end) 

local Tab = Window:NewTab("Créditos")
local Section = Tab:NewSection("Créditos")
Section:NewButton("Créditos", "Clipboard", function()
setclipboard("discord")
end)
