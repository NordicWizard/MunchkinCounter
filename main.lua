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

local function PlayerLevelMath(n)
	-- display.remove(playerLevel)
	if playerLevel >= 1 then
		playerLevel = n + playerLevel
	else
		playerLevel = 1
	end
end

local function PlayerItemMath(n)
	if playerItem >= 0 then
		playerItem = n + playerItem
	else
		playerItem = 0
	end
end

local function MonsterLevelMath(n)
	if monsterLevel >= 0 then
		monsterLevel = n + monsterLevel
	else
		monsterLevel = 0
	end
end

-----------------------------------------------------------------------------------------
-- Player Level Buttons
-----------------------------------------------------------------------------------------

local uparrowPLevel = widget.newButton {
	default = "assets/graphics/uparrow.png",
	width = 25,
	height = 25,
	onRelease = PlayerLevelMath(1)
}
uparrowPLevel.x = display.contentWidth * .08
uparrowPLevel.y = display.contentHeight * .45

local downarrowPLevel = widget.newButton {
	default = "assets/graphics/downarrow.png",
	width = 25,
	height = 25,
	onRelease = PlayerLevelMath(-1)
}
downarrowPLevel.x = display.contentWidth * .08
downarrowPLevel.y = display.contentHeight * .55

-- Player Item Buttons
local uparrowPItem = widget.newButton {
	default = "assets/graphics/uparrow.png",
	width = 25,
	height = 25,
	onRelease = PlayerItemMath(1)
}
uparrowPItem.x = display.contentWidth * .32
uparrowPItem.y = display.contentHeight * .45

local downarrowPItem = widget.newButton {
	default = "assets/graphics/downarrow.png",
	width = 25,
	height = 25,
	onRelease = PlayerItemMath(-1)
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
	onRelease = MonsterLevelMath(1)
}
uparrowMLevel1.x = display.contentWidth * .82
uparrowMLevel1.y = display.contentHeight * .45

local downarrowMLevel1 = widget.newButton {
	default = "assets/graphics/downarrow.png",
	width = 25,
	height = 25,
	onRelease = MonsterLevelMath(-1)
}
downarrowMLevel1.x = display.contentWidth * .82
downarrowMLevel1.y = display.contentHeight * .55

-- +5
local uparrowMLevel5 = widget.newButton {
	default = "assets/graphics/uparrow.png",
	width = 25,
	height = 25,
	onRelease = MonsterLevelMath(5)
}
uparrowMLevel5.x = display.contentWidth * .9
uparrowMLevel5.y = display.contentHeight * .45

local downarrowMLevel5 = widget.newButton {
	default = "assets/graphics/downarrow.png",
	width = 25,
	height = 25,
	onRelease = MonsterLevelMath(-5)
}
downarrowMLevel5.x = display.contentWidth * .9
downarrowMLevel5.y = display.contentHeight * .55

-- +10
local uparrowMLevel10 = widget.newButton {
	default = "assets/graphics/uparrow.png",
	width = 25,
	height = 25,
	onRelease = MonsterLevelMath(10)
}
uparrowMLevel10.x = display.contentWidth * .98
uparrowMLevel10.y = display.contentHeight * .45

local downarrowMLevel10 = widget.newButton {
	default = "assets/graphics/downarrow.png",
	width = 25,
	height = 25,
	onRelease = MonsterLevelMath(-10)
}
downarrowMLevel10.x = display.contentWidth * .98
downarrowMLevel10.y = display.contentHeight * .55
