# represents a group in the game world
class Rarma::Group
  attr_reader :side, :this
  attr_accessor :units, :leader, :formation_leader, :groupid, :waypoints, :current_waypoint

  # create a group of the given side
  # ==== Arguments
  # * +_side+ - side of the group. Might be either west, east, resistance
  #   or civilian
  #
  # Returns the group
  def initialize _side
    @side = _side
    @this = SQF.createGroup _side
    @waypoints = []
  end

  # returns an array of units which are in the group
  def units
    @units = SQF.units @this
    @units
  end

  def leader= _leader
    @leader = _leader
    SQF.setLeader @this, _leader
  end

  # returns the leader of the group
  def leader
    @leader = SQF.leader @this
    @leader
  end

  # returns and array of waypoints of this group
  def waypoints
    @waypoints = SQF.waypoints @this
    @waypoints
  end

  # adds a waypoint for the group
  def add_waypoint _center, _radius, _index=-1
    if _index == -1
      _wp = Rarma::Waypoint.new @this, _center, _radius
    else
      _wp = Rarma::Waypoint.new @this, _center, _radius, _index
    end
    _wp
  end

  # deletes a waypoint
  #--
  # Global function, might move that somewhere else
  #++
  def deleteWaypoint _wp
    SQF.deleteWaypoint _wp
  end

  # deletes waypoint of this group at given index
  # ==== Arguments
  # * +_num+ - integer index of waypoint to remove
  def delete_waypoint _num
    SQF.deleteWaypoint [@this, _num].to_a
  end

  # returns the index of the current waypoint
  __alias :currentWaypoint
  def current_waypoint
    @current_waypoint = SQF.currentWaypoint @this
    @current_waypoint
  end

  # sets the index for the current waypoint
  def current_waypoint= _wp
    @current_waypoint = _wp
    SQF.setCurrentWaypoint @this, _wp
  end

  # disable switching to the next waypoint
  __alias :lockWP
  def lock_wp _lock
    @lockWP = _lock
    SQF.lockWP @this, _lock
  end

  # sets the group id (callsign)
  # ==== Arguments
  # * +_id+ - identification/name/callsign of the group as a string
  __alias :setGroupId
  def groupid= _id
    @groupid = _id
    SQF.setGroupId @this, _id
  end

  # returns the identification/callsign of the group
  __alias :groupId
  def groupid
    @groupid = SQF.groupID @this
    @groupid
  end

  __alias :combatMode
  def combat_mode
    SQF.combatMode @this
  end

  __alias :setCombatMode
  def combat_mode= _mode
    SQF.setCombatMode @this, _mode
  end

  def behaviour
    SQF.behaviour @this
  end

  __alias :setBehaviour
  def behaviour= _beh
    SQF.setBehaviour @this, _beh
  end

end
