-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

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
local PlayerItem = 0
local monsterLevel = 0

-- display level

local displayPlayerLevel = display.newText(playerLevel, 0, 0, "Comic Sans MS", 20)
displayPlayerLevel.x = display.contentWidth * .08
displayPlayerLevel.y = display.contentHeight * .35

local displayPlayerItem = display.newText(PlayerItem, 0, 0, "Comic Sans MS", 20)
displayPlayerItem.x = display.contentWidth * .32
displayPlayerItem.y = display.contentHeight * .35

local displayMonsterLevel = display.newText(monsterLevel, 0, 0, "Comic Sans MS", 20)
displayMonsterLevel.x = display.contentWidth * .9
displayMonsterLevel.y = display.contentHeight * .35
