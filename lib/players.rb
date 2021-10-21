class Players
  attr :name , :pawn

  def initialize
    print "Nom du joueur: "
    @name = gets.chomp
    print "Choisi un pion 'X' ou 'O': "
    @pawn = gets.chomp.upcase
  end

end

