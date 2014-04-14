class Rarma::SQFObject
  attr_accessor :posATL, :posASL, :dir, :damage, :alive, :simulated, :name,
  :special, :group, :vehicle_var_name
  attr_reader :variables, :netid, :classname, :side, :this

  # ====Arguments
  # * +_classname+ - classname of the object
  def initialize _classname=nil
    @classname = _classname
    @posASL = [0,0,0]
    @posATL = [0,0,0]
    @dir = 0
    @damage = 0
    @alive = false
    @variables = {}
    @simulation = false
    @special = "FORM"
    @side = SQF.CIVILIAN
    @this = nil
  end

  # sets a variable to the object
  # ==== Arguments
  # * +_key+ - variable name
  # * +_value+ - value of the variable
  def set_variable _key, _value
    _key = "rarma_var_#{_key}"
    @variables[_key] = _value
    SQF.setVariable @this, _key, _value
  end

  # gets the value of a variable
  # ==== Arguments
  # * +_key+ - variable name/key
  def get_variable _key
    _key = "rarma_var_#{_key}"
    @variables[_key]
  end

  #--
  # awesome alias preprocessing command
  #++
  # sets the position of the object
  # ==== Arguments
  # * +_pos+ - position in the form of an array [x,y,z]
  __alias :setPos
  def setPosASL _pos
    @posASL = _pos
    SQF.setPosASL @this, _pos
    @posATL = SQF.getPosATL @this
  end

  # sets the position of the object, relative to the terrain
  # ==== Arguments
  # * +_pos+ - position in the form of an array [x,y,z]
  def setPosATL _pos
    @posATL = _pos
    SQF.setPosATL @this, _pos
    @posASL = SQF.getPosASL @this
  end

  __alias :pos
  def posASL
    _pos = SQF.getPosASL @this
    @posASL = _pos
    @posASL
  end

  def posATL
    _pos = SQF.getPosATL @this
    @posATL = _pos
    @posATL
  end

  def dir
    _dir = SQF.getDir @this
    @dir = _dir
    @dir
  end

  def damage
    _damage = SQF.damage @this
    @damage = _damage
    @damage
  end

  __alias :alive?
  def alive
    _alive = SQF.alive @this
    @alive = _alive
    @alive
  end

  __alias :simulated?
  def simulated
    _simulated = SQF.simulationEnabled @this
    @simulated = _simulated
    @simulated
  end

  def group
    _group = SQF.group @this
    @group = _group
    @group
  end

  # sets the direction the object is facing to.
  # ==== Arguments
  # * +_dir+ - integer value between 0 and 360
  def setDir _dir
    @dir = _dir
    SQF.setDir @this, _dir
  end

  def setDamage _damage
    @damage = _damage
    SQF.setDamage @this, _damage
  end

  def enableSimulation _sim
    @simulated = _sim
    SQF.enableSimulation @this, _sim
  end

  def addEventHandler _type, _code
    SQF.addEventHandler @this, _type, _code
  end

  def setVehicleVarName _name
    @vehicle_var_name = _name
    SQF.setVehicleVarName @this, _name
  end

  # Sets id (integer value) to vehicle. By this id vehicle is referenced by triggers and waypoints.
  # ==== Arguments
  # * +_id+ - the integer id
  def setVehicleId _id
    @vehicle_id = _id
    SQF.setVehicleId @this, _id
  end

  def vehicleVarName
    _vehicle_var_name = SQF.vehicleVarName @this
    @vehicle_var_name = _vehicle_var_name
  end

  def setVehicleAmmo _ammo
    @ammo = _ammo
    SQF.setVehicleAmmo @this, _ammo
  end

  def setVehicleAmmoDef _ammo
    @ammo = _ammo
    SQF.setVehicleAmmoDef @this, _ammo
  end

end
