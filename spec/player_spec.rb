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

  describe '#receive damage' do
    it 'reduces the player hit points by amount given as argument' do
      expect { voldemort.receive_damage(15) }.to change { voldemort.hit_points }.by(-15)
    end
  end
end
