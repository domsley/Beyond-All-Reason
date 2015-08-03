
function widget:GetInfo()
return {
	name    = "Changelog Info",
	desc    = "Leftmouse: scroll down,  Rightmouse: scroll up,  ctrl/shift/alt combi: speedup)",
	author  = "Floris",
	date    = "August 2015",
	license = "Dental flush",
	layer   = -1,
	enabled = true,
}
end

--local show = true

local loadedFontSize = 32
local font = gl.LoadFont(LUAUI_DIRNAME.."Fonts/FreeSansBold.otf", loadedFontSize, 16,2)

local bgcorner = ":n:"..LUAUI_DIRNAME.."Images/bgcorner.png"
local closeButtonTex = ":n:"..LUAUI_DIRNAME.."Images/close.dds"

local changelogFile = io.open(LUAUI_DIRNAME.."changelog.txt", "r")

local bgMargin = 6

local closeButtonSize = 30
local screenHeight = 500-bgMargin-bgMargin
local screenWidth = 1050-bgMargin-bgMargin

local textareaMinLines = 10		-- wont scroll down more, will show at least this amount of lines 

local customScale = 1

local startLine = 1

local vsx,vsy = Spring.GetViewGeometry()
local screenX = (vsx*0.5) - (screenWidth/2)
local screenY = (vsy*0.5) + (screenHeight/2)
  
local spIsGUIHidden = Spring.IsGUIHidden
local showHelp = false

local glColor = gl.Color
local glLineWidth = gl.LineWidth
local glPolygonMode = gl.PolygonMode
local glRect = gl.Rect
local glText = gl.Text
local glShape = gl.Shape
local glGetTextWidth = gl.GetTextWidth
local glGetTextHeight = gl.GetTextHeight

local bgColorMultiplier = 1

local glCreateList = gl.CreateList
local glCallList = gl.CallList
local glDeleteList = gl.DeleteList

local glPopMatrix = gl.PopMatrix
local glPushMatrix = gl.PushMatrix
local glTranslate = gl.Translate
local glScale = gl.Scale

local GL_FILL = GL.FILL
local GL_FRONT_AND_BACK = GL.FRONT_AND_BACK
local GL_LINE_STRIP = GL.LINE_STRIP

local widgetScale = 1
local endPosX = 0.05
local vsx, vsy = Spring.GetViewGeometry()

local versions = {}
local changelogFileLines = {}
local totalChangelogLines = 0

function widget:ViewResize()
  vsx,vsy = Spring.GetViewGeometry()
  screenX = (vsx*0.5) - (screenWidth/2)
  screenY = (vsy*0.5) + (screenHeight/2)
  widgetScale = (0.75 + (vsx*vsy / 7500000)) * customScale
  if changelogList then gl.DeleteList(changelogList) end
  changelogList = gl.CreateList(DrawWindow)
end

local myTeamID = Spring.GetMyTeamID()
local amNewbie = (Spring.GetTeamRulesParam(myTeamID, 'isNewbie') == 1)
local gameStarted = (Spring.GetGameFrame()>0)
function widget:GameStart()
    gameStarted = true
end

-- button
local textSize = 0.75
local textMargin = 0.25
local lineWidth = 0.0625

local posX = 0.35
local posY = 0
local showOnceMore = false		-- used because of GUI shader delay
local buttonGL
local startPosX = posX

function RectRound(px,py,sx,sy,cs, ctl,ctr,cbr,cbl)
	
	--local px,py,sx,sy,cs = math.floor(px),math.floor(py),math.floor(sx),math.floor(sy),math.floor(cs)
	
	gl.Rect(px+cs, py, sx-cs, sy)
	gl.Rect(sx-cs, py+cs, sx, sy-cs)
	gl.Rect(px+cs, py+cs, px, sy-cs)
	
	gl.Texture(bgcorner)
	
	--if py <= 0 or px <= 0 then gl.Texture(false) else gl.Texture(bgcorner) end
	if cbr == nil or cbr == 1 then
		gl.Texture(bgcorner)
		gl.TexRect(px, py+cs, px+cs, py)		-- top left
	else
		gl.Texture(false)
		gl.Rect(px, py+cs, px+cs, py)		-- top left
	end
	
	--if py <= 0 or sx >= vsx then gl.Texture(false) else gl.Texture(bgcorner) end
	if cbl == nil or cbl == 1 then
		gl.Texture(bgcorner)
		gl.TexRect(sx, py+cs, sx-cs, py)		-- top right
	else
		gl.Texture(false)
		gl.Rect(sx, py+cs, sx-cs, py)		-- top right
	end
	
	--if sy >= vsy or px <= 0 then gl.Texture(false) else gl.Texture(bgcorner) end
	if ctl == nil or ctl == 1 then
		gl.Texture(bgcorner)
		gl.TexRect(px, sy-cs, px+cs, sy)		-- bottom left
	else
		gl.Texture(false)
		gl.Rect(px, sy-cs, px+cs, sy)		-- bottom left
	end
	
	--if sy >= vsy or sx >= vsx then gl.Texture(false) else gl.Texture(bgcorner) end
	if ctr == nil or ctr == 1 then
		gl.Texture(bgcorner)
		gl.TexRect(sx, sy-cs, sx-cs, sy)		-- bottom right
	else
		gl.Texture(false)
		gl.Rect(sx, sy-cs, sx-cs, sy)		-- bottom right
	end
	
	gl.Texture(false)
