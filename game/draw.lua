lg = love.graphics
local drawbottom
local xps = {c=250,ct=270,textbox=230,namebox=250}
local yps = {c={585,615,645,675},ct=532,textbox=565,namebox=526}
local gui_ctc_x = 1010
local nxh
local nyh

changeX = {x={s=0,y=0,n=0,m=0},y={s=0,y=0,n=0,m=0},z={s=0,y=0,n=0,m=0}}
unitimer = 0
uniduration = 0.25

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
	elseif dvertype == 'Test' then
		--lg.print('NODRAW',args[1],args[2])
	end
end

function outlineText(text,x,y,type)
	if g_system == 'PSP' then
		lg.setColor(0,0,0,alpha)
	else
		local addm = 1.25
		if type == 'ct' then
			lg.setColor(187,85,153,alpha)
			addm = 2
		elseif style_edited and type == 'c_disp' then
			lg.setColor(255,255,255,alpha)
		else
			lg.setColor(0,0,0,alpha)
		end
		lg.print(text,x-addm,y)
		lg.print(text,x,y-addm)
		lg.print(text,x+addm,y)
		lg.print(text,x,y+addm)
		if style_edited and type == 'c_disp' then
			lg.setColor(0,0,0,alpha)
		else
			lg.setColor(255,255,255,alpha)
		end
	end
	lg.print(text,x,y)
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

function easeQuadInOut(t,b,c,d)
	t = t/(d/2)
	if (t < 1) then
		return c/2*t*t + b
	else
		return -c/2 * ((t-1) * (t-3) - 1) + b
	end
end
	
function easeCubicInOut(t,b,c,d)
	t = t/(d/2)
	if (t < 1) then
		return c/2*t*t*t + b
	else
		t = t - 2
		return c/2*(t*t*t + 2) + b
	end
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
	cgUpdate('blank')
end

function drawTextBox()
	if sectimer >= 0.5 then
		gui_ctc_x = math.max(gui_ctc_x - 0.1, 1010)
	else
		gui_ctc_x = math.min(gui_ctc_x + 0.1, 1015)
	end
	
	if not menu_enabled and (not poem_enabled or (event_enabled and textbox_enabled)) then
		lg.setColor(255,255,255,alpha)
		if ct ~= '' then lg.draw(namebox, xps.namebox, yps.namebox) end
		lg.draw(textbox, xps.textbox, yps.textbox)
		if gui_ctc_t then lg.draw(gui.ctc, gui_ctc_x, 685) end
		
		lg.setColor(0,0,0,alpha)
		lg.setFont(rifficfont)
		outlineText(ct,xps.ct,yps.ct,'ct')
		
		if style_edited then
			lg.setFont(deffont)
		else
			lg.setFont(allerfont)
		end
		if c_disp and global_os == 'LOVE-OneLua' then
			for i = 1, 4 do
				outlineText(c_disp[i],xps.c,yps.c[i],'c_disp')
			end
			
		elseif textx then
			if style_edited then
				lg.setColor(255,255,255,alpha)
			else
				lg.setColor(0,0,0,alpha)
			end
			lg.printf(textx,248.75,590,775)
			lg.printf(textx,250,588.75,775)
			lg.printf(textx,251.25,590,775)
			lg.printf(textx,250,591.25,775)
			if style_edited then
				lg.setColor(0,0,0,alpha)
			else
				lg.setColor(255,255,255,alpha)
			end
			lg.printf(textx,250,590,775)
		end
	end
end

function drawPoem()
	if poembg then
		lg.draw(poembg, 240, 0)
	elseif yuri_3 then
		lg.setColor(255,0,0,192)
		lg.rectangle('fill',240,0,800,720)
	else
		lg.setColor(243,243,243)
		lg.rectangle('fill',240,0,800,720)
	end
	lg.setColor(0,0,0)
	if poemtext and poem_scroll then
		for i = 1, #poemtext do
			if poemtext[i] then
				lg.print(poemtext[i],250+(poem_scroll.x*30)-30,((poem_scroll.y*24)+(i*30))-25)
			end
		end
	end
end

function drawConsole()
	if console_enabled and console_font then
		lg.setColor(51,51,51,191)
		lg.rectangle('fill',0,0,480,180)
		lg.setColor(255,255,255)
		lg.setFont(console_font)
		lg.print('> '..console_text1,0,0)
		lg.print(console_text2,15,30)
		lg.print(console_text3,15,60)
		lg.print(console_text4,15,90)
	end
