--------------------------------------------------------------------------------
--                                                                            --
-- Initial placements and start values.                                       --
--                                                                            --
--------------------------------------------------------------------------------

local stormCount = 0
local blueCount = 0
local blackCount = 0
local redCount = 0
local startY = 0
local endY = 0

local stormX = display.contentWidth/5
local stormY = display.contentCenterY

local blueX = display.contentWidth*2/5
local blueY = display.contentCenterY

local blackX = display.contentWidth*3/5
local blackY = display.contentCenterY

local redX = display.contentWidth*4/5
local redY = display.contentCenterY

local textOffset = 20 -- Bumps the text over so it an the icon are even under the arrows.
local arrowOffset = 60 -- Bump the arrows up/down from center.

--------------------------------------------------------------------------------
--                                                                            --
-- Make the background white for now.                                         --
--                                                                            --
--------------------------------------------------------------------------------
local background = display.newRect( display.contentCenterX, display.contentCenterY, display.contentWidth, display.contentHeight )
background:setFillColor( unpack( { 1,1,1 } ) )

--------------------------------------------------------------------------------
--                                                                            --
-- Make the numbers.                                                          --
--                                                                            --
--------------------------------------------------------------------------------
local stormTextOptions = 
{
    --parent = textGroup,
    text = stormCount,     
    x = stormX + textOffset,
    y = stormY,
    font = native.systemFontBold,   
    fontSize = 24,
    align = "right"  --new alignment parameter
}

local stormText = display.newText( stormTextOptions )
stormText:setFillColor( 1, 0, 0 )

local blueTextOptions = 
{
    --parent = textGroup,
    text = blueCount,     
    x = blueX + textOffset,
    y = blueY,
    font = native.systemFontBold,   
    fontSize = 24,
    align = "right"  --new alignment parameter
}

local blueText = display.newText( blueTextOptions )
blueText:setFillColor( 0, 0, 1 )

local blackTextOptions = 
{
    --parent = textGroup,
    text = blackCount,     
    x = blackX + textOffset,
    y = blackY,
    font = native.systemFontBold,   
    fontSize = 24,
    align = "right"  --new alignment parameter
}

local blackText = display.newText( blackTextOptions )
blackText:setFillColor( 0, 0, 0 )

local redTextOptions = 
{
    --parent = textGroup,
    text = redCount,     
    x = redX + textOffset,
    y = redY,
    font = native.systemFontBold,   
    fontSize = 24,
    align = "right"  --new alignment parameter
}

local redText = display.newText( redTextOptions )
redText:setFillColor( 1, 0, 0 )

--------------------------------------------------------------------------------
--                                                                            --
-- Up and down arrows.                                                        --
--                                                                            --
--------------------------------------------------------------------------------
local stormUpRect = display.newRect( stormX, stormY - 100, 100, 150 )
stormUpRect:setFillColor( black )
stormUpRect.alpha = 0.01

local stormUpArrow = display.newImageRect( "img/arrow.png", 40, 40 )
stormUpArrow:setFillColor( unpack{ 0.95, 0.95, 0.95 } )
stormUpArrow.x = stormX
stormUpArrow.y = stormY - arrowOffset

local stormDownRect = display.newRect( stormX, stormY + 100, 100, 150 )
stormDownRect:setFillColor( black )
stormDownRect.alpha = 0.01

local stormDownArrow = display.newImageRect( "img/arrow.png", 40, 40 )
stormDownArrow:setFillColor( unpack{ 0.95, 0.95, 0.95 } )
stormDownArrow.rotation = 180
stormDownArrow.x = stormX
stormDownArrow.y = stormY + arrowOffset

local blueUpRect = display.newRect( blueX, blueY - 100, 100, 150 )
blueUpRect:setFillColor( black )
blueUpRect.alpha = 0.01

local blueUpArrow = display.newImageRect( "img/arrow.png", 40, 40 )
blueUpArrow:setFillColor( unpack{ 0.95, 0.95, 0.95 } )
blueUpArrow.x = blueX
blueUpArrow.y = blueY - arrowOffset

local blueDownRect = display.newRect( blueX, blueY + 100, 100, 150 )
blueDownRect:setFillColor( black )
blueDownRect.alpha = 0.01

local blueDownArrow = display.newImageRect( "img/arrow.png", 40, 40 )
blueDownArrow:setFillColor( unpack{ 0.95, 0.95, 0.95 } )
blueDownArrow.rotation = 180
blueDownArrow.x = blueX
blueDownArrow.y = blueY  + arrowOffset

local blackUpRect = display.newRect( blackX, blackY - 100, 100, 150 )
blackUpRect:setFillColor( black )
blackUpRect.alpha = 0.01

