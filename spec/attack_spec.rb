require 'attack'

describe Attack do
  subject(:object) { described_class }
  let(:player) { double :player }

  describe '#.punch' do
    it 'damages the player' do
      expect(player).to receive(:receive_damage)
      object.punch(player)
    end
  end
end
