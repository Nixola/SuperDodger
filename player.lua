player = {}

function player.load()
	player.x = 50
	player.y = love.graphics.getHeight()/2
end

function player.update()

end

function player.draw()
	love.graphics.setColor(255, 0, 0)
	love.graphics.rectangle("fill", player.x, player.y, 25, 25)
end