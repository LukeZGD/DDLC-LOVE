lg = love.graphics
require(branch..'/draw')
--compatiblity for LOVE 11 and above
local lgsetColor = lg.setColor
function lg.setColor(...)
	local args = {...}
	if love.getVersion() >= 11 then
		for i = 1, #args do
			if args[i] > 0 then
				args[i] = args[i] / 255
			end
		end
	end
	lgsetColor(args[1],args[2],args[3],args[4])
end

local lgdraw = lg.draw
function lg.draw(drawable, ...)
	local args = {...}
	if drawable then
		lgdraw(drawable,args[1],args[2],args[3],args[4],args[5])
	end
end

local lgnewImage = lg.newImage
function lg.newImage(new)
	if love.filesystem.getInfo(new) then
		return lgnewImage(new)
	end
end

local lgsetFont = lg.setFont
function lg.setFont(setfont)
	if setfont then
		lgsetFont(setfont)
	else
		lgsetFont(dfnt)
	end
end

function dripText(text,cps,sTime)
	if text ~= last_text then
		sTime = getTime
		startTime = sTime
		last_text = text
		print_full_text = false
	end

	local cTime = getTime
	local sTime2
	local length
	
	if (cTime <= sTime) or sTime == 0 then return '' end
	if cTime > sTime then sTime2 = getTime end
	if not cps then cps = 100 end
	length = math.floor((cTime-sTime)*cps)
	length = math.max(length,1)
	length = math.min(length,text:len())

	if print_full_text then
		return text
	end

	if length == text:len() then
		print_full_text = true
	else
		print_full_text = false
	end

	return text:sub(1,length)
end

function easeQuadOut(t,b,c,d)
	t = t / d
	return -(c) * t*(t-2) + b
end

function fadeOut(x)
	alpha = math.max(alpha - 2.5, 0)
	if alpha == 0 then
		if x == 1 then -- game to poemgame
			changeState('poemgame')
		elseif x == 2 then -- poemgame to game
			changeState('game',3)
		elseif x == 3 then -- game to game, add 1 to chapter
			chapter = chapter + 1
			changeState('game',3)
		elseif x == 4 then  -- go to next 2 lines
			scriptJump(cl + 2)
			alpha = 255
		end
	end
end
