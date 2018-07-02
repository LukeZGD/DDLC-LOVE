local stext
local caa
local cba
local cca

function cw(p1, stext)
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
	elseif p1 == 'g1' then
		ct = 'Girl 1'
	elseif p1 == 'g2' then
		ct = 'Girl 2'
	elseif p1 == 'g3' then
		ct = 'Girl 3'
	elseif p1 == '???' then
		ct = '???'
	elseif p1 == 'mc' then
		ct = player
	elseif p1 == 'bl' then
		ct = ''
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
end

function scriptCheck()
	love.graphics.setBackgroundColor(0,0,0)
	ca = ''; cb = ''; cc = ''; cd = ''
	
	if poemsread ~= -1 and poemresponses then
		poemresponses()
	elseif poemsread ~= -1 then
		script_poemresponses = require 'scripts.script-poemresponses'
		script_poems = require 'scripts.poems'
	else
		script_poemresponses = nil
		script_poems = nil
	end
	
	if persistent.playthrough == 0 and chapter ~= 4 and ((cl>=423 and cl<652) or (cl>=1359 and cl<1638)) then
		loadstring(poemwinner[chapter]..'_exclusive_'..(loadstring('return '..poemwinner[chapter]..'_appeal')())..'()')()
	elseif persistent.playthrough == 0 and cl == 652 and chapter >= 2 and chapter ~= 4 then
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
	if persistent.playthrough == 0 then
		choices = {'Sayori','Natsuki','Yuri','Monika'}
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
		end
	end
end

function event_initstart(etype,arg1,arg2)
	event_init(etype)
	if xaload > 2 then event_start(etype,arg1,arg2) end
end

function gtext(range)
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