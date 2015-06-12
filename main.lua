require "player"
require "menu"

function love.load()
	gamestate = "menu"
	menu.load()
end

function love.update()
	if love.keyboard.isDown('escape') then
		love.event.quit()
	end
end

function love.draw()
	if gamestate == "menu" then
		menu.draw()
	end
end