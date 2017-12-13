class Game

  attr_reader :player, :computer

  RULES = {
    :rock => { :paper => :paper, :scissors => :rock, :rock => :draw },
    :paper => { :rock => :paper, :scissors => :scissors, :paper => :draw },
    :scissors => { :rock => :rock, :paper => :scissors, :scissors => :draw }
    }

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def print_winner
    winner.nil? ? "Draw!" : "#{winner.name} won!"
  end

  private

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def result
    RULES[@player.choice][@computer.choice]
  end

  def winner
    result == @player.choice ? @player : @computer unless result == :draw
  end

end
