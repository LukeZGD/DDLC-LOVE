if love.getVersion() >= 11 then
	require('cindy').applyPatch()
end
lg = love.graphics

--local lgnewImage = lg.newImage
function lgnewImage(new)
	--print('lgnewImage: '..new)
	if love.filesystem.getInfo(new) then
		local img = lg.newImage(new)
        --love.filesystem.append("logfile",'lgnewImage: '..img..' '..new)
        return img
	end
end

local lgdraw = lg.draw
function lg.draw(drawable, ...)
	if drawable then
		lgdraw(drawable, ...)
	end
end

local lgprint = lg.print
function lg.print(text, ...)
	if text then
		lgprint(text, ...)
	end
end

local lgnewFont = lg.newFont
function lg.newFont(font,size)
	--love.filesystem.append("logfile",'lgnewFont: '..font)
	--print('lgnewFont: '..font)
	return lgnewFont(font,size)
end

local lgsetFont = lg.setFont
function lg.setFont(setfont)
	if setfont then
		lgsetFont(setfont)
	else
		lgsetFont(dfnt)
	end
end

if g_system ~= "Vita" then
	Font = {}
	Graphics = {}
	function Font.unload()
		return
	end
	function Graphics.freeImage()
		return
	end
else
	freeimage_old = Graphics.freeImage
	function Graphics.freeImage(img)
		--love.filesystem.append("logfile", "freeimage: "..img)
		if type(img) == "number" then
			freeimage_old(img)
		end
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

local xps = {c=260,ct=285,textbox=230,namebox=260}
local yps = {c={593,623,653,683},ct=532,textbox=565,namebox=527}
local gui_ctc_x = 1015
local xh
local yh

local with_r = {'1','1b','2','2b','3','3b','4','4b'}
local with_yr = {'1','1b','2','2b','3','3b'}
changeX = {s={x=0,y=0,z=0},y={x=0,y=0,z=0},n={x=0,y=0,z=0},m={x=0,y=0,z=0}}
unitimer = 0
uniduration = 0.25

function outlineText(text,x,y,type,arg1)
	if g_system == 'PSP' or (settings.o == 1 and type ~= 'poemgame' and type ~= 'm_selected') then
		lg.setColor(0,0,0,alpha)
	else
		local addm = 1.5
		if type == 'ct' then
			lg.setColor(187,85,153,alpha)
			addm = 2.35
		elseif style_edited and (type == 'c_disp' or type == 'printf') then
			lg.setColor(255,255,255,alpha)
		elseif type == 'poemgame' then
			lg.setColor(255,175,255,alpha)
		else
			lg.setColor(0,0,0,alpha)
		end
		if type == 'printf' and global_os ~= 'LOVE-WrapLua' then
			lg.printf(text,x-addm,y,arg1)
			lg.printf(text,x,y-addm,arg1)
			lg.printf(text,x+addm,y,arg1)
			lg.printf(text,x,y+addm,arg1)
		else
			lg.print(text,x-addm,y)
			lg.print(text,x,y-addm)
			lg.print(text,x+addm,y)
			lg.print(text,x,y+addm)
		end
		if style_edited and (type == 'c_disp' or type == 'printf') then
			lg.setColor(0,0,0,alpha)
		else
			lg.setColor(255,255,255,alpha)
		end
	end
	if type == 'printf' and global_os ~= 'LOVE-WrapLua' then
		lg.printf(text,x,y,arg1)
	else
		local printtext = lg.print(text,x,y)
		pcall(printtext)
	end
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

function drawTextBox()
	if sectimer >= 0.5 then
		gui_ctc_x = math.max(gui_ctc_x - dt*5, 1015)
	else
		gui_ctc_x = math.min(gui_ctc_x + dt*5, 1020)
	end
	
	if menu_type ~= 'choice' and not poem_enabled then
		lg.setColor(255,255,255,alpha)
		if ct ~= '' then lg.draw(namebox, xps.namebox, yps.namebox) end
		lg.draw(textbox, xps.textbox, yps.textbox)
		if print_full_text then lg.draw(gui.ctc, gui_ctc_x, 685) end
		
		lg.setColor(0,0,0,alpha)
		lg.setFont(rifficfont)
		outlineText(ct,xps.ct,yps.ct,'ct')
		
		if style_edited then
			lg.setFont(dfnt)
		else
			lg.setFont(allerfont)
		end
		if g_system == 'PSP' then
			xps.c = 240
		end
		if c_disp[1] then
			outlineText(c_disp[1],xps.c,yps.c[1],'c_disp')
		end
	end
end

