class Rarma::SQFObject
  attr_accessor :posATL, :posASL, :dir, :damage, :alive, :simulation, :name,
  :special, :group
  attr_reader :variables, :netid, :classname, :side

  def initialize _classname=nil
    @classname = _classname
    @posASL = [0,0,0]
    @posATL = [0,0,0]
    @dir = 0
    @damage = 0
    @alive = false
    @variables = {}
    @simulation = false
    @special = "NONE"
    @side = "CIVILIAN"
  end

  # create unit
  def create _marker=[]
    raise "No side set" unless @side
    @group ||= Group.new(@side)
    @this = createUnit @group, @classname, @posATL, _marker.to_a, 0, @special
  end

  def set_variable _key, _value
    _key = "rarma_var_#{_key}"
    @variables[_key] = _value
    setVariable @this, _key, _value
  end

  def get_variable _key
    _key = "rarma_var_#{_key}"
    @variables[_key]
  end

  # awesome alias preprocessing command
  __alias :setPos
  def setPosASL _pos
    setPosASL @this, _pos
  end

  def setPosATL _pos
    setPosATL @this, _pos
  end

  def setDir _dir
    setDir @this, _dir
  end

  def setDamage _damage
    setDamage @this, _damage
  end

  def enableSimulation _sim
    enableSimulation @this, _sim
  end

  # CamelCase because it represents the native function
  def addEventHandler _type, _code
    addEventHandler @this, _type, _code
  end

end
