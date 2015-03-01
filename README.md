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



p=Instance.new("Tool",game.Players.LocalPlayer.Backpack)
j=Instance.new("Part",p)
j.FormFactor = "Custom"
j.Material = "Metal"
j.Size = Vector3.new(0.5,0.5,1.5)
j.Color = Color3.new(0,0,0)

q=Instance.new("Part",j)
q.Color = Color3.new(1,0,0)
q.FormFactor = "Custom"
q.Material = "Metal"
q.Size = Vector3.new(0.6,0.6,0.6)

o=Instance.new("Weld",q)
o.Part0=z
o.Part1=b
nh=Instance.new("Weld",q)
nh.Part0=q
nh.Part1=game.Players.LocalPlayer.Character["Right Arm"]
nh.C0=CFrame.new(0,1,0.5)
