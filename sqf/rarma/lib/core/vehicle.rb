class Rarma::Vehicle < Rarma::SQFObject
  attr_accessor :driver, :gunner, :commander, :turrets, :cargo,
    :ammo, :fuel, :lock, :armor, :vehicle_id, :velocity, :crew

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
  def create _marker=[], _special="FORM"
    @this = SQF.createVehicle @classname, @posATL, _marker.to_a, 0, _special
  end

  # returns the driver of the vehicle
  def driver
    @driver = SQF.driver @this
  end

  # returns the gunner of the vehicle
  def gunner
    @gunner = SQF.gunner @this
  end

  # returns the commander of the vehicle
  def commander
    @commander = SQF.commander @this
  end

  # returns all units in the vehicle in the format: 
  # [driver, gunner, commander, turrets, cargo]
  def crew
    @crew = SQF.crew @this
  end

  # creates the crew (AI units) for the vehicle
  def createVehicleCrew
    SQF.createVehicleCrew @this
  end

  # sets the amount of fuel of the vehicle. 
  # ==== Arguments
  # * +_fuel+ - amount of fuel. Value between 0 (empty) and 1 (full)
  def setVehicleFuel _fuel
    SQF.setVehicleFuel @this, _fuel
  end

  # sets the lock of the vehicle
  # ==== Arguments
  # * +_lock+ - Set how vehicle is locked for player. Possible values: "UNLOCKED", "DEFAULT" or "LOCKED". 
  def setVehicleLock _lock
    SQF.setVehicleLock @this, _lock
  end

  # sets the armor of a vehicle
  # ==== Arguments
  # * +_armor+ - Sets the armor state of the vehicle (a value from 0 to 1).
  def setVehicleArmror _armor
    SQF.setVehicleArmor @this, _armor
  end

  # sets the velocity vector of the vehicle
  # ==== Arguments
  # * +_velo+ - velocity vector
  def setVelocity _velo
    SQF.setVelocity @this, _velo
  end

  def setVehiclePosition _position, _markers, _placement
    SQF.setVehiclePosition @this, _position, _markers, _placement
  end

  def setVehicleTiPars _pars
    SQF.setVehicleTiPars @this, _pars
  end

end
