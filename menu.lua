menu = {}

function menu.load()
	menu.font = love.graphics.newFont("LeagueGothic.ttf", 20)
end

function menu.draw()
	love.graphics.setFont(menu.font)
	love.graphics.print("Hello World!", 100, 100)
end