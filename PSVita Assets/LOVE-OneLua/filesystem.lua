local saveloc = "ux0:/data/"..appname.."/savedata/"
if not isPSP and not files.exists(saveloc) then
	files.mkdir(saveloc)
end

function love.filesystem.read(file)
	if not isPSP then
		local openfile = io.open(saveloc..file, "r")
		local contents = openfile:read()
		io.close(openfile)
		return contents
	else
		return data.load(file,1)	
	end
end

function love.filesystem.write(file,datawrite)
	if not isPSP then
		local openfile = io.open(saveloc..file, "w+")
		openfile:write(datawrite)
		io.close(openfile)
	else
		data.save(datawrite,appname,file,file,"",1,"ICONOS/")
	end
end

function love.filesystem.remove(file)
	if not isPSP then
		files.delete(saveloc..file)
	else
		data.delete(file)
	end
end

function love.filesystem.isFile(file)
	if not isPSP then
		return files.exists(saveloc..file)
	else
		return data.load(file,1)
	end
end

function love.filesystem.getInfo(file)
	return love.filesystem.isFile(file)
end