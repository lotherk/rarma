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

  def set_variable _key, _value
    @variables[_key] = _value
    setVariable @this, _key, _value
  end

  def get_variable _key
    @variables[_key]
  end

  # CamelCase because it represents the native function
  def addEventHandler _type, _code
    addEventHandler @this, _type, _code
  end

  # create unit
  def create _marker=[]
    raise "No side set" unless @side
    @group ||= Group.new(@side)
    @this = createUnit @group, @classname, @posATL, _marker.to_a, 0, @special
  end
end