end

function updateSayori(a,b,px,py)
	if not b then b = '' end
	s_Set.a = a
	s_Set.b = b
	if xaload == 0 then loadSayori() end
	
	if px and xaload == 0 then
		changeX.x.s = s_Set.x
		changeX.y.s = px*3.2
		if changeX.x.s < changeX.y.s then
			changeX.z.s = changeX.y.s - changeX.x.s
		elseif changeX.x.s > changeX.y.s then
			changeX.z.s = changeX.x.s - changeX.y.s
		else
			changeX.z.s = 0
		end
	end
	
	if py then s_Set.y = py end
end

function updateYuri(a,b,px,py)
	if not b then b = '' end
	y_Set.a = a 
	y_Set.b = b
	if xaload == 0 then loadYuri() end
	
	if px and xaload == 0 then
		changeX.x.y = y_Set.x
		changeX.y.y = px*3.2
		if changeX.x.y < changeX.y.y then
			changeX.z.y = changeX.y.y - changeX.x.y
		elseif changeX.x.y > changeX.y.y then
			changeX.z.y = changeX.x.y - changeX.y.y
		else
			changeX.z.y = 0
		end
	end
	
	if py then y_Set.y = py end
end

function updateNatsuki(a,b,px,py)
	if not b then b = '' end
	n_Set.a = a
	n_Set.b = b
	if xaload == 0 then loadNatsuki() end
	
	if px and xaload == 0 then
		changeX.x.n = n_Set.x
		changeX.y.n = px*3.2
		if changeX.x.n < changeX.y.n then
			changeX.z.n = changeX.y.n - changeX.x.n
		elseif changeX.x.n > changeX.y.n then
			changeX.z.n = changeX.x.n - changeX.y.n
		else
			changeX.z.n = 0
		end
	end
	
	if py then n_Set.y = py end
end

function updateMonika(a,b,px,py)
	if not b then b = '' end
	m_Set.a = a
	m_Set.b = b
	if xaload == 0 then loadMonika() end
	
	if px and xaload == 0 then
		changeX.x.m = m_Set.x
		changeX.y.m = px*3.2
		if changeX.x.m < changeX.y.m then
			changeX.z.m = changeX.y.m - changeX.x.m
		elseif changeX.x.m > changeX.y.m then
			changeX.z.m = changeX.x.m - changeX.y.m
		else
			changeX.z.m = 0
		end
	end
	
	if py then m_Set.y = py end
end

function hideSayori()
	if xaload == 0 then
		changeX.x.s = s_Set.x
		if changeX.x.s >= 300 then
			changeX.y.s = 1955
			changeX.z.s = changeX.y.s - changeX.x.s
		else
			changeX.y.s = -675
			changeX.z.s = changeX.x.s - changeX.y.s
		end
	end
	--s_Set = {a='',b='',x=-400,y=4}
	--if sl then unloadSayori() end
end

function hideYuri()
	if xaload == 0 then
		changeX.x.y = y_Set.x
		if changeX.x.y >= 300 then
			changeX.y.y = 1955
			changeX.z.y = changeX.y.y - changeX.x.y
		else
			changeX.y.y = -675
			changeX.z.y = changeX.x.y - changeX.y.y
		end
	end
	--y_Set = {a='',b='',x=-400,y=4}
	--if yl then unloadYuri() end
end

function hideNatsuki()
	if xaload == 0 then
		changeX.x.n = n_Set.x
		if changeX.x.n >= 300 then
			changeX.y.n = 1955
			changeX.z.n = changeX.y.n - changeX.x.n
		else
			changeX.y.n = -675
			changeX.z.n = changeX.x.n - changeX.y.n
		end
	end
	--n_Set = {a='',b='',x=-400,y=4}
	--if nl then unloadNatsuki() end
end

function hideMonika()
	if xaload == 0 then
		changeX.x.m = m_Set.x
		if changeX.x.m >= 300 then
			changeX.y.m = 1955
			changeX.z.m = changeX.y.m - changeX.x.m
		else
			changeX.y.m = -675
			changeX.z.m = changeX.x.m - changeX.y.m
		end
	end
	--m_Set = {a='',b='',x=-400,y=4}
	--if ml then unloadMonika() end
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
		if s_a then lg.draw(s_a, s_Set.x, s_Set.y+1) end
	end
	
	if s_Set.x < changeX.y.s and not (s_Set.x == changeX.y.s + 1) and not (s_Set.x == changeX.y.s - 1) and autoskip < 1 then
		s_Set.x = math.ceil(changeX.x.s + easeQuadInOut(unitimer,0,changeX.z.s,uniduration))
	elseif s_Set.x > changeX.y.s and autoskip < 1 then
		s_Set.x = math.floor(changeX.x.s - easeQuadInOut(unitimer,0,changeX.z.s,uniduration))
	elseif s_Set.x ~= changeX.y.s then
	--if s_Set.x ~= changeX.y.s then
		s_Set.x = changeX.y.s
	end
	--if sl and s_Set.x < -550 and xaload == 1 then unloadSayori() end
