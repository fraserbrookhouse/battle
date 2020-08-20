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

  describe '#give_damage' do
    it 'returns a random amount of damage from 1-30' do
      allow(Kernel).to receive(:rand).and_return(15)
      attack = Attack.new(player)
      expect(attack).to receive(:damage).and_return(15)
      attack.damage
    end
  end
end
