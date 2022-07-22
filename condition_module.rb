  def turn_sequence (player, symbol)
    puts "#{player}(#{symbol}) please choose a position"
    @player_move = gets.chomp.to_i
    if (0..8).include?(@player_move) && @gameboard.board[@player_move] == " " && @end == false
      @turn += 1
      @gameboard.board_update(@player_move, symbol)
      win_check
      draw_check
    else
      puts "enter number  0 to 8 "
    end
  end
