def draw_check
    if @turn == 10 && @end == false
      puts "It's a draw"
      play_again
    end
  end
