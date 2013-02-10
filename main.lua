-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- required
local widget = require "widget"
-- Title Set up
display.setStatusBar(display.HiddenStatusBar)

local titleText = display.newText("Munchkin Level Counter", 0, 0, "Comic Sans MS", 35)
titleText:setTextColor(255, 255, 255)
titleText.x = display.contentCenterX
titleText.y = titleText.contentHeight * .5

local playerLevelTitle = display.newText("Player Level", 0, 0, "Comic Sans MS", 15)
playerLevelTitle:setTextColor(255, 255, 255)
playerLevelTitle.x = display.contentWidth * .08
playerLevelTitle.y = display.contentHeight * .25

local playerItemTitle = display.newText("Player Items", 0, 0, "Comic Sans MS", 15)
playerItemTitle:setTextColor(255, 255, 255)
playerItemTitle.x = display.contentWidth * .32
playerItemTitle.y = display.contentHeight * .25

local monsterLevelTitle = display.newText("Monster Level", 0, 0, "Comic Sans MS", 15)
monsterLevelTitle:setTextColor(255, 255, 255)
monsterLevelTitle.x = display.contentWidth * .9
monsterLevelTitle.y = display.contentHeight * .25

-- variables

local playerLevel = 1
local playerItem = 0
local monsterLevel = 0

-- display level

local displayPlayerLevel = display.newText(playerLevel, 0, 0, "Comic Sans MS", 20)
displayPlayerLevel.x = display.contentWidth * .08
displayPlayerLevel.y = display.contentHeight * .35

local displayPlayerItem = display.newText(playerItem, 0, 0, "Comic Sans MS", 20)
displayPlayerItem.x = display.contentWidth * .32
displayPlayerItem.y = display.contentHeight * .35

local displayMonsterLevel = display.newText(monsterLevel, 0, 0, "Comic Sans MS", 20)
displayMonsterLevel.x = display.contentWidth * .9
displayMonsterLevel.y = display.contentHeight * .35

-----------------------------------------------------------------------------------------
-- functions
-----------------------------------------------------------------------------------------

local function PlayerLevelPMath()
	display.remove(displayPlayerLevel)
	if playerLevel >= 1 then
		playerLevel = 1 + playerLevel
	else
		playerLevel = 1
	end
	--print(playerLevel)
	displayPlayerLevel = display.newText(playerLevel, 0, 0, "Comic Sans MS", 20)
	displayPlayerLevel.x = display.contentWidth * .08
	displayPlayerLevel.y = display.contentHeight * .35
end

local function PlayerLevelMMath()
	display.remove(displayPlayerLevel)
	if playerLevel > 1 then
		playerLevel = playerLevel - 1
	else
		playerLevel = 1
	end
	--print(playerLevel)
	displayPlayerLevel = display.newText(playerLevel, 0, 0, "Comic Sans MS", 20)
	displayPlayerLevel.x = display.contentWidth * .08
	displayPlayerLevel.y = display.contentHeight * .35
end

local function PlayerItemPMath()
	display.remove(displayPlayerItem)
	if playerItem >= 0 then
		playerItem = 1 + playerItem
	else
		playerItem = 0
	end
	--print(playerItem)
	displayPlayerItem = display.newText(playerItem, 0, 0, "Comic Sans MS", 20)
	displayPlayerItem.x = display.contentWidth * .32
	displayPlayerItem.y = display.contentHeight * .35
end

local function PlayerItemMMath()
	display.remove(displayPlayerItem)
	if playerItem > 0 then
		playerItem = playerItem - 1
	else
		playerItem = 0
	end
	--print(playerItem)
	displayPlayerItem = display.newText(playerItem, 0, 0, "Comic Sans MS", 20)
	displayPlayerItem.x = display.contentWidth * .32
	displayPlayerItem.y = display.contentHeight * .35
end

local function MonsterLevelPONEMath()
	display.remove(displayMonsterLevel)
	if monsterLevel >= 0 then
		monsterLevel = 1 + monsterLevel
	else
		monsterLevel = 0
	end
	--print(monsterLevel)
	displayMonsterLevel = display.newText(monsterLevel, 0, 0, "Comic Sans MS", 20)
	displayMonsterLevel.x = display.contentWidth * .9
	displayMonsterLevel.y = display.contentHeight * .35
end

local function MonsterLevelMONEMath()
	display.remove(displayMonsterLevel)
	if monsterLevel > 0 then
		monsterLevel = monsterLevel - 1
	else
		monsterLevel = 0
	end
	--print(monsterLevel)
	displayMonsterLevel = display.newText(monsterLevel, 0, 0, "Comic Sans MS", 20)
	displayMonsterLevel.x = display.contentWidth * .9
	displayMonsterLevel.y = display.contentHeight * .35
end

local function MonsterLevelPFIVEMath()
	display.remove(displayMonsterLevel)
	if monsterLevel >= 0 then
		monsterLevel = 5 + monsterLevel
	else
		monsterLevel = 0
	end
	print(monsterLevel)
	displayMonsterLevel = display.newText(monsterLevel, 0, 0, "Comic Sans MS", 20)
	displayMonsterLevel.x = display.contentWidth * .9
	displayMonsterLevel.y = display.contentHeight * .35