end

function DrawButton()
    glPolygonMode(GL_FRONT_AND_BACK, GL_FILL)
	RectRound(0,0,4.5,1,0.25)
	local vertices = {
		{v = {0, 1, 0}},
		{v = {0, 0, 0}},
		{v = {1, 0, 0}},
	}
	glShape(GL_LINE_STRIP, vertices)
    glText("Changelog", textMargin, textMargin, textSize, "no")
end


local versionOffsetX = 0
local versionOffsetY = 14
local versionFontSize = 16

function DrawWindow()
    local vsx,vsy = Spring.GetViewGeometry()
    local x = screenX --rightwards
    local y = screenY --upwards
	
	-- background
    gl.Color(0,0,0,0.8)
	RectRound(x-bgMargin,y-screenHeight-bgMargin,x+screenWidth+bgMargin,y+24+bgMargin,8, 0,1,1,1)
	-- content area
	gl.Color(0.33,0.33,0.33,0.15)
	RectRound(x,y-screenHeight,x+screenWidth,y+24,6)
	
	-- title background
    local title = "Changelog"
	local titleFontSize = 18
    gl.Color(0,0,0,0.8)
	RectRound(x-bgMargin, y+24+bgMargin, x+(glGetTextWidth(title)*titleFontSize)+27-bgMargin, y+61, 8, 1,1,0,0)
	
	-- title
	font:Begin()
	font:SetTextColor(1,1,1,1)
	font:SetOutlineColor(0,0,0,0.4)
	font:Print(title, x-bgMargin+(titleFontSize*0.75), y+bgMargin+32, titleFontSize, "on")
	
	
	-- version links
	gl.Color(0.72,0.5,0.12,0.3)
	RectRound(x,y-screenHeight,x+70,y+24,6)
	
    gl.Color(1,1,1,1)
	gl.Texture(closeButtonTex)
	gl.TexRect(screenX+screenWidth-closeButtonSize,screenY+24,screenX+screenWidth,screenY+24-closeButtonSize)
	gl.Texture(false)
	
	if changelogFile then
		local lineKey = 1
		local j = 0
		font:SetOutlineColor(0.25,0.2,0,0.3)
		font:SetTextColor(1,0.8,0.1,1)
		while j < 22 do	
			if ((versionFontSize+versionOffsetY)*j)+4 > (screenHeight) then
				break;
			end
			if versions[lineKey] == nil then
				break;
			end
			local line = changelogFileLines[versions[lineKey]]
			
			-- version button title
			line = " " .. string.match(line, '( %d*%d.?%d+)')
			font:Print(line, x+9+versionOffsetX, y-((versionFontSize+versionOffsetY)*j)+4, versionFontSize, "on")
			
			j = j + 1
			lineKey = lineKey + 1
		end
	end
	
	-- draw textarea
	local textareaOffsetX = 90
	local textareaOffsetY = 0
	local textareaHeight = (screenHeight-10-textareaOffsetY)
	local fontSizeLine = 15
	local fontSizeTitle = 17
	local maxLines = math.floor(textareaHeight-5/fontSizeLine)
	local textareaY = y - textareaOffsetY
	if changelogFile then
		local lineKey = startLine
		local j = 0
		local width = 0
		while j < maxLines do	
			if (fontSizeTitle)*j > textareaHeight then
				break;
			end
			if changelogFileLines[lineKey] == nil then
				break;
			end
			
			local line = changelogFileLines[lineKey]
			if string.find(line, '^([0-9][0-9][/][0-9][0-9][/][0-9][0-9])') or string.find(line, '^([0-9][/][0-9][0-9][/][0-9][0-9])') then
				-- date line
				line = "  " .. line
				font:SetTextColor(0.66,0.9,0.66,1)
				font:Print(line, x+textareaOffsetX, textareaY-(fontSizeTitle)*j, fontSizeLine, "n")
			elseif string.find(line, '^(%d*%d.?%d+)') then
				-- version line
				local versionStrip = string.match(line, '( %d*%d.?%d+)')
				if versionStrip ~= nil then
					line = " " .. versionStrip
 				else
					line = " " .. line
				end
				font:SetTextColor(1,1,1,1)
				font:Print(line, x-9+textareaOffsetX, textareaY-((fontSizeTitle)*j)+5, fontSizeTitle, "n")
				
			else
				font:SetTextColor(0.8,0.77,0.74,1)
				if string.find(line, '^(-)') then
					-- bulletpointed line
					local firstLetterPos = 2
					if string.find(line, '^(- )') then
						firstLetterPos = 3
					end
					line = string.upper(string.sub(line, firstLetterPos, firstLetterPos))..string.sub(line, firstLetterPos+1)
					line, numLines = font:WrapText(line, (screenWidth - textareaOffsetX - 65)*(loadedFontSize/fontSizeLine))
					font:Print("   - ", x+textareaOffsetX, textareaY-(fontSizeTitle)*j, fontSizeLine, "n")
					font:Print(line, x+26+textareaOffsetX, textareaY-(fontSizeTitle)*j, fontSizeLine, "n")
				else
					-- line
					line = "  " .. line
					line, numLines = font:WrapText(line, (screenWidth - textareaOffsetX - 25)*(loadedFontSize/fontSizeLine))
					font:Print(line, x+textareaOffsetX, textareaY-(fontSizeTitle)*j, fontSizeLine, "n")
				end
				j = j + (numLines - 1)
			end

			j = j + 1
			lineKey = lineKey + 1
		end
		font:End()
	end
	-- textarea scrollbar
	if (totalChangelogLines > maxLines or startLine > 1) then	-- only show scroll above X lines
		local scrollbarMargin    = 10
		local scrollbarWidth     = 8
		local scrollbarPosWidth  = 4
		local scrollbarOffsetY   = 0	-- note: wont add the offset to the bottom, only to top
		local scrollbarTop       = textareaY-scrollbarOffsetY-scrollbarMargin
		local scrollbarBottom    = textareaY-screenHeight+textareaOffsetY+scrollbarMargin
		local scrollbarPosHeight = math.max(((screenHeight+textareaOffsetY-scrollbarMargin-scrollbarMargin) / totalChangelogLines) * ((screenHeight+textareaOffsetY-scrollbarMargin-scrollbarMargin) / 25), 15)
		local scrollbarPos       = scrollbarTop + (scrollbarBottom - scrollbarTop) * ((startLine-1) / totalChangelogLines)
		scrollbarPos             = scrollbarPos + ((startLine-1) / totalChangelogLines) * scrollbarPosHeight	-- correct position taking position bar height into account

		-- background
		gl.Color(0,0,0,0.24)
		RectRound(
			x+screenWidth-scrollbarMargin-scrollbarWidth,
			scrollbarBottom,
			x+screenWidth-scrollbarMargin,
			scrollbarTop,
			scrollbarWidth/2
		)
		-- bar
		gl.Color(1,1,1,0.08)
		RectRound(
			x+screenWidth-scrollbarMargin-scrollbarWidth + (scrollbarWidth - scrollbarPosWidth),
			scrollbarPos,
			x+screenWidth-scrollbarMargin-(scrollbarWidth - scrollbarPosWidth),
			scrollbarPos - (scrollbarPosHeight),
			scrollbarPosWidth/2
		)
	end
