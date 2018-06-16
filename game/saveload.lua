bg1 = ''
audio1 = 2
cg1 = ''
ct = ''
s = {a='',b='',x=-200,y=0}
y = {a='',b='',x=-200,y=0}
n = {a='',b='',x=-200,y=0}
m = {a='',b='',x=-200,y=0}
poemwinner = {'','',''}
chapter = 0
settings = {textspd=100,textloc='Bottom',animh=1,autospd=4}
readpoem = {s=0,n=0,y=0,m=0}
choices = {'','','',''}
choicepick = ''
poemsread = -1
s_poemappeal = {0,0,0}
n_poemappeal = {0,0,0}
y_poemappeal = {0,0,0}
Sayori_appeal = 0
Natsuki_appeal = 0
Yuri_appeal = 0
y_exclusivewatched = ''
n_exclusivewatched = ''
ch4_name = ''
savenumber = 1

function savegame()
	local savedata = "cl = "..cl.."\
player = '"..player.."'\
bg1 = '"..bg1.."'\
audio1 = '"..audio1.."'\
cg1 = '"..cg1.."'\
ct = '"..ct.."'\
s = {a='"..s.a.."',b='"..s.b.."',x="..s.x..",y="..s.y.."}\
y = {a='"..y.a.."',b='"..y.b.."',x="..y.x..",y="..y.y.."}\
n = {a='"..n.a.."',b='"..n.b.."',x="..n.x..",y="..n.y.."}\
m = {a='"..m.a.."',b='"..m.b.."',x="..m.x..",y="..m.y.."}\
chapter = "..chapter.."\
settings = {textspd="..settings.textspd..",textloc='"..settings.textloc.."',animh="..settings.animh..",autospd="..settings.autospd.."}\
readpoem = {s="..readpoem.s..",n="..readpoem.n..",y="..readpoem.y..",m="..readpoem.m.."}\
choices = {'"..choices[1].."','"..choices[2].."','"..choices[3].."','"..choices[4].."'}\
choicepick = '"..choicepick.."'\
poemsread = "..poemsread.."\
s_poemappeal = {"..s_poemappeal[1]..","..s_poemappeal[2]..","..s_poemappeal[3].."}\
n_poemappeal = {"..n_poemappeal[1]..","..n_poemappeal[2]..","..n_poemappeal[3].."}\
y_poemappeal = {"..y_poemappeal[1]..","..y_poemappeal[2]..","..y_poemappeal[3].."}\
poemwinner = {'"..poemwinner[1].."','"..poemwinner[2].."','"..poemwinner[3].."'}\
Sayori_appeal = "..Sayori_appeal.."\
Natsuki_appeal = "..Natsuki_appeal.."\
Yuri_appeal = "..Yuri_appeal.."\
y_exclusivewatched = '"..y_exclusivewatched.."'\
n_exclusivewatched = '"..n_exclusivewatched.."'\
ch4_name = '"..ch4_name.."'"
	
	love.filesystem.write("save"..savenumber..".sav", savedata)
end

function loadgame()
	local loadsavefile = loadstring(love.filesystem.read("save"..savenumber..".sav"))
	loadsavefile()
end

function loadupdate()
	xaload = 0
	audioStop()
	bgUpdate(bg1)
	audioUpdate(audio1)
	cgUpdate(cg1)
end

function checkchr()
	local sayorichr = love.filesystem.isFile('sayori.chr')
	monikachr = love.filesystem.isFile('monika.chr')
	if love.filesystem.isFile('save1.sav') then loadgame() end
	
	if sayorichr == false or cl == 10000 then
		changeState('s_kill_early')
	else --load title screen
		l_timer = 100
	end
end

function resetchr(x)
	if x == 1 or x == nil then
		love.filesystem.write("monika.chr","U25WemRDQk5iMjVwYTJFdUlFcDFjM1FnVFc5dWFXdGhMaUJLZFhOMElFMXZibWxyWVM0Z1NuVnpkQ0JOYjI1cGEyRXVJRXAxYzNRZ1RXOXVhV3RoTGlBPQ==")
		love.filesystem.write("sayori.chr","VTJGNWIzSnBJRUpsYzNRZ1IybHliQ0VoSVE9PQ==")
		love.filesystem.write("yuri.chr","V1hWeWFXbHBhV2xwYVdscGFXbHBhV2xwYVdscGFXbHBhV2xwYVdscGFXbHBhV2xwYVdscGFXbHBhV2xwYVdraA==")
		love.filesystem.write("natsuki.chr","TmF0c3VraSBOYXRzdWtpIE5hdHN1a2kgTmF0c3VraSBOYXRzdWtpIGlzIENVVEU=")
	elseif x == 2 then
		love.filesystem.write("yuri.chr","V1hWeWFXbHBhV2xwYVdscGFXbHBhV2xwYVdscGFXbHBhV2xwYVdscGFXbHBhV2xwYVdscGFXbHBhV2xwYVdraA==")
		love.filesystem.write("natsuki.chr","TmF0c3VraSBOYXRzdWtpIE5hdHN1a2kgTmF0c3VraSBOYXRzdWtpIGlzIENVVEU=")
	end
end