require 'attack'

describe Attack do
  let(:player) { double :player }

  describe '#punch' do
    it 'damages the player' do
      expect(player).to receive(:receive_damage)
      subject.punch(player)
    end
  end
end
