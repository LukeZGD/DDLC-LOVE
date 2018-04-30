s_poemappeal = 0
n_poemappeal = 0
y_poemappeal = 0

sx = 80
yx = 80
nx = 80
mx = -40

sa = "" --sayori
sb = ""
sc = ""
sy = 0

ya = "" --yuri
yb = ""
yc = ""
yy = 0

na = "" --natsuki
nb = ""
nc = ""
ny = 0

ma = "" --just monika
mb = ""
mc = ""
my = 0

chapter = 0
poemwinner = ""
bg1 = ""
audio1 = 2
cg1 = ""
cg2 = ""
savenumber = 1

function savegame()
	love.filesystem.write("save"..savenumber..".sav", "savefile={"..ch0ln..",'"..player..[[
',]]..s_poemappeal..","..n_poemappeal..","..y_poemappeal..",'"..poemwinner..[[
',]]..sx..","..yx..","..nx..","..mx..[[
,']]..sa.."','"..sb.."','"..sc.."','"..ya.."','"..yb.."','"..yc..[[
',']]..na.."','"..nb.."','"..nc.."','"..ma.."','"..mb.."','"..mc..[[
',]]..chapter..",'"..bg1.."','"..audio1.."','"..cg1.."','"..cg2.."'}") --other settings might be added here!
end

function loadgame()
	loadsavefile = loadstring(love.filesystem.read("save"..savenumber..".sav"))
	loadsavefile()
	ch0ln = savefile[1]
	player = savefile[2]
	
	s_poemappeal = savefile[3]
	n_poemappeal = savefile[4]
	y_poemappeal = savefile[5]
	poemwinner = savefile[6]
	
	sx = savefile[7]
	yx = savefile[8]
	nx = savefile[9]
	mx = savefile[10]
	
	sa = savefile[11]
	sb = savefile[12]
	sc = savefile[13]
	ya = savefile[14]
	yb = savefile[15]
	yc = savefile[16]
	na = savefile[17]
	nb = savefile[18]
	nc = savefile[19]
	ma = savefile[20]
	mb = savefile[21]
	mc = savefile[22]
	
	chapter = savefile[23]
end

function loadupdate()
	bg1 = savefile[24]
	audio1 = savefile[25]
	cg1s = savefile[26]
	cg2s = savefile[27]
	xaload = 0
	bgUpdate(bg1)
	audioUpdate(audio1)
	cgUpdate (cg1s, cg2s)
end

function filecheck()

	local file = love.filesystem.isFile("save1.sav")

	if file then
		loadgame()
		if ch0ln == 0 then
			alpha = 255
			timer = 501
			ch0ln = 10016
			state = "newgame"
		else
			checkchr()
		end
	else
		alpha = 255
		timer = 501
		ch0ln = 10016
		state = "newgame"
	end
	
end

function checkchr()
	local sayorichr = love.filesystem.isFile("sayori.chr")
	local monikachr = love.filesystem.isFile("monika.chr")
	
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

	