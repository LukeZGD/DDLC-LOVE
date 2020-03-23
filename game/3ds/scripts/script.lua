require('loader/events')
local stext
local tspd
local tagtimer = 0
local pchapter
local aa
local script_poemresponsesx = false
is3DS = true
history  = {}

function wrap(str, limit)
	local here = 1
	local function check(sp, st, word, fi)
		if fi - here > limit then
			here = st
			return "\n"..word
		end
	end
	return str:gsub("(%s+)()(%S+)()", check)
end

function cw(p1, stext, tag)
	if p1 == 's' then
		ct = 'Sayori'
	elseif p1 == 'n' then
		ct = 'Natsuki'
	elseif p1 == 'y' then
		ct = 'Yuri'
	elseif p1 == 'm' then
		ct = 'Monika'
	elseif p1 == 'ny' then
		ct = 'Nat & Yuri'
	elseif p1 == 'mc' then
		ct = player
	elseif p1 == 'bl' then
		ct = ''
	elseif p1 then
		ct = p1
	else
		ct = 'Error'
	end
	
	if stext == nil then stext = '' end
	
	--auto add quotation marks
	if p1 ~= 'bl' then
		stext = '"'..stext..'"'
	end
	
	--text drip for scripts
	if autoskip > 0 then
		tspd = 10000
	elseif tag == 'fast' or tag == 'nwfast' then
		tspd = 250
	elseif tag == 'slow' then
		tspd = 25
	elseif chapter == 30 then
		tspd = 50
	else
		tspd = settings.textspd
	end
	textx = dripText(stext,tspd,myTextStartTime)
	
	if style_edited then
		c_a1 = 35
	else
		c_a1 = 45
	end
	c_disp = wrap(textx,c_a1)
	
	local temptext = wrap(stext,45)
	local temptext2 = ct..': '..temptext
	if history[1] ~= temptext and history[1] ~= temptext2 then
		for i = 12, 1, -1 do
			history[i] = history[i-1]
		end
		if style_edited then
			history[1] = ''
		elseif ct == '' then
			history[1] = temptext
		else
			history[1] = temptext2
		end
	end
	
	local slen = string.len(stext)
	if tag then
		tagtimer = tagtimer + (settings.textspd / 100)
		if tagtimer >= (settings.textspd + slen) / 4 then
			if tag == 'nw' or tag == 'nwfast' then
				scriptJump(cl+1)
			end
			tagtimer = 0
			if autotimer > 0 then autotimer = 0.01 end
		end
	else
		tagtimer = 0
	end
end

function scriptCheck()
	c_disp = ''
	
	if poemsread ~= -1 and poemresponses and script_poemresponsesx then
		poemresponses()
	elseif poemsread ~= -1 then
		require('scripts/eng/script-poemresponses')
		require('scripts/eng/poems')
		if persistent.ptr == 0 then
			require('scripts/eng/script-poemresponses1')
		else
			require('scripts/eng/script-poemresponses2')
		end
		script_poemresponsesx = true
	else
		script_poemresponsesx = false
	end
	
	if persistent.ptr == 2 then 
		pchapter = chapter - 20
	else
		pchapter = chapter
	end
	if poemwinner[pchapter] == 'Sayori' then aa = 's'
	elseif poemwinner[pchapter] == 'Natsuki' then aa = 'n'
	elseif poemwinner[pchapter] == 'Yuri' then aa = 'y'
	end
	
	if persistent.ptr == 0 and chapter ~= 4 and ((cl>=423 and cl<652) or (cl>=1359 and cl<1638)) then
		loadstring(poemwinner[pchapter]..'_exclusive_'..(loadstring('return appeal.'..aa)())..'()')()
	elseif persistent.ptr == 2 and cl>=358 and cl<665 then
		loadstring(poemwinner[pchapter]..'_exclusive2_'..(loadstring('return appeal.'..aa)())..'()')()
	elseif persistent.ptr == 2 and cl>=1235 and cl<=1445 then
		Yuri_exclusive2_2_ch22()
	elseif persistent.ptr == 0 and cl == 652 and chapter >= 2 and chapter ~= 4 then
		poeminitialize()
	else
		loadstring('ch'..chapter..'script()')()
	end
end	

function bl (say) return cw('bl',say) end
function mc (say) return cw('mc',say) end
function s (say) return cw('s',say) end
function n (say) return cw('n',say) end
function y (say) return cw('y',say) end
function m (say) return cw('m',say) end

function pause(t)
	autotimer = 0
	if event_enabled then textbox_enabled = false end
	tagtimer = tagtimer + dt
	if tagtimer >= t then
		scriptJump(cl+1)
		tagtimer = 0
		textbox_enabled = true
	end
end

function scriptJump(nu, fu, au)
	xaload = -1
	if nu then cl = nu end
	if au then
		autotimer = au
		autoskip = au
	end
	if fu and fu ~= '' then
		loadstring(fu..'()')()
	end		
end

function choice_enable(x)
	if menu_enabled ~= true then
		if x == 'dialog' then
			menu_enable('dialog')
		else
			menu_enable('choice')
		end
		autotimer = 0
		autoskip = 0
	end
end

function poeminitialize(y)
	poemsread = 0
	readpoem = {s=0,n=0,y=0,m=0}
	if persistent.ptr == 0 then
		choices = {'Sayori','Natsuki','Yuri','Monika'}
	elseif y == 'y_ranaway' then
		choices = {'Natsuki','Monika'}
	else
		choices = {'Natsuki','Yuri','Monika'}
	end
	scriptJump(666,'',0)
end

function glitchtext(range)
	local aaa
	local gtextstring = ''
	local chars = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
				   'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',
				   '0','1','2','3','4','5','6','7','8','9'}
	
	for i = 1, range do
		aaa = math.random(1, #chars)
		gtextstring = gtextstring..chars[aaa]
	end
	
	return gtextstring
end

function space(range)
	local spaces = ' '
	for i = 1, range do
		spaces = spaces..' '
	end
	
	return spaces
end


function updateConsole(text,text2,text3)
	if console_enabled ~= true then console_enabled = true end
	console_text1 = dripText(text,30,myTextStartTime)
	if text2 then console_text2 = text2 else console_text2 = '' end
	if text3 then console_text3 = text3 else console_text3 = '' end
end
