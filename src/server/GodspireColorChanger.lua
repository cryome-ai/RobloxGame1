local planet = workspace.Planets.Godspire

local colors = {
	Color3.fromRGB(255, 255, 255),
	Color3.fromRGB(0, 0, 0),
	}

local currentIndex = 1
local steps = 60 -- higher = smoother transition
local waitTime = 0.05-- time between each step

while true do
	local nextIndex = (currentIndex % #colors) + 1
	local fromColor = colors[currentIndex]
	local toColor = colors[nextIndex]

	for i = 1, steps do
		local alpha = i / steps
		planet.Color = fromColor:Lerp(toColor, alpha)
		task.wait(waitTime)
	end

	currentIndex = nextIndex
end