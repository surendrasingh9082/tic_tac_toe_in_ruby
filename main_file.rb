# frozen_string_literal: true
require './condition_module'
require './draw_check'
require './play_again'
require './board_class'
require './players'
require './file_io'

# This is class Game
class Game
  $winner = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8],
    [0, 3, 6], [1, 4, 7], [2, 5, 8],
    [0, 4, 8], [6, 4, 2]
  ].freeze

  def initialize
    @players = Players.new
  end

  # This is move methods
  def move
    @end = false
    @gameboard = Board.new
    @turn = 1
    while @turn < 10
      if @turn.odd?
        turn_sequence(@players.player1, 'X')
      elsif @turn.even?
        turn_sequence(@players.player2, 'O')
      end
    end
  end

  # This is win_check methods
  def win_check
    $winner.each do |win_check|
      next unless (@gameboard.board[win_check[0]] == @gameboard.board[win_check[1]] &&
        @gameboard.board[win_check[1]] == @gameboard.board[win_check[2]]) &&
                  @gameboard.board[win_check[0]] != ' '

      case @gameboard.board[win_check[0]]
      when 'X'
        @turn = 10
        @end = true
        puts "#{@players.player1} WINS"
        play_again

      when 'O'
        puts "#{@players.player2} WINS"
        @turn = 10
        @end = true

        play_again
      end
    end
  end
end
game = Game.new
game.move
