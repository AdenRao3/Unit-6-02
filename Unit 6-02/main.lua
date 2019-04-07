-----------------------------------------------------------------------------------------
--
-- Created by: Aden Rao
-- Created on: April 7, 2019
--
-- This program lets a user enter a number and it tells them if the number is positive or negative.
--
-----------------------------------------------------------------------------------------

-- Hides status bar
--------------
display.setStatusBar(display.HiddenStatusBar) 
--------------

-- Background colour
-----------
display.setDefault( "background", 0/255, 255/255, 246/255 )
-----------

-- Title image, enter button and the text field
----------------
local title = display.newImageRect( "assets/title.png", 300, 500 )
title.x = display.contentCenterX
title.y = display.contentCenterY - 25

local calculateButton = display.newImageRect( "assets/enterbutton.png", 170, 170 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY + 100
calculateButton.id = "calculate button"

answerAsNumberField = native.newTextField( display.contentCenterX, display.contentCenterY + 220, 225, 40 )
answerAsNumberField.id = "Answer textField"
-----------------

-- Text telling user to enter a number either negative or positive
---------------
responseText = display.newText( "   Enter a number \n   either negative \n      or positive", display.contentCenterX, 185, native.systemFont, 40 )
responseText:setFillColor( 0, 0, 0 )


local function calculateButtonTouch( event )

local answerAsNumber = tonumber(answerAsNumberField.text)

if answerAsNumber < 0 then
    responseText.text = "Negative Number"

else 
	responseText.text = "Positive Number"
end

if answerAsNumber == 0 then
	responseText.text = "Zero Is Neutral"
end
end

calculateButton:addEventListener( "touch", calculateButtonTouch )