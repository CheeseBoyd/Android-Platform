-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

--Declaration of variables

local menuGroup = display.newGroup()
local gridGroup = display.newGroup()
local alertGroup = display.newGroup()
local _W = display.contentWidth / 2
local _H = display.contentHeight / 2
local numOfRows = 3
local table = {}

function menuDisplay(menuGroup)
	
	local localGroup = display.newGroup()

	--creates the main menu background
	local background = display.newImage("MainMenu.png")
	local StartButton = display.newImage("StartButton.png")
	StartButton.x = _W; StartButton.y = _H
	StartButton:scale(0.5,0.5)
	localGroup:insert(background)
	localGroup:insert(StartButton)

	return menuGroup:insert(localGroup)

end
--Will run the start menu
menuDisplay(menuGroup)



--will return gridGroup with a modifyable grid
	
function buttonDisplay()
	menuGroup:removeSelf()
	menuGroup = nil



	local background = display.newImage("MainMenu.png")
	local _W = display.contentWidth / 2
	local _H = display.contentHeight / 2
	
	--BLOCKS HERE

	
	--middle
	local block_1a = display.newImage("StateNull.png")
	block_1a.x = _W; block_1a.y = _H
	block_1a:scale(0.5,0.5)

	local block_2a = display.newImage("StateNull.png")
	block_2a.x = _W + 80; block_2a.y = _H
	block_2a:scale(0.5,0.5)

	local block_3a = display.newImage("StateNull.png")
	block_3a.x = _W - 80; block_3a.y = _H
	block_3a:scale(0.5,0.5)

	
	--bottom
	local block_1b = display.newImage("StateNull.png")
	block_1b.x = _W; block_1b.y = _H + 80
	block_1b:scale(0.5,0.5)

	local block_2b = display.newImage("StateNull.png")
	block_2b.x = _W + 80; block_2b.y = _H + 80
	block_2b:scale(0.5,0.5)

	local block_3b = display.newImage("StateNull.png")
	block_3b.x = _W - 80; block_3b.y = _H + 80
	block_3b:scale(0.5,0.5)

	
	--top
	local block_1c = display.newImage("StateNull.png")
	block_1c.x = _W; block_1c.y = _H - 80
	block_1c:scale(0.5,0.5)

	local block_2c = display.newImage("StateNull.png")
	block_2c.x = _W + 80; block_2c.y = _H - 80
	block_2c:scale(0.5,0.5)

	local block_3c = display.newImage("StateNull.png")
	block_3c.x = _W - 80; block_3c.y = _H - 80
	block_3c:scale(0.5,0.5)

	table = 
	{
		[1] = {block_3c, block_1c, block_2c},
		[2] = {block_3a, block_1a, block_2a},
		[3] = {block_3b, block_1b, block_2b}
	}



	return table

end


menuGroup:addEventListener("tap",buttonDisplay)




