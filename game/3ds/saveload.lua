--default persistent values
player = ''
persistent = {
	ptr=0;
	clear={0,0,0,0,0,0,0,0,0};
	chr={m=1,s=1};
}
sp = {math.random(1, 11),math.random(1, 11),math.random(1, 11)}
settings = {textspd=100,textloc='Bottom',autospd=4,lang='eng'}
--default save values
cl = 1
bg1 = 'black'
audio1 = '0'
cg1 = ''
ct = ''
s_Set = {a='',b='',x=-200,y=0}
y_Set = {a='',b='',x=-200,y=0}
n_Set = {a='',b='',x=-200,y=0}
m_Set = {a='',b='',x=-200,y=0}
chapter = 0
readpoem = {s=0,n=0,y=0,m=0}
choices = {'','','',''}
choicepick = ''
poemsread = -1
s_poemappeal = {0,0,0}
n_poemappeal = {0,0,0}
y_poemappeal = {0,0,0}
poemwinner = {'','',''}
appeal = {s=0,n=0,y=0}
savevalue = ''
savenumber = 1

function savegame(x)
	local choiceset = ''
	
	for i = 1, 4 do
		if choices[i] and choices[i+1] then
			choiceset = choiceset..choices[i].."','"
		elseif choices[i] then
			choiceset = choiceset..choices[i]
		end
	end
	
	local savedata = "cl="..cl.."\
bg1='"..bg1.."'\
audio1='"..audio1.."'\
cg1='"..cg1.."'\
ct='"..ct.."'\
s_Set={a='"..s_Set.a.."',b='"..s_Set.b.."',x="..s_Set.x..",y="..s_Set.y.."}\
y_Set={a='"..y_Set.a.."',b='"..y_Set.b.."',x="..y_Set.x..",y="..y_Set.y.."}\
n_Set={a='"..n_Set.a.."',b='"..n_Set.b.."',x="..n_Set.x..",y="..n_Set.y.."}\
m_Set={a='"..m_Set.a.."',b='"..m_Set.b.."',x="..m_Set.x..",y="..m_Set.y.."}\
chapter="..chapter.."\
readpoem={s="..readpoem.s..",n="..readpoem.n..",y="..readpoem.y..",m="..readpoem.m.."}\
choices={'"..choiceset.."'}\
choicepick='"..choicepick.."'\
poemsread="..poemsread.."\
s_poemappeal={"..s_poemappeal[1]..","..s_poemappeal[2]..","..s_poemappeal[3].."}\
n_poemappeal={"..n_poemappeal[1]..","..n_poemappeal[2]..","..n_poemappeal[3].."}\
y_poemappeal={"..y_poemappeal[1]..","..y_poemappeal[2]..","..y_poemappeal[3].."}\
poemwinner={'"..poemwinner[1].."','"..poemwinner[2].."','"..poemwinner[3].."'}\
appeal={s="..appeal.s..",n="..appeal.n..",y="..appeal.y.."}\
savevalue='"..savevalue.."'"
	
	if x == 'autoload' then
		love.filesystem.write("save-autoload.sav", savedata)
	else
		love.filesystem.write("save"..savenumber.."-"..persistent.ptr..".sav", savedata)
	end
end

function loadgame(x)
	local savfile
	if x == 'autoload' then
		savfile = loadstring(love.filesystem.read("save-autoload.sav"))
	else
		savfile = loadstring(love.filesystem.read("save"..savenumber.."-"..persistent.ptr..".sav"))
	end
	savfile()
end

function savesettings()
	local settingsfile = "settings={textspd="..settings.textspd..",textloc='"..settings.textloc..",autospd="..settings.autospd..",lang='eng'}"
	love.filesystem.write("settings.sav", settingsfile)
end

function savepersistent()
	local pset = ''
	for i = 1, #persistent.clear do
		if persistent.clear[i] and persistent.clear[i+1] then
			pset = pset..persistent.clear[i]..","
		elseif persistent.clear[i] then
			pset = pset..persistent.clear[i]
		end
	end
	local spfile = "player='"..player.."'\
persistent={ptr="..persistent.ptr..",chr={m="..persistent.chr.m..",s="..persistent.chr.s.."},\
clear={"..pset.."}};\
sp={"..sp[1]..','..sp[2]..','..sp[3]..'}'
	
	love.filesystem.write('persistent', spfile)
end

function loadpersistent()
	local pfile = loadstring(love.filesystem.read('persistent'))
	local settingsfile = loadstring(love.filesystem.read('settings.sav'))
	if pfile then pfile() end
	if settingsfile then settingsfile() end
end
