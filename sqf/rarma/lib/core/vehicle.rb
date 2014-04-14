class Rarma::Vehicle < Rarma::SQFObject
  attr_accessor :driver, :gunner, :commander, :turrets, :cargo,
    :ammo, :fuel, :lock, :armor, :vehicle_id, :velocity, :crew,
    :fuel_cargo
  attr_reader :this

  # Effectively creates the vehicle in the game world
  #
  # ==== Arguments
  # * +_marker+ - an array containing marker names. The vehicle will spawn
  #   randomly at the position of one of the markers. Default is empty
  # * +_special+ - string. Either "NONE", "FORM", "NO_COLLIDE" or "FLY"
  #   Default is "FORM"
  #
  # ==== Example
  #   vec = Vehicle.new "C_Car"
  #   vec.create ["mrk1", "mrk2"], "FLY"
  __native :create
  def create _marker=[], _special="FORM"
    <<-SQF
    _marker = ["to_a"] call _marker;
    _classname = call compile GETVAR("__classname");
    _pos = call compile GETVAR("__posATL");

    _vec = createVehicle [_classname, _pos, _marker, 0, _special];
    MEMBER("__this", _vec);
    SQF
  end

  # returns the driver of the vehicle
  def driver
    _driver = SQF.driver @this
    @driver = _driver
    @driver
  end

  # returns the gunner of the vehicle
  def gunner
    _gunner = SQF.gunner @this
    @gunner = _gunner
    @gunner
  end

  # returns the commander of the vehicle
  def commander
    _commander = SQF.commander @this
    @commander = _commander
    @commander
  end

  # returns all units in the vehicle in the format:
  # [driver, gunner, commander, turrets, cargo]
  def crew
    _crew = SQF.crew @this
    @crew = _crew
    @crew
  end

  # returns the amount of fuel left in the gas tank
  # of a vehicle
  def fuel
    _fuel = SQF.fuel @this
    @fuel = _fuel
    @fuel
  end

  # creates the crew (AI units) for the vehicle
  def createVehicleCrew
    SQF.createVehicleCrew @this
  end

  # sets the amount of fuel of the vehicle.
  # ==== Arguments
  # * +_fuel+ - amount of fuel. Value between 0 (empty) and 1 (full)
  def setFuel _fuel
    @fuel = _fuel
    SQF.setFuel @this, _fuel
  end

  # sets the amount of fuel left in cargo space of
  # a refueling vehicle
  # ==== Arguments
  # * +_fuel+ - amount of fuel in the cargo space. Value between 0 and 1
  def setFuelCargo _fuel
    @fuel_cargo = _fuel
    SQF.setFuelCargo @this, _fuel
  end

  # sets the lock of the vehicle
  # ==== Arguments
  # * +_lock+ - Set how vehicle is locked for player. Possible values: "UNLOCKED", "DEFAULT" or "LOCKED".
  def setVehicleLock _lock
    @lock = _lock
    SQF.setVehicleLock @this, _lock
  end

  # sets the armor of a vehicle
  # ==== Arguments
  # * +_armor+ - Sets the armor state of the vehicle (a value from 0 to 1).
  def setVehicleArmror _armor
    @armor = _armor
    SQF.setVehicleArmor @this, _armor
  end

  # sets the velocity vector of the vehicle
  # ==== Arguments
  # * +_velo+ - velocity vector
  def setVelocity _velo
    @velocity = _velo
    SQF.setVelocity @this, _velo
  end

  def setVehiclePosition _position, _markers, _placement
    SQF.setVehiclePosition @this, _position, _markers, _placement
  end

  def setVehicleTiPars _pars
    SQF.setVehicleTiPars @this, _pars
  end

end
