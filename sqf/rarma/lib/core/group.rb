# represents a group in the game world
class Rarma::Group
  attr_reader :side
  attr_accessor :units, :leader, :formation_leader, :groupid

  # create a group of the given side
  # ==== Arguments
  # * +_side+ - side of the group. Might be either west, east, resistance
  #   or civilian
  #
  # Returns the group
  def initialize _side
    @side = _side
    @this = SQF.createGroup @side
  end

  # returns an array of units which are in the group
  def units
    @units = SQF.units @this
  end

  # returns the leader of the group
  def leader
    @leader = SQF.leader @this
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
    @groupid = SQF.groupID @this
  end

end
