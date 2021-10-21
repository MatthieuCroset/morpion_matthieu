  class Game
    attr_accessor   :board, :array_players, :board1
    @@count_board = 0
    

  
    def initialize
      @array_players = [player1 = Players.new, player2 = Players.new]
      @board1 = Board.new.first_display_board
      @board = Board.new
    
      
      while @@count_board < 9 || @board.victory? == false
        puts @board.play_turn(player1)
        @@count_board = @@count_board +1
        puts @board.display_board
        puts @board.play_turn(player2)
        @@count_board = @@count_board +1
        puts @board.display_board
      end
    end
end

