require 'scripts.event'

local stext
local c_a = {}
local c_a1 = {}
local tspd
local tagtimer = 0
local pchapter
local aa

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
	else
		tspd = settings.textspd
	end
	textx = dripText(stext,tspd,myTextStartTime)
	
	--word wrap
	slen = string.len(textx)
	c_a1 = {45,95,145}
	if style_edited then c_a1 = {35,65,95} end
	
	for i = 1, 3 do
		c_a[i] = string.find(stext, '%s', c_a1[i])
		if c_a[i] == nil then c_a[i] = c_a1[i] + 3 end
	end
	
	c_disp[1] = string.sub(textx, 1, c_a[1])
	for i = 2, 4 do
		if slen >= c_a[i-1] then
			c_disp[i] = string.sub(textx, c_a[i-1]+1, c_a[i])
		end
	end
	
	if tag then
		tagtimer = tagtimer + (settings.textspd / 100)
		if tagtimer >= (settings.textspd + slen) / 4 then
			if tag == 'nw' or tag == 'nwfast' then
				newgame_keypressed('a')
			end
			tagtimer = 0
			if autotimer > 0 then autotimer = 0.01 end
		end
	else
		tagtimer = 0
	end
end

function scriptCheck()
	c_disp = {'','','',''}
	
	if poemsread ~= -1 and poemresponses then
		poemresponses()
	elseif poemsread ~= -1 then
		script_poemresponses = require 'scripts.script-poemresponses'
		script_poems = require 'scripts.poems'
		if persistent.ptr == 0 then
			script_poemresponsesx = require 'scripts.script-poemresponses1'
		else
			script_poemresponsesx = require 'scripts.script-poemresponses2'
		end
	else
		script_poemresponses = nil
		script_poems = nil
		script_poemresponsesx = nil
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
	elseif script_main then
		loadstring('ch'..chapter..'script()')()
	else
		changeState('game',0)
	end
end	

function bl (say) return cw('bl',say) end
function mc (say) return cw('mc',say) end
function s (say) return cw('s',say) end
function n (say) return cw('n',say) end
function y (say) return cw('y',say) end
function m (say) return cw('m',say) end

function scriptJump(nu, fu, au)
	xaload = -1
	unitimer = 0
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
	cl = 666
	xaload = -1
	autotimer = 0
	autoskip = 0
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