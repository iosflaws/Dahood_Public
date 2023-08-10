
_G.VeloBasedExploitsArentDesync = true 
_G.mjzt = true

for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("Script") and v.Name ~= "Health" and v.Name ~= "Sound" and v:FindFirstChild("LocalScript") then
        v:Destroy()
    end
end


game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
    repeat
        wait()
    until game.Players.LocalPlayer.Character
    char.ChildAdded:Connect(function(child)
        if child:IsA("Script") then 
            wait(0.25)
            if child:FindFirstChild("LocalScript") then
                child.LocalScript:FireServer()
            end
        end
    end)
end)

local idk = game.Players.LocalPlayer.Character.HumanoidRootPart
local whatt = game:GetService("Players").LocalPlayer:GetMouse()



game:GetService("RunService").heartbeat:Connect(function()
        if _G.VeloBasedExploitsArentDesync == true then
        local LOL = idk.Velocity
    idk.CFrame = idk.CFrame * CFrame.Angles(0,0.001,0)
    idk.Velocity = Vector3.new(9e9,9e9,9e9)--- AssemblyLinearVelocity has been Patched on Byfron versions of the Game, so to combat it, we set the Velocity to 9000000000 (9e9)
    game.RunService.RenderStepped:Wait()
    idk.Velocity = LOL
    end 
end)


game:GetService("RunService").heartbeat:Connect(function()
        if _G.mjzt == true then
        local LOL = idk.Velocity
    idk.CFrame = idk.CFrame * CFrame.Angles(0,0.0001,0)
    idk.AssemblyLinearVelocity = Vector3.new(math.random(3000),math.random(3000),math.random(3000))
    game.RunService.RenderStepped:Wait()
    idk.Velocity = LOL
    end 
end)

wait(0.65)
print("Random Velocity Enabled.")
print("Made by mazt#7384")
_G.VeloBasedExploitsArentDesync = false 
