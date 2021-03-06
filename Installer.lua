local HttpService = game:GetService("HttpService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerScriptService = game:GetService("ServerScriptService")

local NewModule = function(name, parent) local _inst = Instance.new("ModuleScript") _inst.Name = name or "Unnamed" _inst.Parent = parent or ReplicatedStorage return _inst end
local NewScript = function(name, parent) local _inst = Instance.new("Script") _inst.Name = name or "Unnamed" _inst.Parent = parent or ServerScriptService return _inst end
local GetAsync = function(path) return HttpService:GetAsync("https://raw.githubusercontent.com/DataIsLoading/AdvancedGroupService/master/" .. path) end
--------------------------------
print("Importing 'GroupService.lua'")
local Online = NewModule("GroupService")
Online.Source = GetAsync("GroupService.lua")

print("Importing 'Example.lua'")
local Example = NewScript("Example")
Example.Source = GetAsync("Example.lua")

print("Imported all Modules.")
