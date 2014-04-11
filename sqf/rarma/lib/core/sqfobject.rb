class Rarma::SQFObject
  attr_accessor :posATL, :posASL, :dir, :damage, :alive, :classname, :simulation
  attr_reader :variables, :netid

  def initialize _classname=nil
    @classname = _classname
    @posASL = [0,0,0]
    @posATL = [0,0,0]
    @dir = 0
    @damage = 0
    @alive = false
    @variables = []
    @netid = nil
    @simulation = false
  end

end
