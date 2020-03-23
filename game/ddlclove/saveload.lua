--default persistent values
player = ''
persistent = {
	ptr=0;
	clear={0,0,0,0,0,0,0,0,0};
	chr={m=1,s=1};
	act2={0,0,0,0};
}
sp = {math.random(1, 11),math.random(1, 11),math.random(1, 11)}
settings = {textspd=100,autospd=4,masvol=70,bgmvol=70,sfxvol=70,lang='eng',o=0}
--default save values
cl = 1
bg1 = 'black'
audio1 = '0'
cg1 = 'blank'
ct = ''
s_Set = {a='',b='',x=-200,y=4}
y_Set = {a='',b='',x=-200,y=4}
n_Set = {a='',b='',x=-200,y=4}
m_Set = {a='',b='',x=-200,y=4}
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
	if global_os == 'LOVE-WrapLua' then
		if x == 'autoload' then
			love.filesystem.load("save-autoload.sav")
		else
			love.filesystem.load("save"..savenumber.."-"..persistent.ptr..".sav")
		end
	else
		if x == 'autoload' then
			savfile = loadstring(love.filesystem.read("save-autoload.sav"))
		else
			savfile = loadstring(love.filesystem.read("save"..savenumber.."-"..persistent.ptr..".sav"))
		end
		savfile()
	end
end

function savedatainfo(save)
	local datainfo = "save"..save.."={bg1='"..bg1.."',date='"..os.date("%Y-%m-%d %H:%M").."'}"
	love.filesystem.write("save"..savenumber.."-"..persistent.ptr.."_data.sav", datainfo)
end

function loaddatainfo(save)
	if global_os == 'LOVE-WrapLua' then
		love.filesystem.load("save"..save.."-"..persistent.ptr.."_data.sav")
	else
		local datainfo = loadstring(love.filesystem.read("save"..save.."-"..persistent.ptr.."_data.sav"))
		if datainfo then datainfo("save"..save.."-"..persistent.ptr.."_data.sav") end
	end
end

function savesettings()
	local setfile = "settings={"
	setfile = setfile.."textspd="..settings.textspd..","
	setfile = setfile.."autospd="..settings.autospd..","
	setfile = setfile.."masvol="..settings.masvol..","
	setfile = setfile.."bgmvol="..settings.bgmvol..","
	setfile = setfile.."sfxvol="..settings.sfxvol..","
	setfile = setfile.."lang='"..settings.lang.."',"
	setfile = setfile.."o="..settings.o.."}"
	love.filesystem.write("settings.sav", setfile)
end

function loadsettings()
	if global_os == 'LOVE-WrapLua' then
		love.filesystem.load('settings.sav')
	else
		local settingsfile = loadstring(love.filesystem.read('settings.sav'))
		if settingsfile then settingsfile() end
	end
end

function savepersistent()
	local pset = ''
	local act2 = ''
	for i = 1, #persistent.clear do
		if persistent.clear[i] and persistent.clear[i+1] then
			pset = pset..persistent.clear[i]..","
		elseif persistent.clear[i] then
			pset = pset..persistent.clear[i]
		end
	end
	for i = 1, #persistent.act2 do
		if persistent.act2[i] and persistent.act2[i+1] then
			act2 = act2..persistent.act2[i]..","
		elseif persistent.clear[i] then
			act2 = act2..persistent.act2[i]
		end
	end
	local spfile = "player='"..player.."'\
persistent={ptr="..persistent.ptr..",chr={m="..persistent.chr.m..",s="..persistent.chr.s.."},\
act2={"..act2.."},\
clear={"..pset.."}};\
sp={"..sp[1]..','..sp[2]..','..sp[3]..'}'
	
	love.filesystem.write('persistent', spfile)
end

function loadpersistent()
	if global_os == 'LOVE-WrapLua' then
		love.filesystem.load('persistent')
	else
		local pfile = loadstring(love.filesystem.read('persistent'))
		if pfile then pfile() end
	end
end