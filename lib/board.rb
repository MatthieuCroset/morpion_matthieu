class Board
  attr :board, :board1


    def initialize
      @board1 = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
      @board = [" ", "  ", " ", " ", " ", " ", " ", " ", " "]
    end



    def first_display_board
      @board1[0] = "A1"
      @board1[1] = "A2"
      @board1[2] = "A3"
      @board1[3] = "B1"
      @board1[4] = "B2"
      @board1[5] = "B3"
      @board1[6] = "C1"
      @board1[7] = "C2"
      @board1[8] = "C3"
      puts "Voici comment les cases sont définies : "
      puts
      puts "+----+----+----+"
      puts "| #{@board1[0]} | #{@board1[1]} | #{@board1[2]} |"
      puts "+----+----+----+"
      puts "| #{@board1[3]} | #{@board1[4]} | #{@board1[5]} |" 
      puts "+----+----+----+"
      puts "| #{@board1[6]} | #{@board1[7]} | #{@board1[8]} |"
      puts "+----+----+----+"

    end

    def display_board
      puts "+---+---+---+"
      puts "| #{@board[0]} | #{@board[1]} | #{@board[2]} |"
      puts "+---+---+---+"
      puts "| #{@board[3]} | #{@board[4]} | #{@board[5]} |" 
      puts "+---+---+---+"
      puts "| #{@board[6]} | #{@board[7]} | #{@board[8]} |"
      puts "+---+---+---+"
    end
    

    def play_turn(players)
      puts "#{players.name} quelle case souhaites-tu jouer ? "
      selection = gets.chomp.to_s.upcase
      if selection == "A1"
        @board[0] = players.pawn
      elsif selection == "A2"
        @board[1] = players.pawn
      elsif selection == "A3"
        @board[2] = players.pawn
      elsif selection == "B1"
        @board[3] = players.pawn
      elsif selection == "B2"
        @board[4] = players.pawn
      elsif selection == "B3"
        @board[5] = players.pawn
      elsif selection == "C1"
        @board[6] = players.pawn
      elsif selection == "C2"
        @board[7] = players.pawn
      elsif selection == "C3"
        @board[8] = players.pawn
      end
    end

    def victory?
      if (@board[0] == @board[1] && @board[0] == @board[2]) || (@board[3] == @board[4] && @board[3] == @board[5]) || (@board[6] == @board[7] && @board[6] == @board[8] ) || (@board[0] == @board[3] && @board[0] == @board[6]) || (@board[1] == @board[4] && @board[1] == @board[7]) || (@board[2] == @board[5] && @board[2] == @board[8]) ||( @board[0] == @board[4] && @board[0] == @board[8]) || (@board[2] == @board[4] && @board[2] == @board[6])
        return true
      else
        return false
      end
    end


end  

