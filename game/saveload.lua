--random special poems, no repeating
local spr = {}
sp = {}
for i = 1, 11 do
	spr[i] = i
end
for i = 1, 3 do
	local random = math.random(1,#spr)
	sp[i] = spr[random]
	table.remove(spr,random)
end

local yvalue = 4
--default persistent values
player = ''
persistent = {
	ptr=0;
	clear={0,0,0,0,0,0,0,0,0};
	chr={m=1,s=1};
}
settings = {textspd=75,autospd=4,lang='eng'}
persistent.act2 = {0,0,0,0}
settings.masvol = 80
settings.bgmvol = 80
settings.sfxvol = 80
settings.o = 0
cg1 = 'blank'
--default save values
cl = 1
bg1 = 'black'
audio1 = '0'
ct = ''
s_Set = {a='',b='',x=-200,y=yvalue}
y_Set = {a='',b='',x=-200,y=yvalue}
n_Set = {a='',b='',x=-200,y=yvalue}
m_Set = {a='',b='',x=-200,y=yvalue}
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

if not love.filesystem.load then
	function love.filesystem.load(file)
		return loadstring(love.filesystem.read(file))
	end
end

function love.filesystem.getInfo(file)
	return love.filesystem.read(file)
end

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
	local file
	if x == 'autoload' then
		file = love.filesystem.load("save-autoload.sav")
	else
		file = love.filesystem.load("save"..savenumber.."-"..persistent.ptr..".sav")
	end
	pcall(file)
end

function savedatainfo(save)
	local datainfo = "save"..save.."={bg1='"..bg1.."',date='"..os.date("%Y-%m-%d %H:%M").."'}"
	love.filesystem.write("save"..savenumber.."-"..persistent.ptr.."_data.sav", datainfo)
end

function loaddatainfo(save)
	local datainfo = love.filesystem.load("save"..save.."-"..persistent.ptr.."_data.sav")
	local status = pcall(datainfo)
	return status
end

function savesettings()
	local file
	file = "settings={"
	file = file.."textspd="..settings.textspd..","
	file = file.."autospd="..settings.autospd..","
	file = file.."masvol="..settings.masvol..","
	file = file.."bgmvol="..settings.bgmvol..","
	file = file.."sfxvol="..settings.sfxvol..","
	file = file.."lang='"..settings.lang.."',"
	file = file.."o="..settings.o.."}"
	love.filesystem.write("settings.sav", file)
end

function loadsettings()
	local file = love.filesystem.load('settings.sav')
	pcall(file)
end

function savepersistent()
	local clear = ''
	
	for i = 1, #persistent.clear do
		if persistent.clear[i] and persistent.clear[i+1] then
			clear = clear..persistent.clear[i]..","
		elseif persistent.clear[i] then
			clear = clear..persistent.clear[i]
		end
	end
	
	local file = "player='"..player.."'\
sp={"..sp[1]..','..sp[2]..','..sp[3].."}\
persistent={ptr="..persistent.ptr..",chr={m="..persistent.chr.m..",s="..persistent.chr.s.."},\
clear={"..clear..'}'
	
		local act2 = ''
		for i = 1, #persistent.act2 do
			if persistent.act2[i] and persistent.act2[i+1] then
				act2 = act2..persistent.act2[i]..","
			elseif persistent.clear[i] then
				act2 = act2..persistent.act2[i]
			end
		end
		file = file..",\
act2={"..act2.."}"
	
	file = file..'}'
	love.filesystem.write("persistent", file)
end

function loadpersistent()
	local file = love.filesystem.load("persistent")
	pcall(file)
end