end


function widget:GameFrame(n)
	
	if n>endPosX and posX > endPosX then
		posX = posX - 0.005
		if posX < 0 then posX = 0 end
		
		bgColorMultiplier = posX / startPosX
	end
end

function widget:DrawScreen()
    if spIsGUIHidden() then return end
    if amNewbie and not gameStarted then return end
    
    -- draw the button
    if not buttonGL then
        buttonGL = gl.CreateList(DrawButton)
    end
    
    glLineWidth(lineWidth)

    glPushMatrix()
        glTranslate(posX*vsx, posY*vsy, 0)
        glScale(17*widgetScale, 17*widgetScale, 1)
		glColor(0, 0, 0, (0.3*bgColorMultiplier))
        glCallList(buttonGL)
    glPopMatrix()

    glColor(1, 1, 1, 1)
    glLineWidth(1)
    
    -- draw the help
    if not changelogList then
        changelogList = gl.CreateList(DrawWindow)
    end
    
    if show or showOnceMore then
    
		-- draw the changelog panel
		glPushMatrix()
			glTranslate(-(vsx * (widgetScale-1))/2, -(vsy * (widgetScale-1))/2, 0)
			glScale(widgetScale, widgetScale, 1)
			glCallList(changelogList)
		glPopMatrix()
		if (WG['guishader_api'] ~= nil) then
			local rectX1 = ((screenX-bgMargin) * widgetScale) - ((vsx * (widgetScale-1))/2)
			local rectY1 = ((screenY+24+bgMargin) * widgetScale) - ((vsy * (widgetScale-1))/2)
			local rectX2 = ((screenX+screenWidth+bgMargin) * widgetScale) - ((vsx * (widgetScale-1))/2)
			local rectY2 = ((screenY-screenHeight-bgMargin) * widgetScale) - ((vsy * (widgetScale-1))/2)
			WG['guishader_api'].InsertRect(rectX1, rectY2, rectX2, rectY1, 'changelog')
		end
		showOnceMore = false
		
		-- draw button hover
		local usedScreenX = (vsx*0.5) - ((screenWidth/2)*widgetScale)
		local usedScreenY = (vsy*0.5) + ((screenHeight/2)*widgetScale)

		local x,y = Spring.GetMouseState()
		if changelogFile then
			local lineKey = 1
			local j = 0
			local yOffsetUp = ((versionFontSize*0.66)*widgetScale)
			local yOffsetDown = ((versionFontSize*1.2)*widgetScale)
			while j < 22 do	
				if ((versionFontSize+versionOffsetY)*j)+4 > (screenHeight) then
					break;
				end
				if versions[lineKey] == nil then
					break;
				end
				
				-- version title
				local textX = usedScreenX-((10+versionOffsetX)*widgetScale)
				local textY = usedScreenY-((((versionFontSize+versionOffsetY)*j)-5)*widgetScale)
				local x1 = usedScreenX
				local y1 = textY-yOffsetUp
				local x2 = usedScreenX+(70*widgetScale)
				local y2 = textY+yOffsetDown
				if IsOnRect(x, y, x1, y1, x2, y2) then
					gl.Color(1,0.93,0.75,0.22)
					RectRound(x1, y1, x2, y2, 5*widgetScale)
					break;
				end
				j = j + 1
				lineKey = lineKey + 1
			end
		end
    else
		if (WG['guishader_api'] ~= nil) then
			WG['guishader_api'].RemoveRect('changelog')
		end
	end
