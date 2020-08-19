require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  subject(:finished_game) { described_class.new(dead_player, player_2) }
  let(:player_1) { double :player, hit_points: 60 }
  let(:player_2) { double :player, hit_points: 60 }
  let(:dead_player) { double :player, hit_points: 0 }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq player_1
    end
  end

  describe '#switch_turn' do
    it 'changes current turn to the other player' do
      game.switch_turn
      expect(game.current_turn).to eq player_2
    end
  end

  describe '#opponent_of' do
    it 'finds the opponent of a player' do
      expect(game.opponent_of(player_1)).to eq player_2
      expect(game.opponent_of(player_2)).to eq player_1
    end
  end

  describe '#loser' do
    it 'returns a player with 0HP or less' do
      expect(finished_game.loser).to eq dead_player
    end
  end

  describe '#game_over?' do
    it 'returns true if a player has lost' do
      expect(finished_game.game_over?).to eq true
    end

    it 'returns false if all players have > 0HP' do
      expect(game.game_over?).to eq false
    end
  end
end
