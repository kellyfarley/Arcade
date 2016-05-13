require 'sinatra'
require_relative 'models/rps.rb'
enable :sessions

get '/play' do
	name = session[:name]
	# erb :index
	
	# p1 = Player.new
	# p1.name = (params[:name])
	# p1.computer_choice

	# game = Game.new
	# game.game_time

	# @results = game.game_time

	# erb :results
end

get '/name/:name' do
	session[:name] = params[:name]
	redirect '/play'
end

get '/' do
	erb :index
end

post '/' do
	p1 = Player.new(params[:name])
	
	# p1.computer_choice = ["rock", "paper", "scissors"].shuffle
	
	game = Game.new(p1, computer)
	p1.response = params[:weapon]

	game.game_time

	@results = game.game_time

	erb :results
end