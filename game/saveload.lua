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
savenumber = 1

function savegame()
	love.filesystem.write("save"..savenumber..".sav", "savefile={"..cl..",'"..player..[[
',]]..s_poemappeal..","..n_poemappeal..","..y_poemappeal..",'"..poemwinner..[[
',]]..sx..","..yx..","..nx..","..mx..[[
,']]..sa.."','"..sb.."','"..ya.."','"..yb..[[
',']]..na.."','"..nb.."','"..ma.."','"..mb..[[
',]]..chapter..",'"..bg1.."','"..audio1.."','"..cg1.."','"..ct.."'}") --other settings might be added here!
end

function loadgame()
	loadsavefile = loadstring(love.filesystem.read("save"..savenumber..".sav"))
	loadsavefile()
	cl = savefile[1]
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
	ya = savefile[13]
	yb = savefile[14]
	na = savefile[15]
	nb = savefile[16]
	ma = savefile[17]
	mb = savefile[18]
	
	chapter = savefile[19]
end

function loadupdate()
	bg1 = savefile[20]
	audio1 = savefile[21]
	cg1 = savefile[22]
	ct = savefile[23]
	xaload = 0
	bgUpdate(bg1)
	audioUpdate(audio1)
	cgUpdate(cg1)
end

function filecheck()

	local file = love.filesystem.isFile("save1.sav")

	if file then
		loadgame()
		if cl == 0 then
			alpha = 255
			timer = 501
			cl = 10016
			state = "newgame"
		else
			checkchr()
		end
	else
		alpha = 255
		timer = 501
		cl = 10016
		state = "newgame"
	end
	
end

function checkchr()
	local sayorichr = love.filesystem.isFile("sayori.chr")
	local monikachr = love.filesystem.isFile("monika.chr")
	
	if sayorichr and monikachr then --load title screen
		resetchr2()
		state = 'load'
	elseif sayorichr == false or cl == 10000 then --set up very early act 1 end
		player = "..."
		timer = 501
		endbg = love.graphics.newImage('./images/gui/end.png')
		s_killearly = love.graphics.newImage('./images/cg/s_kill_early.png')
		state = "s_kill_early"
		audioUpdate('s_kill_early')
	elseif monikachr == false then --set up early act 1 end
		player = "..."
		cl = 10001
		resetchr2()
		state = 'load'
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

	