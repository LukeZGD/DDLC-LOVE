local drawbottom
local xps = {}
local yps = {}
local xh
local yh
local with_r = {'1','1b','2','2b','3','3b','4','4b'}
local with_yr = {'1','1b','2','2b','3','3b'}

function drawTopScreen()
	lg.setScreen('top')
	if pcall(lg.set3D, true) == true then
		lg.setDepth(2)
	end
end

function drawBottomScreen()
	lg.setScreen('bottom')
end

function drawTextBox()
	if settings.textloc == 'Top' then
		xps = {c=48,ct=63,textbox=40,namebox=52}
		yps = {c=171,ct=144,textbox=162,namebox=142}
		drawTopScreen()
	else
		xps = {c=8,ct=23,textbox=0,namebox=12}
		yps = {c=71,ct=44,textbox=62,namebox=42}
	end
	
	if style_edited then lg.setFont(dfnt) end
	
	if (not menu_enabled or (event_enabled and textbox_enabled)) and not poem_enabled then
		lgsetColor(255,255,255,alpha)
		if ct ~= '' then lg.draw(namebox, xps.namebox, yps.namebox) end
		lg.draw(textbox, xps.textbox, yps.textbox)
		lgsetColor(0,0,0,alpha)
		lg.print(ct,xps.ct,yps.ct)
		if c_disp[1] then
			lg.print(c_disp[1],xps.c,yps.c)
		end
	end
	if settings.textloc == 'Top' then drawBottomScreen() end
end

function drawPoem()
	if poembg then
		lg.draw(poembg,40)
	else
		lgsetColor(243,243,243)
		lg.rectangle('fill',0,0,400,240)
	end
	lg.setFont(m1)
	lgsetColor(0,0,0)
	if poemtext and poem_scroll then
		for i = 1, #poemtext do
			if poemtext[i] then
				lg.print(poemtext[i],(poem_scroll.x*10)-5,(poem_scroll.y*8)+(i*14)-14)
			end
		end
	end
end

function drawNumbers()
	if bgimg_disabled then 
		lgsetColor(255,255,255,255)
	else
		lgsetColor(0,0,0,255)
	end
	lg.print(cl,2,2)
end

function drawConsole()
	if console_enabled then
		lgsetColor(51,51,51,191)
		lg.rectangle('fill',0,0,320,60)
		lgsetColor(255,255,255)
		lg.setFont(dfnt)
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
		if set == n_Set and (n_Set.a=='5' or n_Set.a=='5b') then --set natsuki's head x and y pos
			xh = set.x + 4
			yh = set.y + 6
		else
			xh = set.x
			yh = set.y
		end
		if a then
			if pcall(lg.set3D, true) == true then
				lg.setDepth(1)
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