end

local function MonsterLevelMFIVEMath()
	display.remove(displayMonsterLevel)
	if monsterLevel > 4 then
		monsterLevel = monsterLevel - 5
	else
		monsterLevel = 0
	end
	print(monsterLevel)
	displayMonsterLevel = display.newText(monsterLevel, 0, 0, "Comic Sans MS", 20)
	displayMonsterLevel.x = display.contentWidth * .9
	displayMonsterLevel.y = display.contentHeight * .35
end

local function MonsterLevelPTENMath()
	display.remove(displayMonsterLevel)
	if monsterLevel >= 0 then
		monsterLevel = 10 + monsterLevel
	else
		monsterLevel = 0
	end
	print(monsterLevel)
	displayMonsterLevel = display.newText(monsterLevel, 0, 0, "Comic Sans MS", 20)
	displayMonsterLevel.x = display.contentWidth * .9
	displayMonsterLevel.y = display.contentHeight * .35
end

local function MonsterLevelMTENMath()
	display.remove(displayMonsterLevel)
	if monsterLevel > 9 then
		monsterLevel = monsterLevel - 10
	else
		monsterLevel = 0
	end
	print(monsterLevel)
	displayMonsterLevel = display.newText(monsterLevel, 0, 0, "Comic Sans MS", 20)
	displayMonsterLevel.x = display.contentWidth * .9
	displayMonsterLevel.y = display.contentHeight * .35
end
-----------------------------------------------------------------------------------------
-- Player Level Buttons
-----------------------------------------------------------------------------------------

local uparrowPLevel = widget.newButton {
	default = "assets/graphics/uparrow.png",
	width = 25,
	height = 25,
	onRelease = function()
		PlayerLevelPMath()
	end
}
uparrowPLevel.x = display.contentWidth * .08
uparrowPLevel.y = display.contentHeight * .45

local downarrowPLevel = widget.newButton {
	default = "assets/graphics/downarrow.png",
	width = 25,
	height = 25,
	onRelease = function()
		PlayerLevelMMath()
	end
}
downarrowPLevel.x = display.contentWidth * .08
downarrowPLevel.y = display.contentHeight * .55

-- Player Item Buttons
local uparrowPItem = widget.newButton {
	default = "assets/graphics/uparrow.png",
	width = 25,
	height = 25,
	onRelease = function()
		PlayerItemPMath()
	end
}
uparrowPItem.x = display.contentWidth * .32
uparrowPItem.y = display.contentHeight * .45

local downarrowPItem = widget.newButton {
	default = "assets/graphics/downarrow.png",
	width = 25,
	height = 25,
	onRelease = function()
		PlayerItemMMath()
	end
}
downarrowPItem.x = display.contentWidth * .32
downarrowPItem.y = display.contentHeight * .55

-----------------------------------------------------------------------------------------
-- Monster Buttons
-----------------------------------------------------------------------------------------

-- +1
local uparrowMLevel1 = widget.newButton {
	default = "assets/graphics/uparrow.png",
	width = 25,
	height = 25,
	onRelease = function()
		MonsterLevelPONEMath()
	end
}
uparrowMLevel1.x = display.contentWidth * .82
uparrowMLevel1.y = display.contentHeight * .45

local downarrowMLevel1 = widget.newButton {
	default = "assets/graphics/downarrow.png",
	width = 25,
	height = 25,
	onRelease = function()
		MonsterLevelMONEMath()
	end
}
downarrowMLevel1.x = display.contentWidth * .82
downarrowMLevel1.y = display.contentHeight * .55

-- +5
local uparrowMLevel5 = widget.newButton {
	default = "assets/graphics/uparrow.png",
	width = 25,
	height = 25,
	onRelease = function()
		MonsterLevelPFIVEMath()
	end
}
uparrowMLevel5.x = display.contentWidth * .9
uparrowMLevel5.y = display.contentHeight * .45

local downarrowMLevel5 = widget.newButton {
	default = "assets/graphics/downarrow.png",
	width = 25,
	height = 25,
	onRelease = function()
		MonsterLevelMFIVEMath()
	end
}
downarrowMLevel5.x = display.contentWidth * .9
downarrowMLevel5.y = display.contentHeight * .55

-- +10
local uparrowMLevel10 = widget.newButton {
	default = "assets/graphics/uparrow.png",
	width = 25,
	height = 25,
	onRelease = function()
		MonsterLevelPTENMath()
	end
}
uparrowMLevel10.x = display.contentWidth * .98
uparrowMLevel10.y = display.contentHeight * .45

local downarrowMLevel10 = widget.newButton {
	default = "assets/graphics/downarrow.png",
	width = 25,
	height = 25,
	onRelease = function()
		MonsterLevelMTENMath()
	end
}
downarrowMLevel10.x = display.contentWidth * .98
downarrowMLevel10.y = display.contentHeight * .55