end

function IsOnRect(x, y, BLcornerX, BLcornerY,TRcornerX,TRcornerY)
	
	-- check if the mouse is in a rectangle
	return x >= BLcornerX and x <= TRcornerX
	                      and y >= BLcornerY
	                      and y <= TRcornerY
end

function widget:IsAbove(x, y)
	-- on window
	if show then
		local rectX1 = ((screenX-bgMargin) * widgetScale) - ((vsx * (widgetScale-1))/2)
		local rectY1 = ((screenY+24+bgMargin) * widgetScale) - ((vsy * (widgetScale-1))/2)
		local rectX2 = ((screenX+screenWidth+bgMargin) * widgetScale) - ((vsx * (widgetScale-1))/2)
		local rectY2 = ((screenY-screenHeight-bgMargin) * widgetScale) - ((vsy * (widgetScale-1))/2)
		return IsOnRect(x, y, rectX1, rectY2, rectX2, rectY1)
	else
		return false
	end
end

function widget:GetTooltip(mx, my)
	if show and widget:IsAbove(mx,my) then
		return string.format(
			"\255\255\255\1Left mouse\255\255\255\255 on textarea to scroll down.\n"..
			"\255\255\255\1Right mouse\255\255\255\255 on textarea  to scroll up.\n\n"..
			"Add CTRL or SHIFT to scroll faster, or combine CTRL+SHIFT (+ALT).")
	end
end

