-- PlanetMovement Script
-- Put all your planets in a folder called "Planets" in Workspace

local planets = workspace:WaitForChild("Planets"):GetChildren()

for _, planet in ipairs(planets) do
	local root = planet:IsA("Model") and planet.PrimaryPart or planet
	local baseY = root.Position.Y

	task.spawn(function()
		local t = 0
		while true do
			t = t + 0.05
			local newCFrame = CFrame.new(root.Position.X, baseY + math.sin(t) * 0.5, root.Position.Z)
				* CFrame.Angles(0, math.rad(t * 10), 0)
			if planet:IsA("Model") then
				planet:SetPrimaryPartCFrame(newCFrame)
			else
				planet.CFrame = newCFrame
			end
			task.wait(0.03)
		end
	end)
end