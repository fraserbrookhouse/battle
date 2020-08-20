class Attack
  def initialize(player)
    @player = player
  end

  def self.punch(player)
    new(player).punch
  end

  def damage
    rand(1..30)
  end

  def punch
    @player.receive_damage(damage)
  end
end
