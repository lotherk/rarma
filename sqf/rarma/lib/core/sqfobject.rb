class Rarma::SQFObject
  attr_accessor :posATL, :posASL, :dir, :damage, :alive, :simulation, :name,
    :event_handlers
  attr_reader :variables, :netid, :classname, :side
  

  def initialize classname=nil
    @classname = classname
    @posASL = [0,0,0]
    @posATL = [0,0,0]
    @dir = 0
    @damage = 0
    @alive = false
    @variables = []
    @simulation = false
    @event_handlers = []
  end

  def add_variable _key, _value
    @variables << [_key, _value]
    setVariable @this, _key, _value
  end

  def add_event_handler _type, _code
    @event_handlers << [_type, _code]
    addEventHandler @this, _type, _code
  end

end