local blackUpArrow = display.newImageRect( "img/arrow.png", 40, 40 )
blackUpArrow:setFillColor( unpack{ 0.95, 0.95, 0.95 } )
blackUpArrow.x = blackX
blackUpArrow.y = blackY - arrowOffset

local blackDownRect = display.newRect( blackX, blackY + 100, 100, 150 )
blackDownRect:setFillColor( black )
blackDownRect.alpha = 0.01

local blackDownArrow = display.newImageRect( "img/arrow.png", 40, 40 )
blackDownArrow:setFillColor( unpack{ 0.95, 0.95, 0.95 } )
blackDownArrow.rotation = 180
blackDownArrow.x = blackX
blackDownArrow.y = blackY  + arrowOffset

local redUpRect = display.newRect( redX, redY - 100, 100, 150 )
redUpRect:setFillColor( black )
redUpRect.alpha = 0.01

local redUpArrow = display.newImageRect( "img/arrow.png", 40, 40 )
redUpArrow:setFillColor( unpack{ 0.95, 0.95, 0.95 } )
redUpArrow.x = redX
redUpArrow.y = redY - arrowOffset

local redDownRect = display.newRect( redX, redY + 100, 100, 150 )
redDownRect:setFillColor( black )
redDownRect.alpha = 0.01

local redDownArrow = display.newImageRect( "img/arrow.png", 40, 40 )
redDownArrow:setFillColor( unpack{ 0.95, 0.95, 0.95 } )
redDownArrow.rotation = 180
redDownArrow.x = redX
redDownArrow.y = redY + arrowOffset

--------------------------------------------------------------------------------
--                                                                            --
-- Symbols.                                                                   --
--                                                                            --
--------------------------------------------------------------------------------
local stormSymbol = display.newImageRect( "img/izzet.png", 30, 30 )
stormSymbol.x = stormX - textOffset
stormSymbol.y = stormY

local blueSymbol = display.newImageRect( "img/blue_mana.png", 30, 30 )
blueSymbol.x = blueX - textOffset
blueSymbol.y = blueY

local blackSymbol = display.newImageRect( "img/black_mana.png", 30, 30 )
blackSymbol.x = blackX - textOffset
blackSymbol.y = blackY

local redSymbol = display.newImageRect( "img/red_mana.png", 30, 30 )
redSymbol.x = redX - textOffset
redSymbol.y = redY

--------------------------------------------------------------------------------
--                                                                            --
-- Reset Button.                                                              --
--                                                                            --
--------------------------------------------------------------------------------
local resetButton = display.newImageRect( "img/undo.png", 40, 40 )
resetButton.alpha = 0.2
resetButton.touch = false
resetButton.x = display.contentWidth - 25
resetButton.y = display.contentHeight - 25

--------------------------------------------------------------------------------
--                                                                            --
-- Button Event Listeners.                                                    --
--                                                                            --
--------------------------------------------------------------------------------

--- Change the storm count.
-- @tparam number d The amount to add or subtract from the current count.
local function changeStormCount( d )
    stormCount = stormCount + d
    stormText:removeSelf()

    local stormTextOptions = 
    {
        text = stormCount,     
        x = stormX + textOffset,
        y = stormY,
        font = native.systemFontBold,   
        fontSize = 24,
        align = "right"
    }
    stormText = display.newText( stormTextOptions )
    stormText:setFillColor( 1, 0, 0 )
end

--- Change the blue mana count.
-- @tparam number d The amount to add or subtract from the current count.
local function changeBlueCount( d )
    blueCount = blueCount + d
    blueText:removeSelf()

    local blueTextOptions = 
    {
        text = blueCount,     
        x = blueX + textOffset,
        y = blueY,
        font = native.systemFontBold,   
        fontSize = 24,
        align = "right"
    }
    blueText = display.newText( blueTextOptions )
    blueText:setFillColor( 0, 0, 1 )
end

--- Change the blue mana count.
-- @tparam number d The amount to add or subtract from the current count.
local function changeBlackCount( d )
    blackCount = blackCount + d
    blackText:removeSelf()

    local blackTextOptions = 
    {
        text = blackCount,     
        x = blackX + textOffset,
        y = blackY,
        font = native.systemFontBold,   
        fontSize = 24,
        align = "right"
    }
    blackText = display.newText( blackTextOptions )
    blackText:setFillColor( 0, 0, 0 )
end

--- Change the red mana count.
-- @tparam number d The amount to add or subtract from the current count.
local function changeRedCount( d )
    redCount = redCount + d
    redText:removeSelf()

    local redTextOptions = 
    {
        text = redCount,     
        x = redX + textOffset,
        y = redY,
        font = native.systemFontBold,   
        fontSize = 24,
        align = "right"
    }
    redText = display.newText( redTextOptions )
    redText:setFillColor( 1, 0, 0 )
