lg = love.graphics
local drawbottom
local xps = {}
local yps = {}
local xh
local yh
local with_r = {'1','1b','2','2b','3','3b','4','4b'}
local with_yr = {'1','1b','2','2b','3','3b'}

function drawTopScreen()
	lg.setScreen('top')
	if pcall(love.graphics.set3D, true) == true then
		love.graphics.setDepth(2)
	end
end

function drawBottomScreen()
	lg.setScreen('bottom')
end

--compatiblity for LOVE 11 and above
local lgsetColor = lg.setColor
function lg.setColor(...)
	local args = {...}
	local ver = love.getVersion()
	if ver >= 11 then
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

function dripText(text,charactersPerSecond,startTime)
	if text ~= last_text then
		startTime = love.timer.getTime()
		myTextStartTime = startTime
		last_text = text
		print_full_text = false
	end

	currentTime = love.timer.getTime()
	if (currentTime <= startTime) or startTime == 0 then return '' end
	if currentTime > startTime then myTextStartTime2 = love.timer.getTime() end
	if charactersPerSecond == nil then charactersPerSecond = 100 end
	length = math.floor((currentTime-startTime)*charactersPerSecond)
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
	--fade out to poemgame
	if x == 1 then
		if alpha == 0 then
			changeState('poemgame')
		end
	--fade out from poemgame to game
	elseif x == 2 then
		if alpha == 0 then
			changeState('game',3)
		end
	--fade out from game to game (add 1 to chapter)
	elseif x == 3 then
		if alpha == 0 then
			chapter = chapter + 1
			changeState('game',3)
		end
	--fade out then go to next 2 lines
	elseif x == 4 then
		if alpha == 0 then
			scriptJump(cl + 2)
			alpha = 255
		end
	end
end

function cgHide()
	cg1 = ''
	cgch = nil
end

function drawTextBox()
	if settings.textloc == 'Top' then
		xps = {c=48,ct=63,textbox=40,namebox=52}
		yps = {c=169,ct=142,textbox=162,namebox=142}
		drawTopScreen()
	else
		xps = {c=8,ct=23,textbox=0,namebox=12}
		yps = {c=69,ct=42,textbox=62,namebox=42}
	end
	
	if style_edited then lg.setFont(deffont) end
	
	if (not menu_enabled or (event_enabled and textbox_enabled)) and not poem_enabled then
		lg.setColor(255,255,255,alpha)
		if ct ~= '' then lg.draw(namebox, xps.namebox, yps.namebox) end
		lg.draw(textbox, xps.textbox, yps.textbox)
		lg.setColor(0,0,0,alpha)
		lg.print(ct,xps.ct,yps.ct)
		if c_disp then
			lg.print(c_disp,xps.c,yps.c)
		end
	end
	if settings.textloc == 'Top' then drawBottomScreen() end
end

function drawPoem()
	if poembg then
		lg.draw(poembg, 40, 0)
	else
		lg.setColor(243,243,243)
		lg.rectangle('fill',40,0,320,240)
	end
	lg.setFont(m1)
	lg.setColor(0,0,0)
	if poemtext and poem_scroll then
		for i = 1, #poemtext do
			if poemtext[i] then
				lg.print(poemtext[i],35+(poem_scroll.x*10),(poem_scroll.y*8)+(i*14)-14)
			end
		end
	end
end

function drawNumbers()
	if bgimg_disabled then 
		lg.setColor(255,255,255,255)
	else
		lg.setColor(0,0,0,255)
	end
	lg.print(cl,2,2)
end

function drawConsole()
	if console_enabled then
		lg.setColor(51,51,51,191)
		lg.rectangle('fill',0,0,320,60)
		lg.setColor(255,255,255)
		lg.setFont(deffont)
		lg.print('> '..console_text1,0,0)
		lg.print(console_text2,5,15)
		lg.print(console_text3,5,30)
	end
end

function updateCharacter(set,a,b,px,py,chset)
	if not b then b = '' end
	set.a = a
	set.b = b
	if px then
		set.x = px
	end
	if py then set.y = py end
end

function updateSayori(a,b,px,py)
	updateCharacter(s_Set,a,b,px,py)
	if xaload == 0 then loadSayori() end
end

function updateYuri(a,b,px,py)
	updateCharacter(y_Set,a,b,px,py)
	if xaload == 0 then loadYuri() end
end

function updateNatsuki(a,b,px,py)
	updateCharacter(n_Set,a,b,px,py)
	if xaload == 0 then loadNatsuki() end
end

function updateMonika(a,b,px,py)
	updateCharacter(m_Set,a,b,px,py)
	if xaload == 0 then loadMonika() end
end

function hideCharacter(set)
	set.a = ''
	set.b = ''
	set.x = -200
	set.y = 0
end

function hideSayori()
	hideCharacter(s_Set)
	if sl then unloadSayori() end
end

function hideYuri()
	hideCharacter(y_Set)
	if yl then unloadYuri() end
end

function hideNatsuki()
	hideCharacter(n_Set)
	if nl then unloadNatsuki() end
end

function hideMonika()
	hideCharacter(m_Set)
	if ml then unloadMonika() end
end

function hideAll()
	s_Set = {a='',b='',x=-200,y=0}
	y_Set = {a='',b='',x=-200,y=0}
	n_Set = {a='',b='',x=-200,y=0}
	m_Set = {a='',b='',x=-200,y=0}
	unloadAll()
end

function drawCharacter(l,r,a,set)
	if set.b~='' then
		if set == n_Set and n_Set.a=='5' or n_Set.a=='5b' then --set natsuki's head x and y pos
			xh = set.x + 4
			yh = set.y + 6
		else
			xh = set.x
			yh = set.y
		end
		if a then
			if pcall(love.graphics.set3D, true) == true then
				love.graphics.setDepth(1)
			end
			lg.draw(a,xh,yh)
		end
	end
	
	lg.draw(l, set.x, set.y)
	
	local with_set = with_r
	if set == y_Set then
		with_set = with_yr
	end
	for i = 1, #with_set do
		if set.a == with_set[i] then
			lg.draw(r, set.x, set.y)
		end
	end
end

function drawSayori()
	drawCharacter(sl,sr,s_a,s_Set)
end

function drawYuri()
	drawCharacter(yl,yr,y_a,y_Set)
end

function drawNatsuki()
	drawCharacter(nl,nr,n_a,n_Set)
end

function drawMonika()
	drawCharacter(ml,mr,m_a,m_Set)
end
