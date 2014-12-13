class Rarmalib::SQFObject
  attr_accessor :posATL, :posASL, :dir, :damage, :alive, :simulated,
  :special, :group, :vehicle_var_name, :ammo, :pos
  attr_reader :variables, :netid, :classname, :side, :this

  # ====Arguments
  # * +_classname+ - classname of the object
  def initialize _classname=nil
    @classname = _classname
   # @posASL = [0,0,0]
   # @posATL = [0,0,0]
   # @dir = 0
   # @damage = 0
   # @alive = false
    @variables = {}
   # @simulation = false
    @special = "FORM"
    @side = SQF.CIVILIAN
   # @this = nil
  end

  #--
  # nasty function name, i'd love to
  # call it just update and call super.update
  # in all subclasses...
  #++
  def update_object
    _checkthis = @this
    unless _checkthis.nil?
      @posASL = SQF.getPosASL @this
      @pos = @posASL
      @posATL = SQF.getPosATL @this
      @dir = SQF.getDir @this
      @damage = SQF.damage @this
      @alive = SQF.alive @this
      @simulated = SQF.simulationEnabled @this
      @name = SQF.name @this
      @group = SQF.group @this
      @vehicle_var_name = SQF.vehicleVarName @this
    end
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
  __alias :setPos, :pos=, :setPosASL
  def posASL= _pos
    @posASL = _pos
    @posATL = SQF.ASLToATL _pos
    SQF.setPosASL @this, _pos
  end

  # sets the position of the object, relative to the terrain
  # ==== Arguments
  # * +_pos+ - position in the form of an array [x,y,z]
  __alias :setPosATL
  def posATL= _pos
    @posATL = _pos
    @posASL = SQF.ATLToASL _pos
    SQF.setPosATL @this, _pos
  end

  __alias :pos
  def posASL
    @posASL = SQF.getPosASL @this
    @posASL
  end

  def posATL
    @posATL = SQF.getPosATL @this
    @posATL
  end

  def dir
    @dir = SQF.getDir @this
    @dir
  end

  def damage
    _damage = SQF.damage @this
    @damage = _damage
    @damage
  end

  __alias :alive
  def alive?
    _alive = SQF.alive @this
    @alive = _alive
    @alive
  end

  __alias :simulationEnabled
  def simulated?
    _simulated = SQF.simulationEnabled @this
    @simulated = _simulated
    @simulated
  end

  def group
    _group = SQF.group @this
    @group = _group
    @group
  end

  __alias :setDir
  # sets the direction the object is facing to.
  # ==== Arguments
  # * +_dir+ - integer value between 0 and 360
  def dir= _dir
    @dir = _dir
    SQF.setDir @this, _dir
  end


  __alias :setDamage=
  def damage= _damage
    @damage = _damage
    SQF.setDamage @this, _damage
  end

  __alias :enableSimulation
  def simulated= _sim
    @simulated = _sim
    SQF.enableSimulation @this, _sim
  end

  __alias :addEventHandler
  def add_event_handler _type, _code
    SQF.addEventHandler @this, _type, _code
  end


  __alias :setVehicleVarName
  def vehicle_var_name= _name
    @vehicle_var_name = _name
    SQF.setVehicleVarName @this, _name
  end

  # Sets id (integer value) to vehicle. By this id vehicle is referenced by triggers and waypoints.
  # ==== Arguments
  # * +_id+ - the integer id
  __alias :setVehicleId
  def vehicle_id= _id
    @vehicle_id = _id
    SQF.setVehicleId @this, _id
  end

  __alias :vehicleVarName
  def vehicle_var_name
    _vehicle_var_name = SQF.vehicleVarName @this
    @vehicle_var_name = _vehicle_var_name
  end

  __alias :setVehicleAmmo
  def ammo= _ammo
    SQF.setVehicleAmmo @this, _ammo
  end

  __alias :setVehicleAmmoDef
  def ammo_def= _ammo
    SQF.setVehicleAmmoDef @this, _ammo
  end

end
