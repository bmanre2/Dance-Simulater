x=Instance.new("Tool",game.Players.LocalPlayer.Backpack)
z=Instance.new("Part",x)
z.FormFactor = "Custom"
z.Material = "Metal"
z.Size = Vector3.new(0.5,0.5,1.5)
z.Color = Color3.new(0,0,0)

b=Instance.new("Part",z)
b.Color = Color3.new(1,0,0)
b.FormFactor = "Custom"
b.Material = "Metal"
b.Size = Vector3.new(0.6,0.6,0.6)

x=Instance.new("Weld",b)
x.Part0=z
x.Part1=b
n=Instance.new("Weld",z)
n.Part0=z
n.Part1=game.Players.LocalPlayer.Character["Left Arm"]
n.C0=CFrame.new(0,1,0.5)

tool = x

function click(mouse)
	local explosion = Instance.new("Explosion")
	explosion.Position = mouse.hit.p
	explosion.Parent = game.Workspace
	explosion.BlastRadius = 6
	explosion.BlastPressure = 150000
end

function selected(mouse)
	mouse.Button1Down:connect(function () click(mouse) end)
end

tool.Selected:connect(selected)
