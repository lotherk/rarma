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
    @this = SQF.createGroup @side
    @waypoints = []
  end

  # returns an array of units which are in the group
  def units
    _units = SQF.units @this
    @units = _units
    @units
  end

  # returns the leader of the group
  def leader
    _leader = SQF.leader @this
    @leader = _leader
    @leader
  end

  # returns and array of waypoints of this group
  def waypoints
    _waypoints = SQF.waypoints @this
    @waypoints = _waypoints
    @waypoints
  end

  # adds a waypoint for the group
  def addWaypoint _center, _radius, _index=-1
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
    SQF.deleteWaypoint @this, _num
  end

  # returns the index of the current waypoint
  __alias :current_waypoint
  def currentWaypoint
    _curwp = SQF.currentWaypoint @this
    @current_waypoint = _curwp
    @current_waypoint
  end

  # sets the index for the current waypoint
  def setCurrentWaypoint _wp
    @current_waypoint = _wp
    SQF.setCurrentWaypoint @this, _wp
  end

  # disable switching to the next waypoint
  def lockWP _lock
    @lockWP = _lock
    SQF.lockWP @this, _lock
  end

  # sets the group id (callsign)
  # ==== Arguments
  # * +_id+ - identification/name/callsign of the group as a string
  def setGroupId _id
    @groupid = _id
    SQF.setGroupId @this, _id
  end

  # returns the identification/callsign of the group
  def groupId
    _groupid = SQF.groupID @this
    @groupid = _groupid
    @groupid
  end

end
