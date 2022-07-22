 def play_again
    puts "Play again? (Y/N)"
      response = ""
      while response != "Y" || response != "N"
        response = gets.chomp.upcase
          if response == "Y"
            newgame = Game.new
            newgame.move
          elsif response == "N"
            puts "Thank you ! "
          else
            puts "Please enter (Y/N)"
          end
      end
  end
