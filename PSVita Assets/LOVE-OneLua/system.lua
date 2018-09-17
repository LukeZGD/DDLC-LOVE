function love.system.getOS()
	if isPSP then
		return "PSP"
	else
		return "Vita"
	end
end

function love.system.getLanguage()
	return os.language()
end

function love.system.getUsername()
	return os.nick()
end