function drawPoem()
	if poembg then
		lg.draw(poembg, 240, 0)
	elseif yuri_3 then
		lg.setColor(255,0,0,192)
		lg.rectangle('fill',240,0,800,725)
	else
		lg.setColor(243,243,243)
		lg.rectangle('fill',240,0,800,725)
	end
	if poem_author == 'monika' then
		lg.setFont(m1)
	elseif poem_author == 'yuri' and not yuri_3 then
		lg.setFont(y1)
	elseif poem_author == 'sayori' then
		lg.setFont(s1)
	elseif poem_author == 'natsuki' then
		lg.setFont(n1)
	end
	lg.setColor(0,0,0)
	if poemtext and poem_scroll then
		for i = 1, #poemtext do
			if poemtext[i] then
				lg.print(poemtext[i],250+(poem_scroll.x*30)-30,((poem_scroll.y*24)+(i*35))-25)
			end
		end
	end
end

function drawConsole()
	if console_enabled then
		lg.setColor(51,51,51,191)
		lg.rectangle('fill',0,0,500,180)
		lg.setColor(255,255,255)
		lg.setFont(consolefont)
		lg.print('> '..console_text1,0,0)
		lg.print(console_text2,15,30)
		lg.print(console_text3,15,50)
		lg.print(console_text4,15,70)
	end
end

function nearest(a,b)
	local n = 3
	if (a >= b - n) and (a <= b + n) then
		return true
	else
		return false
	end
end

function updateCharacter(set,a,b,px,py,chset)
	if not b then b = '' end
	set.a = a
	set.b = b
	
	if px and xaload == 0 then
		chset.x = set.x
		chset.y = px*3.2
		if chset.x < chset.y then
			chset.z = chset.y - chset.x
		elseif chset.x > chset.y then
			chset.z = chset.x - chset.y
		else
			chset.z = 0
		end
	end
	if py then set.y = py end
end

function updateSayori(a,b,px,py)
	updateCharacter(s_Set,a,b,px,py,changeX.s)
	if xaload == 0 then loadSayori() end
end

function updateYuri(a,b,px,py)
	updateCharacter(y_Set,a,b,px,py,changeX.y)
	if xaload == 0 then loadYuri() end
end

function updateNatsuki(a,b,px,py)
	updateCharacter(n_Set,a,b,px,py,changeX.n)
	if xaload == 0 then loadNatsuki() end
end

function updateMonika(a,b,px,py)
	updateCharacter(m_Set,a,b,px,py,changeX.m)
	if xaload == 0 then loadMonika() end
end

function hideCharacter(set,chset)
	if xaload == 0 then
		chset.x = set.x
		chset.y = -675
		chset.z = chset.x - chset.y
	end
end

function hideSayori()
	hideCharacter(s_Set,changeX.s)
end

function hideYuri()
	hideCharacter(y_Set,changeX.y)
end

function hideNatsuki()
	hideCharacter(n_Set,changeX.n)
end

function hideMonika()
	hideCharacter(m_Set,changeX.m)
end

function hideAll()
	s_Set = {a='',b='',x=-675,y=4}
	y_Set = {a='',b='',x=-675,y=4}
	n_Set = {a='',b='',x=-675,y=4}
	m_Set = {a='',b='',x=-675,y=4}
	unloadAll()
end

function drawCharacter(l,r,a,set,chset)
	set.y = 0
	if set.b~='' then
		if set == n_Set and (n_Set.a=='5' or n_Set.a=='5b') then --set natsuki's head x and y pos
			xh = set.x + 14
			yh = set.y + 18
		else
			xh = set.x
			yh = set.y
		end
		if a then lg.draw(a,xh,yh) end
	end
	
	lg.draw(l, set.x, set.y)
	
	local with_set = with_r
	if set == y_Set then
		with_set = with_yr
	end
	for i = 1, #with_set do
		if with_set[i] == set.a then
			lg.draw(r,set.x,set.y)
		end
	end
	
	if set.x ~= chset.y and (autoskip >= 1 or unitimer >= uniduration) then
		set.x = chset.y
	elseif set.x < chset.y and not nearest(set.x,chset.y) then
		set.x = math.ceil(chset.x + easeQuadInOut(unitimer,0,chset.z,uniduration))
	elseif set.x > chset.y and not nearest(set.x,chset.y) then
		set.x = math.floor(chset.x - easeQuadInOut(unitimer,0,chset.z,uniduration))
	end
end

function drawSayori()
	drawCharacter(sl,sr,s_a,s_Set,changeX.s)
end

function drawYuri()
	drawCharacter(yl,yr,y_a,y_Set,changeX.y)
end

function drawNatsuki()
	drawCharacter(nl,nr,n_a,n_Set,changeX.n)
end

function drawMonika()
	drawCharacter(ml,mr,m_a,m_Set,changeX.m)
end

