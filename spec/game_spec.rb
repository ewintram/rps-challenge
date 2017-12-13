describe Game do

  subject(:game) { described_class.new(player1, player2) }
  let(:player1)   { double :player1, name: "Ellie" }
  let(:player2) { double :player2, name: "Computer" }

  describe "#player1" do
    it "shows the player1 object" do
      expect(game.player1).to eq player1
    end
  end

  describe "#player2" do
    it "shows the player2 object" do
      expect(game.player2).to eq player2
    end
  end

  describe "#print_winner" do
    it "returns the name of the player2 if the player2 won with rock" do
      allow(player2).to receive(:choice).and_return(:rock)
      allow(player1).to receive(:choice).and_return(:scissors)
      expect(game.print_winner).to eq("Computer won!")
    end
    it "returns the name of the player2 if the player2 won with scissors" do
      allow(player2).to receive(:choice).and_return(:scissors)
      allow(player1).to receive(:choice).and_return(:paper)
      expect(game.print_winner).to eq("Computer won!")
    end
    it "returns the name of the player2 if the player2 won with paper" do
      allow(player2).to receive(:choice).and_return(:paper)
      allow(player1).to receive(:choice).and_return(:rock)
      expect(game.print_winner).to eq("Computer won!")
    end
    it "returns the name of the player1 if the player1 won with paper" do
      allow(player2).to receive(:choice).and_return(:rock)
      allow(player1).to receive(:choice).and_return(:paper)
      expect(game.print_winner).to eq("Ellie won!")
    end
    it "returns the name of the player1 if the player1 won with rock" do
      allow(player2).to receive(:choice).and_return(:scissors)
      allow(player1).to receive(:choice).and_return(:rock)
      expect(game.print_winner).to eq("Ellie won!")
    end
    it "returns the name of the player1 if the player1 won with scissors" do
      allow(player2).to receive(:choice).and_return(:paper)
      allow(player1).to receive(:choice).and_return(:scissors)
      expect(game.print_winner).to eq("Ellie won!")
    end
    it "returns 'Draw!' if no one wins with rock" do
      allow(player2).to receive(:choice).and_return(:rock)
      allow(player1).to receive(:choice).and_return(:rock)
      expect(game.print_winner).to eq("Draw!")
    end
    it "returns 'Draw!' if no one wins with paper" do
      allow(player2).to receive(:choice).and_return(:paper)
      allow(player1).to receive(:choice).and_return(:paper)
      expect(game.print_winner).to eq("Draw!")
    end
    it "returns 'Draw!' if no one wins with scissors" do
      allow(player2).to receive(:choice).and_return(:scissors)
      allow(player1).to receive(:choice).and_return(:scissors)
      expect(game.print_winner).to eq("Draw!")
    end
  end

end
