--default values
persistent = {
	playthrough=0;
	clear={0,0,0,0,0,0,0,0,0};
	mchr=1;
	schr=1;
	nchr=1;
	ychr=1;
}
settings = {textspd=100,textloc='Bottom',animh=1,autospd=4}
data_ptr = persistent.playthrough
bg1 = ''
audio1 = 2
cg1 = ''
ct = ''
s_Set = {a='',b='',x=-200,y=0}
y_Set = {a='',b='',x=-200,y=0}
n_Set = {a='',b='',x=-200,y=0}
m_Set = {a='',b='',x=-200,y=0}
poemwinner = {'','',''}
chapter = 0
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
	for i = 1, 4 do
		if choices[i] == nil then choices[i] = '' end
	end
	
	local savedata = "data_ptr = "..persistent.playthrough.."\
cl = "..cl.."\
player = '"..player.."'\
bg1 = '"..bg1.."'\
audio1 = '"..audio1.."'\
cg1 = '"..cg1.."'\
ct = '"..ct.."'\
s_Set = {a='"..s_Set.a.."',b='"..s_Set.b.."',x="..s_Set.x..",y="..s_Set.y.."}\
y_Set = {a='"..y_Set.a.."',b='"..y_Set.b.."',x="..y_Set.x..",y="..y_Set.y.."}\
n_Set = {a='"..n_Set.a.."',b='"..n_Set.b.."',x="..n_Set.x..",y="..n_Set.y.."}\
m_Set = {a='"..m_Set.a.."',b='"..m_Set.b.."',x="..m_Set.x..",y="..m_Set.y.."}\
chapter = "..chapter.."\
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
	local savfile = loadstring(love.filesystem.read("save"..savenumber..".sav"))
	savfile()
end

function savesettings()
	local settingsfile = "settings = {textspd="..settings.textspd..",textloc='"..settings.textloc.."',animh="..settings.animh..",autospd="..settings.autospd.."}"
	love.filesystem.write("settings.sav", settingsfile)
end

function savepersistent()
	local spfile = "persistent = {\
	playthrough="..persistent.playthrough..";\
	clear={\
		"..persistent.clear[1]..",\
		"..persistent.clear[2]..",\
		"..persistent.clear[3]..",\
		"..persistent.clear[4]..",\
		"..persistent.clear[5]..",\
		"..persistent.clear[6]..",\
		"..persistent.clear[7]..",\
		"..persistent.clear[8]..",\
		"..persistent.clear[9].."};\
	mchr="..persistent.mchr..";\
	schr="..persistent.schr..";\
	nchr="..persistent.nchr..";\
	ychr="..persistent.ychr.."}"
	
	love.filesystem.write('persistent', spfile)
end

function loadpersistent()
	local pfile = loadstring(love.filesystem.read('persistent'))
	local settingsfile = loadstring(love.filesystem.read('settings.sav'))
	pfile()
	settingsfile()
end

function loadupdate()
	xaload = 0
	audioStop()
	bgUpdate(bg1)
	audioUpdate(audio1)
	cgUpdate(cg1)
end

function checkchr()
	if love.filesystem.isFile('persistent') and love.filesystem.isFile('settings.sav') then
		loadgame()
		loadpersistent()
	end
	
	if persistent.schr == 0 and persistent.playthrough == 0 then
		changeState('s_kill_early')
	else --load title screen
		l_timer = 100
	end
end

--"monika.chr","U25WemRDQk5iMjVwYTJFdUlFcDFjM1FnVFc5dWFXdGhMaUJLZFhOMElFMXZibWxyWVM0Z1NuVnpkQ0JOYjI1cGEyRXVJRXAxYzNRZ1RXOXVhV3RoTGlBPQ=="
--"sayori.chr","VTJGNWIzSnBJRUpsYzNRZ1IybHliQ0VoSVE9PQ=="
--"yuri.chr","V1hWeWFXbHBhV2xwYVdscGFXbHBhV2xwYVdscGFXbHBhV2xwYVdscGFXbHBhV2xwYVdscGFXbHBhV2xwYVdraA=="
--"natsuki.chr","TmF0c3VraSBOYXRzdWtpIE5hdHN1a2kgTmF0c3VraSBOYXRzdWtpIGlzIENVVEU="