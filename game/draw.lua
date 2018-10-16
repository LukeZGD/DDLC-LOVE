lg = love.graphics
local drawbottom
local xps = {}
local yps = {}
local nxh
local nyh

function drawTopScreen()
	if drawbottom == 1 then
		lg.pop()
		drawbottom = 0
	elseif global_os == 'Horizon' then
		lg.setScreen('top')
	end
end

function drawBottomScreen()
	if global_os ~= 'Horizon' then
		lg.push()
		lg.translate((400 - 320) / 2, 240)
		drawbottom = 1
	else
		lg.setScreen('bottom')
	end
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
	currentTime = love.timer.getTime()
	if (currentTime <= startTime) or startTime == 0 then return '' end
	if currentTime > startTime then myTextStartTime2 = love.timer.getTime() end
	if charactersPerSecond == nil then charactersPerSecond = 100 end
	return text:sub(1,math.min(math.floor((currentTime-startTime)*charactersPerSecond),text:len()))
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
		yps = {c={166,182,198,214},ct=142,textbox=162,namebox=142}
		drawTopScreen()
	else
		xps = {c=8,ct=23,textbox=0,namebox=12}
		yps = {c={66,82,98,114},ct=42,textbox=62,namebox=42}
	end
	
	if style_edited then lg.setFont(deffont) end
	
	if not menu_enabled and (not poem_enabled or (event_enabled and textbox_enabled)) then
		lg.setColor(255,255,255,alpha)
		if ct ~= '' then lg.draw(namebox, xps.namebox, yps.namebox) end
		lg.draw(textbox, xps.textbox, yps.textbox)
		lg.setColor(0,0,0,alpha)
		lg.print(ct,xps.ct,yps.ct)
		if c_disp then
			for i = 1, 4 do
				lg.print(c_disp[i],xps.c,yps.c[i])
			end
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
	if console_enabled and console_font then
		lg.setColor(51,51,51,191)
		lg.rectangle('fill',0,0,320,60)
		lg.setColor(255,255,255)
		lg.setFont(console_font)
		lg.print('> '..console_text1,0,0)
		lg.print(console_text2,5,15)
		lg.print(console_text3,5,30)
	end
end

function updateSayori(a,b,px,py)
	if not b then b = '' end
	s_Set.a = a
	s_Set.b = b
	if xaload == 0 then loadSayori() end
	if px then
		s_Set.x = px
	end
	if py then s_Set.y = py end
end

function updateYuri(a,b,px,py)
	if not b then b = '' end
	y_Set.a = a 
	y_Set.b = b
	if xaload == 0 then loadYuri() end
	if px then
		y_Set.x = px
	end
	if py then y_Set.y = py end
end

function updateNatsuki(a,b,px,py)
	if not b then b = '' end
	n_Set.a = a
	n_Set.b = b
	if xaload == 0 then loadNatsuki() end
	if px then
		n_Set.x = px
	end
	if py then n_Set.y = py end
end

function updateMonika(a,b,px,py)
	if not b then b = '' end
	m_Set.a = a
	m_Set.b = b
	if xaload == 0 then loadMonika() end
	if px then
		m_Set.x = px
	end
	if py then m_Set.y = py end
end

function hideSayori()
	s_Set = {a='',b='',x=-200,y=0}
	if sl then unloadSayori() end
end

function hideYuri()
	y_Set = {a='',b='',x=-200,y=0}
	if yl then unloadYuri() end
end

function hideNatsuki()
	n_Set = {a='',b='',x=-200,y=0}
	if nl then unloadNatsuki() end
end

function hideMonika()
	m_Set = {a='',b='',x=-200,y=0}
	if ml then unloadMonika() end
end

function hideAll()
	s_Set.a = ''
	s_Set.b = ''
	y_Set.a = ''
	y_Set.b = ''
	n_Set.a = ''
	n_Set.b = ''
	m_Set.a = ''
	m_Set.b = ''
	unloadAll()
end

function drawSayori()
	lg.draw(sl, s_Set.x, s_Set.y)
	if s_Set.a=='1' or s_Set.a=='1b' or s_Set.a=='2' or s_Set.a=='2b' or s_Set.a=='3' or s_Set.a=='3b' or s_Set.a=='4' or s_Set.a=='4b' then
		lg.draw(sr, s_Set.x, s_Set.y)
	end
	
	if s_Set.b~='' then
		if s_a then lg.draw(s_a, s_Set.x, s_Set.y) end
	end
end

function drawYuri()
	lg.draw(yl, y_Set.x, y_Set.y)
	if y_Set.a=='1' or y_Set.a=='1b' or y_Set.a=='2' or y_Set.a=='2b' or y_Set.a=='3' or y_Set.a=='3b' then
		lg.draw(yr, y_Set.x, y_Set.y)
	end
	
	if y_Set.b~='' then
		lg.draw(y_a, y_Set.x, y_Set.y)
	end
end

function drawNatsuki()
	if n_Set.a=='5' or n_Set.a=='5b' then --set natsuki's head x and y pos
		nxh = n_Set.x + 4
		nyh = n_Set.y + 6
	else
		nxh = n_Set.x
		nyh = n_Set.y
	end
	
	if n_Set.b~='' then
		lg.draw(n_a, nxh, nyh)
	end
	
	lg.draw(nl, n_Set.x, n_Set.y)
	if n_Set.a=='1' or n_Set.a=='1b' or n_Set.a=='2' or n_Set.a=='2b' or n_Set.a=='3' or n_Set.a=='3b' or n_Set.a=='4' or n_Set.a=='4b' then
		lg.draw(nr, n_Set.x, n_Set.y)
	end
end

function drawMonika()
	lg.draw(ml, m_Set.x, m_Set.y)
	if m_Set.a=='1' or m_Set.a=='2' or m_Set.a=='3' or m_Set.a=='4' then
		lg.draw(mr, m_Set.x, m_Set.y)
	end
	
	if m_Set.b ~= '' then
		lg.draw(m_a, m_Set.x, m_Set.y)
	end
end