function widget:MousePress(x, y, button)
	if spIsGUIHidden() then return false end
    if amNewbie and not gameStarted then return end
    
    if show then 
		-- on window
		local rectX1 = ((screenX-bgMargin) * widgetScale) - ((vsx * (widgetScale-1))/2)
		local rectY1 = ((screenY+24+bgMargin) * widgetScale) - ((vsy * (widgetScale-1))/2)
		local rectX2 = ((screenX+screenWidth+bgMargin) * widgetScale) - ((vsx * (widgetScale-1))/2)
		local rectY2 = ((screenY-screenHeight-bgMargin) * widgetScale) - ((vsy * (widgetScale-1))/2)
		if IsOnRect(x, y, rectX1, rectY2, rectX2, rectY1) then
		
			-- on close button
			local brectX1 = rectX2 - (closeButtonSize+bgMargin+bgMargin * widgetScale)
			local brectY2 = rectY1 - (closeButtonSize+bgMargin+bgMargin * widgetScale)
			if IsOnRect(x, y, brectX1, brectY2, rectX2, rectY1) then
				showOnceMore = true		-- show once more because the guishader lags behind, though this will not fully fix it
				show = not show
				return true
			end
			
			-- scroll text with mouse 2
			if button == 1 or button == 3 then
				if IsOnRect(x, y, rectX1+(90*widgetScale), rectY2, rectX2, rectY1) then
					local alt, ctrl, meta, shift = Spring.GetModKeyState()
					local addLines = 3
					
					if ctrl or shift then 
						addLines = 8
					end
					if ctrl and shift then 
						addLines = 22
					end
					if ctrl and shift and alt then 
						addLines = 66
					end
					if button == 3 then 
						addLines = -addLines
					end
					startLine = startLine + addLines
					if startLine < 1 then startLine = 1 end
					if startLine > totalChangelogLines - textareaMinLines then startLine = totalChangelogLines - textareaMinLines end
					
					if changelogList then
						glDeleteList(changelogList)
					end
					changelogList = gl.CreateList(DrawWindow)
					return true
				end
			end
			
			-- version buttons
			if button == 1 then
				local usedScreenX = (vsx*0.5) - ((screenWidth/2)*widgetScale)
				local usedScreenY = (vsy*0.5) + ((screenHeight/2)*widgetScale)
				
				local x,y = Spring.GetMouseState()
				if changelogFile then
					local lineKey = 1
					local j = 0
					while j < 25 do	
						if (versionFontSize+versionOffsetY)*j > (screenHeight) then
							break;
						end
						if versions[lineKey] == nil then
							break;
						end
						
						-- version title
						local textX = usedScreenX-((10+versionOffsetX)*widgetScale)
						local textY = usedScreenY-((((versionFontSize+versionOffsetY)*j)-5)*widgetScale)
						
						local x1 = usedScreenX
						local y1 = textY-((versionFontSize*0.66)*widgetScale)
						local x2 = usedScreenX+(70*widgetScale)
						local y2 = textY+((versionFontSize*1.2)*widgetScale)
						if IsOnRect(x, y, x1, y1, x2, y2) then
							startLine = versions[lineKey]
							if changelogList then
								glDeleteList(changelogList)
							end
							changelogList = gl.CreateList(DrawWindow)
							break;
						end
						
						j = j + 1
						lineKey = lineKey + 1
					end
				end
			end
			
			if button == 1 or button == 3 then
				return true
			end
		else
			showOnceMore = true		-- show once more because the guishader lags behind, though this will not fully fix it
			show = not show
		end
    else
		tx = (x - posX*vsx)/(17*widgetScale)
		ty = (y - posY*vsy)/(17*widgetScale)
		if tx < 0 or tx > 4.5 or ty < 0 or ty > 1 then return false end
		
		showOnceMore = show		-- show once more because the guishader lags behind, though this will not fully fix it
		show = not show
    end
end


function widget:Initialize()
  
	if changelogFile then
		-- store changelog into array
		changelogFileLines = {}
		for line in changelogFile:lines() do
			table.insert (changelogFileLines, line);
		end
		
		local versionKey = 0
		for i, line in ipairs(changelogFileLines) do
		
			if string.find(line, '^(%d*%d.?%d+ /-)') then
				versionKey = versionKey + 1
				versions[versionKey] = i
			end
			totalChangelogLines = i
		end
		io.close(changelogFile)
	else
		Spring.Echo("Changelog: couldn't load the changelog file")
		widgetHandler:RemoveWidget()
	end
end

function widget:Shutdown()
    if buttonGL then
        glDeleteList(buttonGL)
        buttonGL = nil
    end
    if changelogList then
        glDeleteList(changelogList)
        changelogList = nil
    end
end
