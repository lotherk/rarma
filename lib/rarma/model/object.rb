class Rarma::Model::Object
  attr_reader :net_id, :damage, :direction, :variable_name, :variables,
  :posATL, :posASL

  def initialize
    @net_id = nil
    @damage = 0
    @direction = 0
    @variable_name = nil
    @variables = []
  end

  def pos
    [@posATL[0], @posATL[1], 0] rescue [0, 0, 0]
  end

  def net_id= id
    @net_id = id
  end
  def damage= damage
    @damage = damage > 1 ? 1 : damage
  end
end
