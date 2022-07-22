# This is class Players
class Players
  attr_reader :player1, :player2
  def initialize
    puts "Player 1,  enter your name"
    @player1 = gets.chomp
    puts "#{@player1} is X"
    puts "Player 2,  enter your name"
    @player2 = gets.chomp
    puts "#{@player2} is O"
  end

end
