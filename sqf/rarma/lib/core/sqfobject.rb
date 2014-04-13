class Rarma::SQFObject
  attr_accessor :posATL, :posASL, :dir, :damage, :alive, :simulation, :name,
  :special, :group, :vehicle_var_name, :ammo
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
    @special = "NONE"
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
    SQF.setPosASL @this, _pos
  end

  # sets the position of the object, relative to the terrain
  # ==== Arguments
  # * +_pos+ - position in the form of an array [x,y,z]
  def setPosATL _pos
    SQF.setPosATL @this, _pos
  end

  # sets the direction the object is facing to.
  # ==== Arguments
  # * +_dir+ - integer value between 0 and 360
  def setDir _dir
    SQF.setDir @this, _dir
  end

  def setDamage _damage
    SQF.setDamage @this, _damage
  end

  def enableSimulation _sim
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
    @vehicle_var_name = SQF.vehicleVarName @this
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
