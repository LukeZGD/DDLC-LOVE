require "scripts.script-ch0"
require "scripts.script-ch1"
require "scripts.script-exclusives-sayori"
require "scripts.script-exclusives-natsuki"
require "scripts.script-exclusives-yuri"
require "scripts.script-poemresponses"
require "scripts.poems"

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
		ct = '...???'
	end
	
	if stext == nil then stext = '' end
	
	--auto add quotation marks
	if p1 ~= 'bl' then
		stext = '"'..stext..'"'
	end
	
	textx = dripText(stext,settings[1],myTextStartTime)
		
	--word wrapping haha
	slen = string.len(textx)
	ca = string.sub(textx, 1, caa)
	
	if slen >= 45 then 
		caa = string.find(stext, "%s", 45)
		if caa == nil then caa=50 end
		if slen < 95 then cba=100 end
		cb = string.sub(textx, caa+1, cba)
	end 
	
	if slen >= 95 then 
		cba = string.find(stext, "%s", 95) 
		if cba == nil then cba=100 end
		if slen < 145 then cca=150 end
		cc = string.sub(textx, cba+1, cca)
	end
	
	if slen >= 145 then 
		cca = string.find(stext, "%s", 145)
		if cca == nil then cca=150 end
		cd = string.sub(textx, cca+1)
	end
	
end

function scriptCheck()
	love.graphics.setBackgroundColor ( 0, 0, 0 )
	ca = ""
	cb = ""
	cc = ""
	cd = ""
	
	if poemsread ~= -1 then
		poemresponses()
	end
	
	if chapter == 0 then
		ch0script()
	elseif chapter == 1 then
		ch1script()
	elseif chapter == 2 then
		ch2script()
	elseif chapter == 3 then
		ch3script()
	elseif chapter == 4 then
		ch4script()
	elseif chapter == 5 then
		ch5script()
	end
end	