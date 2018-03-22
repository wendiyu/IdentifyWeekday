-----------------------------------------------------------------------------------------
--
-- main.lua
--
--Created by: Wendi Yu
-- Created on: Mar 2018
-- 
--Indentify weekday
-----------------------------------------------------------------------------------------

local answer = display.newText( "", 1000, 1150, native.systemFont, 100 )

local instruction = display.newText(" Type of day ", display.contentCenterX, display.contentCenterY - 300, native.systemFont, 100)
local instructionTextField = native.newTextField( display.contentCenterX , display.contentCenterY , 650, 150)
instructionTextField.id = "day type"

local enterButton = display.newImageRect("./assets/sprites/enterButton.png", 500, 157 )
enterButton.x = display.contentCenterX + 600
enterButton.y = display.contentCenterY + 1
enterButton.id = "enter button"

local function typeOfDay( event )
	-- body
	local typeday = instructionTextField.text

	if typeday == "Saturday" then
		answer.text = ("It is weekend !")
	elseif typeday == "Sunday" then
		 answer.text = ("It is weekend !")
	else answer.text =("It is not weekend, it is weekday !")
	end


end

enterButton:addEventListener("touch",typeOfDay)