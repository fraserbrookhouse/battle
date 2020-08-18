require 'player'

describe Player do
  subject(:voldemort) { Player.new('Voldemort') }
  subject(:thanos) { Player.new('Thanos') }

  describe '#name' do
    it 'returns the name' do
      expect(voldemort.name).to eq 'Voldemort'
    end
  end

  describe '#hit_points' do
    it 'returns hit points' do
      expect(voldemort.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(thanos).to receive(:receive_damage)
      voldemort.attack(thanos)
    end
  end

  describe '#receive damage' do
    it 'reduces the player hit points' do
      expect { voldemort.receive_damage }.to change { voldemort.hit_points }.by(-10)
    end
  end
end