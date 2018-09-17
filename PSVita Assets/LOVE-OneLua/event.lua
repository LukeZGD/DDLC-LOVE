function love.event.quit(re)
	if love.quit then love.quit() end
	if re == "restart" then
		os.restart()
	else
		os.exit()
	end
end