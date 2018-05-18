sa = "" --sayori
sb = ""
sx = 80
sy = 0
ya = "" --yuri
yb = ""
yx = 80
yy = 0
na = "" --natsuki
nb = ""
nx = 80
ny = 0
ma = "" --just monika
mb = ""
mx = -40
my = 0

chapter = 0
bg1 = ""
audio1 = 2
cg1 = ""
savenumber = 1
setting_textspd = 100
setting_textloc = 'Bottom'
setting_fmode = 0

choicepick = ''
poemsread = -1
s_readpoem = 0
n_readpoem = 0
y_readpoem = 0
m_readpoem = 0
choices = {"","","",""}
s_poemappeal = {0,0,0}
n_poemappeal = {0,0,0}
y_poemappeal = {0,0,0}
poemwinner = {"","",""}
s_appeal = 0
n_appeal = 0
y_appeal = 0
ch1_choice = ''
y_exclusivewatched = ''
n_exclusivewatched = ''
ch4_name = ''
sayori_confess = ''

function savegame()
	if chapter <= 5 then
		savchapter = ",'"..y_exclusivewatched.."','"..n_exclusivewatched.."','"..ch4_name.."'}"
	end
	
	love.filesystem.write("save"..savenumber..".sav", "savefile={"..cl..",'"..player..[[
',]]..sx..","..yx..","..nx..","..mx..[[
,']]..sa.."','"..sb.."','"..ya.."','"..yb.."','"..na.."','"..nb.."','"..ma.."','"..mb..[[
',]]..chapter..",'"..bg1.."','"..audio1.."','"..cg1.."','"..ct..[[
',]]..setting_textspd..",'"..setting_textloc.."',"..setting_fmode..",0,0,0,0"..[[
,']]..choicepick..[[
',]]..s_poemappeal[1]..","..s_poemappeal[2]..","..s_poemappeal[3]..[[
,]]..n_poemappeal[1]..","..s_poemappeal[2]..","..n_poemappeal[3]..[[
,]]..y_poemappeal[1]..","..y_poemappeal[2]..","..y_poemappeal[3]..[[
,']]..poemwinner[1].."','"..poemwinner[2].."','"..poemwinner[3]..[[
',]]..s_appeal..","..n_appeal..","..y_appeal..savchapter) --other settings might be added!
end

function loadgame()
	loadsavefile = nil
	collectgarbage()
	loadsavefile = loadstring(love.filesystem.read("save"..savenumber..".sav"))
	loadsavefile()
	cl = savefile[1]
	player = savefile[2]
	sx = savefile[3]
	yx = savefile[4]
	nx = savefile[5]
	mx = savefile[6]
	sa = savefile[7]
	sb = savefile[8]
	ya = savefile[9]
	yb = savefile[10]
	na = savefile[11]
	nb = savefile[12]
	ma = savefile[13]
	mb = savefile[14]
	chapter = savefile[15]
	setting_textspd = savefile[20]
	setting_textloc = savefile[21]
	setting_fmode = savefile[22]
	choicepick = savefile[27]
	s_poemappeal[1] = savefile[28]
	s_poemappeal[2] = savefile[29]
	s_poemappeal[3] = savefile[30]
	n_poemappeal[1] = savefile[31]
	n_poemappeal[2] = savefile[32]
	n_poemappeal[3] = savefile[33]
	y_poemappeal[1] = savefile[34]
	y_poemappeal[2] = savefile[35]
	y_poemappeal[3] = savefile[36]
	poemwinner[1] = savefile[37]
	poemwinner[2] = savefile[38]
	poemwinner[3] = savefile[39]
	s_appeal = savefile[40]
	n_appeal = savefile[41]
	y_appeal = savefile[42]
	if chapter <= 5 then
		y_exclusivewatched = savefile[43]
		n_exclusivewatched = savefile[44]
		ch4_name = savefile[45]
	end
end

function loadupdate()
	bg1 = savefile[16]
	audio1 = savefile[17]
	cg1 = savefile[18]
	ct = savefile[19]
	xaload = 0
	bgUpdate(bg1)
	audioUpdate(audio1)
	cgUpdate(cg1)
end

function filecheck()
	local file = love.filesystem.isFile("firstrun")
	if file then
		checkchr()
	else
		alpha = 255
		timer = 501
		cl = 10016
		loadstuff()
		state = "newgame"
	end
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
		resetchr(2)
		state = 'load'
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