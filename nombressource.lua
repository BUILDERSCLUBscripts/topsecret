local P=game:GetService("Players")
local function lbl(h)
	local g=Instance.new("BillboardGui",h)
	g.Size=UDim2.new(0,120,0,40)
	g.StudsOffset=Vector3.new(0,2,0)
	g.AlwaysOnTop=true
	local t=Instance.new("TextLabel",g)
	t.BackgroundTransparency=1
	t.Size=UDim2.new(1,0,1,0)
	t.Text="OWNER"
	t.TextScaled=true
	t.Font=Enum.Font.SourceSansBold
	t.TextStrokeTransparency=0
	t.TextColor3=Color3.fromRGB(255,255,0)
	return g
end
local function ch(p)
	local c=p.Character if not c then return end
	local h=c:FindFirstChild("Head") if not h then return end
	h:ClearAllChildren()
	if p.Name=="joelbonny" then lbl(h) end
end
for _,p in pairs(P:GetPlayers())do ch(p)p.CharacterAdded:Connect(ch)end
P.PlayerAdded:Connect(function(p)p.CharacterAdded:Connect(ch)end)
