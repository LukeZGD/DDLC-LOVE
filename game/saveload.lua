sa = "" --sayori
sb = ""
sx = 80
ya = "" --yuri
yb = ""
yx = 80
yy = 0
na = "" --natsuki
nb = ""
nx = 80
ma = "" --just monika
mb = ""
mx = -40

chapter = 0
bg1 = ""
audio1 = 2
cg1 = ""
savenumber = 1
settings = {100,'Bottom',0}

choicepick = ''
poemsread = -1
readpoem = {0,0,0,0}
choices = {"","","",""}
s_poemappeal = {0,0,0}
n_poemappeal = {0,0,0}
y_poemappeal = {0,0,0}
poemwinner = {"","",""}
s_appeal = 0
n_appeal = 0
y_appeal = 0
y_exclusivewatched = ''
n_exclusivewatched = ''
ch4_name = ''

function savegame()
	savedata = "cl = "..cl.."\
player = '"..player.."'\
bg1 = '"..bg1.."'\
audio1 = '"..audio1.."'\
cg1 = '"..cg1.."'\
ct = '"..ct.."'\
sx = "..sx.."\
yx = "..yx.."\
nx = "..nx.."\
mx = "..mx.."\
sa = '"..sa.."'\
sb = '"..sb.."'\
ya = '"..ya.."'\
yb = '"..yb.."'\
na = '"..na.."'\
nb = '"..nb.."'\
ma = '"..ma.."'\
mb = '"..mb.."'\
chapter = "..chapter.."\
settings = {"..settings[1]..",'"..settings[2].."',"..settings[3].."}\
readpoem = {"..readpoem[1]..","..readpoem[2]..","..readpoem[3]..","..readpoem[4].."}\
choices = {'"..choices[1].."','"..choices[2].."','"..choices[3].."','"..choices[4].."'}\
choicepick = '"..choicepick.."'\
poemsread = "..poemsread.."\
s_poemappeal = {"..s_poemappeal[1]..","..s_poemappeal[2]..","..s_poemappeal[3].."}\
n_poemappeal = {"..n_poemappeal[1]..","..n_poemappeal[2]..","..n_poemappeal[3].."}\
y_poemappeal = {"..y_poemappeal[1]..","..y_poemappeal[2]..","..y_poemappeal[3].."}\
poemwinner = {'"..poemwinner[1].."','"..poemwinner[2].."','"..poemwinner[3].."'}\
s_appeal = "..s_appeal.."\
n_appeal = "..n_appeal.."\
y_appeal = "..y_appeal.."\
y_exclusivewatched = '"..y_exclusivewatched.."'\
n_exclusivewatched = '"..n_exclusivewatched.."'\
ch4_name = '"..ch4_name.."'"

	love.filesystem.write("save"..savenumber..".sav", savedata)--other settings might be added!
end

function loadgame()
	loadsavefile = loadstring(love.filesystem.read("save"..savenumber..".sav"))
	loadsavefile()
	loadsavefile = nil
	collectgarbage()
end

function loadupdate()
	xaload = 0
	audioStop()
	bgUpdate(bg1)
	audioUpdate(audio1)
	cgUpdate(cg1)
end

function checkchr()
	sayorichr = love.filesystem.isFile("sayori.chr")
	monikachr = love.filesystem.isFile("monika.chr")
	if love.filesystem.isFile("save1.sav") then loadgame() end
	
	if sayorichr == false or cl == 10000 then --set up very early act 1 end
		timer = 501
		endbg = love.graphics.newImage('images/gui/end.png')
		s_killearly = love.graphics.newImage('images/cg/s_kill_early.png')
		state = "s_kill_early"
		audioUpdate('s_kill_early')
	else --load title screen
		l_timer = 100
	end
end

function resetchr(x)
	if x == 1 or x == nil then
		love.filesystem.write("monika.chr","JUSTMONIKA")
		love.filesystem.write("sayori.chr","JUSTSAYORI")
		love.filesystem.write("yuri.chr","JUSTYURI")
		love.filesystem.write("natsuki.chr","JUSTNATSUKI")
		love.filesystem.write("firstrun","1")
	elseif x == 2 then
		love.filesystem.write("yuri.chr","JUSTYURI")
		love.filesystem.write("natsuki.chr","JUSTNATSUKI")
	end
end