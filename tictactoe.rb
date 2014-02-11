class Board

	def initialize
		@grid = [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
	end

	def show
	puts " #{@grid[0][0]} |  #{@grid[0][1]}  |  #{@grid[0][2]} "

	puts "_____________________________________________________"

	puts " #{@grid[1][0]} |  #{@grid[1][1]} |  #{@grid[1][2]} "

	puts "______________________________________________________"

	puts " #{@grid[2][0]}  |  #{@grid[2][1]}  |  #{@grid[2][2]} "

		
	end


def insert(x,y,value)
	@grid[x][y] = value
	end
end

class Player
	
	attr_accessor :name 
	def to_s
		"unknown player type"

	end

end

class PlayerX < Player
	def to_s
		"x"
	end
end

class PlayerO < Player
	def to_s
		"o"
	end
end

class Game
	def initialize
		@board = Board.new
		@player1 = PlayerX.new
		@player2 = PlayerO.new
	
		puts "What is your player1 name?"
		player1_name = gets.chomp
		puts "Player 1 set name to: #{player1_name}" 
		puts "What is player2 name?"
		player2_name = gets.chomp
		puts "Player 2 set name to: #{player2_name}"
	
		# player1.name=player1_name
		# player2.name=player2_name
	
		@game_in_progress = true

	end	


	def game_loop
		while @game_in_progress do
			puts "Make a move [0-2],[0-2]!"
			input = gets.chomp
			x=input.split(",")[0].to_i
			y=input.split(",")[1].to_i
			@board.insert(x,y,"X")
			@board.show

		end
	end
end