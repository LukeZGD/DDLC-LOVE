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
	
	--word wrapping
	slen = string.len(textx)
	ca = string.sub(textx, 1, caa)
	local i = 1
	local j = 1
	local k = 1
	
	--new word wrapping (works, but cuts out sentences, so it's commented out for now)
	--[[
	if slen >= 46 then
		repeat
			i = i + 1
			caa = string.find(stext, '%s', 46-i)
		until caa
		if slen < 96 then cba=150 end
		cb = string.sub(textx, caa+1, cba)
	end 
	
	if slen >= 96 then
		repeat
			j = j + 1
			cba = string.find(stext, '%s', 96-j) 
		until cba
		if slen < 146 then cca=200 end
		cc = string.sub(textx, cba+1, cca)
	end
	
	if slen >= 146 then
		repeat
			k = k + 1
			cca = string.find(stext, '%s', 146-k)
		until cca
		cd = string.sub(textx, cca+1)
	end
	]]
	
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
	love.graphics.setBackgroundColor ( 0, 0, 0 )
	ca = ''
	cb = ''
	cc = ''
	cd = ''
	
	if poemsread ~= -1 then
		poemresponses()
	else
		script_poemresponses = nil
		script_poems = nil
	end
	
	if (cl>=423 and cl<652) or (cl>=1359 and cl<1638) then
		loadstring(poemwinner[chapter]..'_exclusive_'..(loadstring('return '..poemwinner[chapter]..'_appeal')())..'()')()
		--holy crap I can't believe this worked ^^
	elseif cl == 652 and chapter >= 2 then
		poeminitialize()
	elseif script_main then
		loadstring('ch'..chapter..'script()')()
	else
		changeState('game',1)
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
		loadstring(fu.."()")()
	end		
end

function poeminitialize(y)
	poemsread = 0
	readpoem = {s=0,n=0,y=0,m=0}
	choices = {'Sayori','Natsuki','Yuri','Monika'}
	cl = 666
	xaload = -1
	autotimer = 0
	autoskip = 0
	script_poemresponses = require 'scripts.script-poemresponses'
	script_poems = require 'scripts.poems'
end