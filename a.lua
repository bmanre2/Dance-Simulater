x=workspace.Basictality
z=Instance.new("Part",x)
z.FormFactor = "Custom"
z.Material = "Metal"
z.Size = Vector3.new(0.5,0.5,7.5)
z.Color = Color3.new(0,0,0)

n=Instance.new("Weld",z)
n.Part0=z
n.Part1=game.Players.LocalPlayer.Character["Right Arm"]
n.C0=CFrame.new(0,1,3.5)

wed=Instance.new("WedgePart",x)
wed.FormFactor = "Custom"
wed.Size = Vector3.new(0.5,0.5,0.5)
wed.Color = Color3.new(0,0,0)
wed.Material = "Metal"

pa=Instance.new("Part",x)
pa.FormFactor = "Custom"
pa.Size = Vector3.new(0.6,0.1,7.5)
pa.Color = Color3.new(1,0,0)

weld2=Instance.new("Weld",pa)
weld2.Part0=pa
weld2.Part1=z
weld2.C0=CFrame.new(0,0,0)

gr=Instance.new("Part",x)
gr.Size = Vector3.new(0.1,0.1,0.1)
gr.Color = Color3.new(0,0,0)
gr.Material = "Metal"


grw=Instance.new("Weld",gr)
grw.Part0=z
grw.Part1=gr
grw.C0=CFrame.new(0,0,2.5)

weld=Instance.new("Weld",wed)
weld.Part0=z
weld.Part1=wed
weld.C0=CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,0,3.1)

hold=Instance.new("Part",z)
hold.FormFactor = "Custom"
hold.Size = Vector3.new(0.7,0.7,1.5)
hold.Color = Color3.new(0,0,0)
hold.Material = "Metal"

holw=Instance.new("Weld",hold)
holw.Part0=hold
holw.Part1=z
holw.C0=CFrame.new(0,0,-3.7)

function OnTouched(hit)
	blood=Instance.new("Part",hit)
	blood.CFrame=hit.CFrame
	blood.FormFactor = "Custom"
	Instance.new("CylinderMesh",blood)
	blood.BrickColor = BrickColor.new("Bright red")
	blood.Anchored = true


while true do wait()
	blood.Size = Vector3.new(math.random(),0,math.random())
end
end

z.Touched:connect(OnTouched)
