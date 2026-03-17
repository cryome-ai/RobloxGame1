local planet = workspace.Planets.Prismatica -- change to your part path

local colors = {
	Color3.fromRGB(0, 255, 100),      -- neon green
	Color3.fromRGB(255, 0, 200),      -- neon pink
	Color3.fromRGB(0, 200, 255),      -- electric blue
	Color3.fromRGB(255, 100, 0),      -- orange
	Color3.fromRGB(180, 0, 255),      -- purple
	Color3.fromRGB(255, 220, 0),      -- yellow
	Color3.fromRGB(255, 50, 50),      -- red
	Color3.fromRGB(0, 255, 200),      -- cyan
	Color3.fromRGB(255, 150, 200),    -- soft pink
	Color3.fromRGB(100, 0, 255),      -- deep violet
	Color3.fromRGB(0, 180, 100),      -- emerald
	Color3.fromRGB(255, 80, 0),       -- deep orange
	Color3.fromRGB(0, 100, 255),      -- royal blue
	Color3.fromRGB(200, 255, 0),      -- lime
	Color3.fromRGB(255, 0, 80),       -- hot red
	Color3.fromRGB(0, 255, 255),      -- aqua
	Color3.fromRGB(150, 255, 100),    -- light green
	Color3.fromRGB(255, 200, 50),     -- gold
	Color3.fromRGB(80, 0, 200),       -- indigo
	Color3.fromRGB(255, 120, 180),    -- bubblegum
}

local currentIndex = 1
local steps = 60 -- higher = smoother transition
local waitTime = 0.05 -- time between each step

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