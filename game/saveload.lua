function savegame()
	love.filesystem.write("save.sav", tostring(ch0ln))
	love.filesystem.write("player.sav", player)
end

function loadgame()
	ch0ln = love.filesystem.read("save.sav")
	player = love.filesystem.read("player.sav")
	ch0ln = tonumber(ch0ln)
end

function filecheck()
	--open save file
	file = love.filesystem.isFile("save.sav")

	--save file read
	if file == false then
		alpha = 255
		timer = 501
		ch0ln = 10016
		bgCheck()
		state = "newgame"
	else
		loadgame()
		if ch0ln == 0 then
			alpha = 255
			timer = 501
			ch0ln = 10016
			bgCheck()
			state = "newgame"
		else
			checkchr()
		end
	end
	
end

function checkchr()
	sayorichr = love.filesystem.isFile("sayori.chr")
	monikachr = love.filesystem.isFile("monika.chr")
	loadgame()
	
	if sayorichr == false or ch0ln == 10000 then --set up very early act 1 end
		player = "..."
		timer = 501
		endbg = love.graphics.newImage('./images/gui/end.png')
		s_killearly = love.graphics.newImage('./images/cg/s_kill_early.png')
		state = "s_kill_early"
		audioUpdate('s_kill_early')
	elseif monikachr == false then --set up early act 1 end
		player = "..."
		ch0ln = 10001
		savegame()
		resetchr2()
		state = "splash1" 
		audioUpdate('1') 
	elseif sayorichr == true and monikachr == true then --load title screen
		resetchr2()
		state = "splash1"
		audioUpdate('1') 
	end
	
end
	
function resetchr()
	--monikachr = io.open("./characters/monika.chr", "r")
	--sayorichr = io.open("./characters/sayori.chr", "r")
	--yurichr = io.open("./characters/yuri.chr", "r")
	--natsukichr = io.open("./characters/natsuki.chr", "r")
	
	love.filesystem.write("monika.chr","JUSTMONIKA")
	love.filesystem.write("sayori.chr","JUSTSAYORI")
	love.filesystem.write("yuri.chr","JUSTYURI")
	love.filesystem.write("natsuki.chr","JUSTNATSUKI")

end

function resetchr2()
	--yurichr = io.open("./characters/yuri.chr", "w")
	--natsukichr = io.open("./characters/natsuki.chr", "w")
	
	love.filesystem.write("yuri.chr","JUSTYURI")
	love.filesystem.write("natsuki.chr","JUSTNATSUKI")
	
end

	