--[[

###############################################
######## Makes the buttons functional #########


	local globalCounter = 2

local _W = display.contentWidth / 2
local _H = display.contentHeight / 2
--BLOCKS 
local block_1a = display.newImage("StateNull.png")
block_1a.x = _W; block_1a.y = _H
block_1a:scale(0.5,0.5)

local block_2a = display.newImage("StateNull.png")
block_2a.x = _W + 80; block_2a.y = _H
block_2a:scale(0.5,0.5)

local block_3a = display.newImage("StateNull.png")
block_3a.x = _W - 80; block_3a.y = _H
block_3a:scale(0.5,0.5)

--MARK

local block_1b = display.newImage("StateNull.png")
block_1b.x = _W; block_1b.y = _H + 80
block_1b:scale(0.5,0.5)

local block_2b = display.newImage("StateNull.png")
block_2b.x = _W + 80; block_2b.y = _H + 80
block_2b:scale(0.5,0.5)

local block_3b = display.newImage("StateNull.png")
block_3b.x = _W - 80; block_3b.y = _H + 80
block_3b:scale(0.5,0.5)

--MARK

local block_1c = display.newImage("StateNull.png")
block_1c.x = _W; block_1c.y = _H - 80
block_1c:scale(0.5,0.5)

local block_2c = display.newImage("StateNull.png")
block_2c.x = _W + 80; block_2c.y = _H - 80
block_2c:scale(0.5,0.5)

local block_3c = display.newImage("StateNull.png")
block_3c.x = _W - 80; block_3c.y = _H - 80
block_3c:scale(0.5,0.5)


local table = 
	{
		[1] = {block_3c, block_1c, block_2c},
		[2] = {block_3a, block_1a, block_2a},
		[3] = {block_3b, block_1b, block_2b}
	}

--A function that will change blocks to x's or o's

table[1][1]:addEventListener("tap", function ( ... )
	globalCounter = globalCounter + 1
	if globalCounter % 2 ~= 0 then
	table[1][1] = display.newImage("StateX.png")
	table[1][1].x = _W - 80; table[1][1].y = _H - 80
	table[1][1]:scale(0.5,0.5)
	else 
		table[1][1] = display.newImage("StateO.png")
		table[1][1].x = _W - 80; table[1][1].y = _H - 80
		table[1][1]:scale(0.5,0.5)
	end
end)

table[1][2]:addEventListener("tap", function ( ... )
	globalCounter = globalCounter + 1
	if globalCounter % 2 ~= 0 then
	table[1][2] = display.newImage("StateX.png")
	table[1][2].x = _W; table[1][2].y = _H - 80
	table[1][2]:scale(0.5,0.5)
	else

		table[1][2] = display.newImage("StateO.png")
		table[1][2].x = _W; table[1][2].y = _H - 80
		table[1][2]:scale(0.5,0.5)
	end
end)

table[1][3]:addEventListener("tap", function ( ... )
	globalCounter = globalCounter + 1
	if globalCounter % 2 ~= 0 then
	table[1][3] = display.newImage("StateX.png")
	table[1][3].x = _W + 80; table[1][3].y = _H - 80
	table[1][3]:scale(0.5,0.5)
	else
		
		table[1][3] = display.newImage("StateO.png")
		table[1][3].x = _W + 80; table[1][3].y = _H - 80
		table[1][3]:scale(0.5,0.5)
	end
end)


table[2][1]:addEventListener("tap", function ( ... )
	globalCounter = globalCounter + 1
	if globalCounter % 2 ~= 0 then
	table[2][1] = display.newImage("StateX.png")
	table[2][1].x = _W - 80; table[2][1].y = _H
	table[2][1]:scale(0.5,0.5)
	else
		
		table[2][1] = display.newImage("StateO.png")
		table[2][1].x = _W - 80; table[2][1].y = _H
		table[2][1]:scale(0.5,0.5)
	end
end)

table[2][2]:addEventListener("tap", function ( ... )
	globalCounter = globalCounter + 1
	if globalCounter % 2 ~= 0 then
	table[2][2] = display.newImage("StateX.png")
	table[2][2].x = _W; table[2][2].y = _H
	table[2][2]:scale(0.5,0.5)
	else
		
		table[2][2] = display.newImage("StateO.png")
		table[2][2].x = _W; table[2][2].y = _H
		table[2][2]:scale(0.5,0.5)
	end
end)

table[2][3]:addEventListener("tap", function ( ... )
	globalCounter = globalCounter + 1
	if globalCounter % 2 ~= 0 then
	table[2][3] = display.newImage("StateX.png")
	table[2][3].x = _W + 80; table[2][3].y = _H
	table[2][3]:scale(0.5,0.5)
	else
		
		table[2][3] = display.newImage("StateO.png")
		table[2][3].x = _W + 80; table[2][3].y = _H
		table[2][3]:scale(0.5,0.5)
	end
end)


table[3][1]:addEventListener("tap", function ( ... )
	globalCounter = globalCounter + 1
	if globalCounter % 2 ~= 0 then
	table[3][1] = display.newImage("StateX.png")
	table[3][1].x = _W - 80; table[3][1].y = _H + 80
	table[3][1]:scale(0.5,0.5)
	else
		
		table[3][1] = display.newImage("StateO.png")
		table[3][1].x = _W - 80; table[3][1].y = _H + 80
		table[3][1]:scale(0.5,0.5)
	end
end)

table[3][2]:addEventListener("tap", function ( ... )
	globalCounter = globalCounter + 1
	if globalCounter % 2 ~= 0 then
	table[3][2] = display.newImage("StateX.png")
	table[3][2].x = _W; table[3][2].y = _H + 80
	table[3][2]:scale(0.5,0.5)
	else
		
		table[3][2] = display.newImage("StateO.png")
		table[3][2].x = _W ; table[3][2].y = _H + 80
		table[3][2]:scale(0.5,0.5)
	end
end)

table[3][3]:addEventListener("tap", function ( ... )
	globalCounter = globalCounter + 1
	if globalCounter % 2 ~= 0 then
	table[3][3] = display.newImage("StateX.png")
	table[3][3].x = _W + 80; table[3][3].y = _H + 80
	table[3][3]:scale(0.5,0.5)
	else
		
		table[3][3] = display.newImage("StateO.png")
		table[3][3].x = _W + 80; table[3][3].y = _H + 80
		table[3][3]:scale(0.5,0.5)
	end
end)



	]]

--robot will loook at the table if bool is true
--robot will select it's type. P1 or P2
--robot will select any grid with the value of zero
--robot choice will remove event listenr to that box
--
