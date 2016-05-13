class Player 
	attr_accessor :name, :weapon, :response

	# def weapon_choice 
	# 	puts "Choose your weapon: rock, paper or scissors" 
	# 	@weapon = gets.chomp 
	# end

	def computer_choice 
		@computer = ["rock", "paper", "scissors"].shuffle.first
	end
 
end


class Game 
	def initialize (p1)
		@p1 = p1
	# 	player = Player.new
	# 	puts "What's your name!?"
	# 	player.name = gets.chomp
	# 	puts "Welcome #{player.name}!"
	# 	@computer = player.computer_choice
	# 	@weapon = player.weapon_choice
	# 	puts @computer
	end

def game_time
	if @computer == "rock" && @p1.response == "scissors" 
		"Computer wins!"
	elsif @computer == @p1.response
		"It's a tie!"
	elsif @computer == "scissors" && @p1.response == "paper"
		"Computer wins!"
	elsif @computer == "paper" && @p1.response == "rock"
		"Computer wins!"
	elsif @computer == "scissors" && @p1.response == "rock"
		"You win!"
	elsif @computer == "paper" && @p1.response == "scissors"
		"You win!"
	elsif @computer == "rock" && @p1.response == "paper"
		"You win!"
	end
end

end

victory = Game.new
victory.game_time


