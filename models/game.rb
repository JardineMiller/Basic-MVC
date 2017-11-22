class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def determine_winner
    case[@player1, @player2]
      when ["rock","scissors"] then return "#{player1}"
      when ["rock", "paper"] then return "#{player2}"
      when ["rock", "rock"] then return "No one! It's a draw!"
      when ["scissors", "paper"] then return "#{player1}"
      when ["scissors", "rock"] then return "#{player2}"
      when ["scissors", "scissors"] then return "No one! It's a draw!"
      when ["paper", "scissors"]then return "#{player2}"
      when ["paper", "rock"] then return "#{player1}"
      when ["paper", "paper"] then return "No one! It's a draw!"
    end
  end

end