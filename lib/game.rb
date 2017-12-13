class Game

  attr_reader :player1, :player2

  RULES = {
    :rock => { :paper => :paper, :scissors => :rock, :rock => :draw },
    :paper => { :rock => :paper, :scissors => :scissors, :paper => :draw },
    :scissors => { :rock => :rock, :paper => :scissors, :scissors => :draw }
    }

  def self.create(player1, player2 = Computer.new)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def print_winner
    winner.nil? ? "Draw!" : "#{winner.name} won!"
  end

  private

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def result
    RULES[@player1.choice][@player2.choice]
  end

  def winner
    result == @player1.choice ? @player1 : @player2 unless result == :draw
  end

end
