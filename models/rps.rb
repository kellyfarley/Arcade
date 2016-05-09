class Player 
	attr_accessor :name, :weapon

	# def weapon_choice 
	# 	puts "Choose your weapon: rock, paper or scissors" 
	# 	@weapon = gets.chomp 
	# end

	def computer_choice 
		computer = ["rock", "paper", "scissors"].shuffle.first
	end
 
end


class Game 
	# def initialize
	# 	player = Player.new
	# 	puts "What's your name!?"
	# 	player.name = gets.chomp
	# 	puts "Welcome #{player.name}!"
	# 	@computer = player.computer_choice
	# 	@weapon = player.weapon_choice
	# 	puts @computer
	# end

def game_time
	if @computer == "rock" && @weapon == "scissors" 
		"Computer wins!"
	elsif @computer == @weapon
		"It's a tie!"
	elsif @computer == "scissors" && @weapon == "paper"
		"Computer wins!"
	elsif @computer == "paper" && @weapon == "rock"
		"Computer Wins"
	elsif @computer == "scissors" && @weapon == "rock"
		"You win!"
	elsif @computer == "paper" && @weapon == "scissors"
		"You win!"
	elsif @computer == "rock" && @weapon == "paper"
		"You Win!"
	end
end

end

victory = Game.new
victory.game_time


