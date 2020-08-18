require 'player'

describe Player do
  subject(:voldemort) { Player.new('Voldemort') }

  describe '#name' do
    it 'returns the name' do
      expect(voldemort.name).to eq 'Voldemort'
    end
  end
end