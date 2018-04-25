function savegame()
	--love.filesystem.write("save.sav", "savefile={"..ch0ln..",'"..player.."'}")
	love.filesystem.write("save.sav", tostring(ch0ln))
	love.filesystem.write("player.sav", player)
end

function loadgame()
	ch0ln = love.filesystem.read("save.sav")
	player = love.filesystem.read("player.sav")
	ch0ln = tonumber(ch0ln)
	--love.filesystem.load("save.sav")()
end

function filecheck()

	local file = love.filesystem.isFile("save.sav")

	if file then
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
	else
		alpha = 255
		timer = 501
		ch0ln = 10016
		bgCheck()
		state = "newgame"
	end
	
end

function checkchr()
	local sayorichr = love.filesystem.isFile("sayori.chr")
	local monikachr = love.filesystem.isFile("monika.chr")
	loadgame()
	
	if sayorichr and monikachr then --load title screen
		resetchr2()
		state = "splash1"
		audioUpdate('1') 
	elseif sayorichr == false or ch0ln == 10000 then --set up very early act 1 end
		player = "..."
		timer = 501
		endbg = love.graphics.newImage('./images/gui/end.png')
		s_killearly = love.graphics.newImage('./images/cg/s_kill_early.png')
		state = "s_kill_early"
		audioUpdate('s_kill_early')
	elseif monikachr == false then --set up early act 1 end
		player = "..."
		ch0ln = 10001
		resetchr2()
		state = "splash1" 
		audioUpdate('1') 
	end
	
end
	
function resetchr()

	love.filesystem.write("monika.chr","JUSTMONIKA")
	love.filesystem.write("sayori.chr","JUSTSAYORI")
	love.filesystem.write("yuri.chr","JUSTYURI")
	love.filesystem.write("natsuki.chr","JUSTNATSUKI")

end

function resetchr2()

	love.filesystem.write("yuri.chr","JUSTYURI")
	love.filesystem.write("natsuki.chr","JUSTNATSUKI")
	
end

	