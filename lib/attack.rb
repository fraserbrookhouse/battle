class Attack
  def initialize(player)
    @player = player
  end

  def self.punch(player)
    new(player).punch
  end

  def punch
    @player.receive_damage
  end
end
