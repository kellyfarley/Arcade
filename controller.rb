require 'sinatra'
require_relative 'models/rps.rb'

get '/' do
	erb :index
end

post '/' do
	p1 = Player.new
	p1.name = (params[:name])
	p1.computer_choice
	
	game = Game.new
	game.game_time

	@results = game.game_time

	erb :results
end