end

function drawYuri()
	lg.draw(yl, y_Set.x, y_Set.y)
	if y_Set.a=='1' or y_Set.a=='1b' or y_Set.a=='2' or y_Set.a=='2b' or y_Set.a=='3' or y_Set.a=='3b' then
		lg.draw(yr, y_Set.x, y_Set.y)
	end
	
	if y_Set.b~='' then
		lg.draw(y_a, y_Set.x, y_Set.y+1)
	end
	
	if y_Set.x < changeX.y.y and not (y_Set.x == changeX.y.y + 1) and not (y_Set.x == changeX.y.y - 1) and autoskip < 1 then
		y_Set.x = math.ceil(changeX.x.y + easeQuadInOut(unitimer,0,changeX.z.y,uniduration))
	elseif y_Set.x > changeX.y.y and autoskip < 1 then
		y_Set.x = math.floor(changeX.x.y - easeQuadInOut(unitimer,0,changeX.z.y,uniduration))
	elseif y_Set.x ~= changeX.y.y then
	--if y_Set.x ~= changeX.y.y then
		y_Set.x = changeX.y.y
	end
	--if yl and y_Set.x < -550 and xaload == 1 then unloadYuri() end
end

function drawNatsuki()
	if n_Set.a=='5' or n_Set.a=='5b' then --set natsuki's head x and y pos
		nxh = n_Set.x + 7
		nyh = n_Set.y + 18
	else
		nxh = n_Set.x
		nyh = n_Set.y
	end
	
	if n_Set.b~='' then
		lg.draw(n_a, nxh, nyh+1)
	end
	
	lg.draw(nl, n_Set.x, n_Set.y)
	if n_Set.a=='1' or n_Set.a=='1b' or n_Set.a=='2' or n_Set.a=='2b' or n_Set.a=='3' or n_Set.a=='3b' or n_Set.a=='4' or n_Set.a=='4b' then
		lg.draw(nr, n_Set.x, n_Set.y)
	end
	
	if n_Set.x < changeX.y.n and not (n_Set.x == changeX.y.n + 1) and not (n_Set.x == changeX.y.n - 1) and autoskip < 1 then
		n_Set.x = math.ceil(changeX.x.n + easeQuadInOut(unitimer,0,changeX.z.n,uniduration))
	elseif n_Set.x > changeX.y.n and autoskip < 1 then
		n_Set.x = math.floor(changeX.x.n - easeQuadInOut(unitimer,0,changeX.z.n,uniduration))
	elseif n_Set.x ~= changeX.y.n then
	--if n_Set.x ~= changeX.y.n then
		n_Set.x = changeX.y.n
	end
	--if nl and n_Set.x < -550 and xaload == 1 then unloadNatsuki() end
end

function drawMonika()
	lg.draw(ml, m_Set.x, m_Set.y)
	if m_Set.a=='1' or m_Set.a=='2' or m_Set.a=='3' or m_Set.a=='4' then
		lg.draw(mr, m_Set.x, m_Set.y)
	end
	
	if m_Set.b ~= '' then
		lg.draw(m_a, m_Set.x, m_Set.y+1)
	end
	
	if m_Set.x < changeX.y.m and not (m_Set.x == changeX.y.m + 1) and not (m_Set.x == changeX.y.m - 1) and autoskip < 1 then
		m_Set.x = math.floor(changeX.x.m + easeQuadInOut(unitimer,0,changeX.z.m,uniduration))
	elseif m_Set.x > changeX.y.m and autoskip < 1 then
		m_Set.x = math.floor(changeX.x.m - easeQuadInOut(unitimer,0,changeX.z.m,uniduration))
	elseif m_Set.x ~= changeX.y.m then
	--if m_Set.x ~= changeX.y.m then
		m_Set.x = changeX.y.m
	end
	--if ml and m_Set.x < -550 and xaload == 1 then unloadMonika() end
end