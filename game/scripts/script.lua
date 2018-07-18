local stext
local caa
local cba
local cca
local tspd
local tagtimer
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
	textx = dripText(stext,settings.textspd,myTextStartTime)
	
	--word wrap
	slen = string.len(textx)
	ca = string.sub(textx, 1, caa)
	
	if slen >= 45 then 
		caa = string.find(stext, '%s', 45)
		if caa == nil then caa=50 end
		if slen < 95 then cba=100 end
		cb = string.sub(textx, caa+1, cba)
	end 
	
	if slen >= 95 then 
		cba = string.find(stext, '%s', 95) 
		if cba == nil then cba=100 end
		if slen < 145 then cca=150 end
		cc = string.sub(textx, cba+1, cca)
	end
	
	if slen >= 145 then 
		cca = string.find(stext, '%s', 145)
		if cca == nil then cca=150 end
		cd = string.sub(textx, cca+1)
	end
	
	if tag then
		tagtimer = tagtimer + (settings.textspd / 100)
		if tagtimer >= (settings.textspd - (slen+35)) then
			if tag == 'fast' or tag == 'nwfast' then
				settings.textspd = tspd
			end
			if tag == 'nw' or tag == 'nwfast' then
				scriptJump(cl+1)
			end
		elseif tag == 'fast' or tag == 'nwfast' then
			tspd = settings.textspd
			settings.textspd = 200
		end
	else
		tagtimer = 0
	end
end

function scriptCheck()
	love.graphics.setBackgroundColor(0,0,0)
	ca = ''; cb = ''; cc = ''; cd = ''
	
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
	
	if persistent.ptr == 0 and chapter ~= 4 and ((cl>=423 and cl<665) or (cl>=1235 and cl<1638)) then
		loadstring(poemwinner[pchapter]..'_exclusive_'..(loadstring('return appeal.'..aa)())..'()')()
	elseif persistent.ptr == 2 and ((cl>=358 and cl<652) or (cl>=1359 and cl<1638)) then
		loadstring(poemwinner[pchapter]..'_exclusive2_'..(loadstring('return appeal.'..aa)())..'()')()
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
	if nu then cl = nu end
	if au then
		autotimer = au
		autoskip = au
	end
	if fu and fu ~= '' then
		loadstring(fu.."()")()
	end		
end

function choice_enable()
	if menu_enabled ~= true then
		menu_enable('choice')
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

function event_init(etype)
	if xaload == 2 then
		eventscript = require 'scripts.event'
		if etype == 's_kill' then --Sayo-nara.... load sprites
			s_kill = love.graphics.newImage('images/cg/s_kill/s_kill.png')
			s_kill2 = love.graphics.newImage('images/cg/s_kill/s_kill2.png')
			s_killzoom = love.graphics.newImage('images/cg/s_kill/s_killzoom.png')
			s_kill_bg = love.graphics.newImage('images/cg/s_kill/s_kill_bg.png')
			s_kill_bg2 = love.graphics.newImage('images/cg/s_kill/s_kill_bg2.png')
			s_kill_bgzoom = love.graphics.newImage('images/cg/s_kill/s_kill_bgzoom.png')
			splash_glitch = love.graphics.newImage('images/bg/splash-glitch.png')
			exception = love.graphics.newImage('images/cg/s_kill/ex2.png')
		elseif etype == 'endscreen' then
			bgch = love.graphics.newImage('images/gui/end.png')
		elseif etype == 's_glitch' then
			s_glitch1 = love.graphics.newImage('images/sayori/glitch1.png')
			s_glitch2 = love.graphics.newImage('images/sayori/glitch2.png')
		elseif etype == 'm_glitch1' then
			ml = love.graphics.newImage('images/monika/g2.png')
		elseif etype == 'n_glitch1' then
			nl = love.graphics.newImage('images/natsuki/glitch1.png')
		elseif etype == 'n_blackeyes' then
			n_blackeyes = love.graphics.newImage('images/natsuki/blackeyes.png')
		elseif etype == 'ny_argument' then
			vignette = love.graphics.newImage('images/bg/vignette.png')
			animframe1 = love.graphics.newImage('images/bg/noise1.png')
			animframe2 = love.graphics.newImage('images/bg/noise2.png')
			animframe3 = love.graphics.newImage('images/bg/noise3.png')
			animframe4 = love.graphics.newImage('images/bg/noise4.png')
		elseif etype == 'ny_argument2' then
			ml = love.graphics.newImage('images/monika/ac.png')
		elseif etype == 'yuri_glitch' then
			animframe1 = love.graphics.newImage('images/yuri/glitch1.png')
			animframe2 = love.graphics.newImage('images/yuri/glitch2.png')
			animframe3 = love.graphics.newImage('images/yuri/glitch3.png')
		end
	end
end

function event_initstart(etype,arg1,arg2)
	event_init(etype)
	if xaload > 2 then event_start(etype,arg1,arg2) end
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