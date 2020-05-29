lg = love.graphics
scale = 0.375
require(branch..'/draw')

--local lgsetColor = lg.setColor
function lgsetColor(...)
	local args = {...}
	if love.getVersion() >= 11 then
		for i = 1, #args do
			if args[i] > 0 then
				args[i] = args[i] / 255
			end
		end
	end
	lg.setColor(args[1],args[2],args[3],args[4])
end

--local lgnewImage = lg.newImage
function lgnewImage(new)
	--print('lgnewImage: '..new)
	if love.filesystem.getInfo(new) then
		return lg.newImage(new)
	end
end

local lgdraw = lg.draw
function lg.draw(drawable, ...)
	if drawable and not lutro then
		lgdraw(drawable, ...)
	elseif drawable and lutro then
		args = {...}
		if not args[1] then args[1] = 0 end
		if not args[2] then args[2] = 0 end
		x = args[1] * scale; y = args[2] * scale
		lgdraw(drawable,x,y,args[3],args[4],args[5])
	end
end

local lgprint = lg.print
function lg.print(text, ...)
	if text and not lutro then
		lgprint(text, ...)
	elseif text and lutro then
		args = {...}
		if not args[1] then args[1] = 0 end
		if not args[2] then args[2] = 0 end
		x = args[1] * scale; y = args[2] * scale
		lgprint(text,x,y)
	end
end

local lgrectangle = lg.rectangle
function lg.rectangle(mode,x,y,w,h)
	if lutro then
		x = x * scale; y = y * scale; w = w * scale; h = h * scale
	end
	lgrectangle(mode,x,y,w,h)
end

local lgnewFont = lg.newFont
function lg.newFont(font,size)
	--print('lgnewFont: '..font)
	if lutro then
		return dfnt
	else
		return lgnewFont(font,size)
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
			bg1 = 'black'
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