end

--- Reset all current counts.
-- @tparam event event The touch event fired by Corona.
local function resetTouch( event )
    local phase = event.phase

    if phase == "ended" then
        if resetButton.touch then
            changeStormCount( -stormCount )
            changeRedCount( -redCount )
            changeBlueCount( -blueCount )
            changeBlackCount( -blackCount )

            resetButton.touch = false
            resetButton.alpha = 0.2
        else
            resetButton.touch = true
            resetButton.alpha = 1
        end
    end
end

--- Increase the storm count by 1.
-- @tparam event event The touch event fired by Corona.
local function stormUp( event )
    local phase = event.phase

    if phase == "began" then
        stormUpArrow:setFillColor( unpack{ 0.7, 0.7, 0.7 } )
    elseif phase == "ended" then
        stormUpArrow:setFillColor( unpack{ 0.95, 0.95, 0.95 } )
        changeStormCount( 1 )
    end
end

--- Decrease the storm count by 1.
-- @tparam event event The touch event fired by Corona.
local function stormDown( event )
    local phase = event.phase

    if phase == "began" then
        stormDownArrow:setFillColor( unpack{ 0.7, 0.7, 0.7 } )
    elseif phase == "ended" then
        stormDownArrow:setFillColor( unpack{ 0.95, 0.95, 0.95 } )
        changeStormCount( -1 )
    end
end

--- Increase the blue mana count by 1.
-- @tparam event event The touch event fired by Corona.
local function blueUp( event )
    local phase = event.phase

    if phase == "began" then
        blueUpArrow:setFillColor( unpack{ 0.7, 0.7, 0.7 } )
    elseif phase == "ended" then
        blueUpArrow:setFillColor( unpack{ 0.95, 0.95, 0.95 } )
       changeBlueCount( 1 )
    end
end

--- Decrease the blue mana count by 1.
-- @tparam event event The touch event fired by Corona.
local function blueDown( event )
    local phase = event.phase

    if phase == "began" then
        blueDownArrow:setFillColor( unpack{ 0.7, 0.7, 0.7 } )
    elseif phase == "ended" then
        blueDownArrow:setFillColor( unpack{ 0.95, 0.95, 0.95 } )
        changeBlueCount( -1 )
    end
end

--- Increase the black mana count by 1.
-- @tparam event event The touch event fired by Corona.
local function blackUp( event )
    local phase = event.phase

    if phase == "began" then
        blackUpArrow:setFillColor( unpack{ 0.7, 0.7, 0.7 } )
    elseif phase == "ended" then
        blackUpArrow:setFillColor( unpack{ 0.95, 0.95, 0.95 } )
       changeBlackCount( 1 )
    end
end

--- Decrease the blue mana count by 1.
-- @tparam event event The touch event fired by Corona.
local function blackDown( event )
    local phase = event.phase

    if phase == "began" then
        blackDownArrow:setFillColor( unpack{ 0.7, 0.7, 0.7 } )
    elseif phase == "ended" then
        blackDownArrow:setFillColor( unpack{ 0.95, 0.95, 0.95 } )
        changeBlackCount( -1 )
    end
end

--- Increase the red mana count by 1, or 3 if swiped.
-- @tparam event event The touch event fired by Corona.
local function redUp( event )
    local phase = event.phase

    if phase == "began" then
        startY = event.y
        endY = event.y
        redUpArrow:setFillColor( unpack{ 0.7, 0.7, 0.7 } )
    elseif phase == "moved" then
        endY = event.y
    elseif phase == "ended" then
        redUpArrow:setFillColor( unpack{ 0.95, 0.95, 0.95 } )

        local dy = startY - endY

        if dy > 40 then
            changeRedCount( 3 )
        else 
            changeRedCount( 1 )
        end
    end
end

--- Decrease the red mana count by 1.
-- @tparam event event The touch event fired by Corona.
local function redDown( event )
    local phase = event.phase

    if phase == "began" then
        redDownArrow:setFillColor( unpack{ 0.7, 0.7, 0.7 } )
    elseif phase == "ended" then
        redDownArrow:setFillColor( unpack{ 0.95, 0.95, 0.95 } )
        changeRedCount( -1 )
    end
end

stormUpRect:addEventListener( "touch", stormUp )
stormDownRect:addEventListener( "touch", stormDown )

blueUpRect:addEventListener( "touch", blueUp )
blueDownRect:addEventListener( "touch", blueDown )

blackUpRect:addEventListener( "touch", blackUp )
blackDownRect:addEventListener( "touch", blackDown )

redUpRect:addEventListener( "touch", redUp )
redDownRect:addEventListener( "touch", redDown )

resetButton:addEventListener( "touch", resetTouch )
