x=game.Players.LocalPlayer.Character
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
--

	char = game.Players.LocalPlayer.Character
	ra = char:FindFirstChild("Right Arm")
	la = char:FindFirstChild("Left Arm")
	torso = char.Torso
	
	if ra then
		torso["Right Shoulder"].Part0 = nil
		torso["Right Shoulder"].Part1 = nil
		torso["Right Shoulder"].Name = "RSBlank"

		NewRS = Instance.new("Weld", torso)
		NewRS.Name = "Control Right Shoulder"
		
		--ra.Name = "RA"
		ra.TopSurface = "Smooth"
		
		NewRS.Part0 = torso
		NewRS.Part1 = ra
		
		NewRS.C0 = CFrame.new(1.5, .5, 0) * CFrame.Angles(0, math.rad(-20), math.rad(40)) * CFrame.new(0, -.25, 0)
	end
