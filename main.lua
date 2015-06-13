require "player"
require "menu"

function love.load()
	gamestate = "menu"
	menu.load()
	player.load()
end

function love.update()
	if love.keyboard.isDown('escape') then
		love.event.quit()
	end
	
	if gamestate == "menu" then
		menu.update()
	end
	
	if gamestate == "playing" then
		player.update()
	end
end

function love.draw()
	if gamestate == "menu" then
		menu.draw()
	end
	
	if gamestate == "playing" then
		player.draw()
	end
end