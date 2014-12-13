# represents a waypoint for a group
class Rarma::SQF::Waypoint
  attr_reader :this, :group, :index, :center, :radius
  attr_accessor :type, :speed, :combat_mode, :formation,
    :behaviour, :completion_radius, :house_position, :timeout,
    :script, :condition, :statement, :description, :pos, :min,
    :mid, :max

    def initialize _group, _center, _radius, _index=nil
      @group = _group
      @center = _center
      @radius = _radius
      if _index.nil?
        _wp = SQF.addWaypoint _group, _center, _radius
        @index = _wp[1]
      else
        @index = _index
        _wp = SQF.addWaypoint _group, _center, _radius, _index
      end
      @pos = SQF.waypointPosition _wp
    end

    # sets the radius around the center position
    # of the waypoint which the group has to enter
    # to complete the waypoint
    __alias :completion_radius=,:completion_radius
    def setWaypointCompletionRadius _radius
      @completion_radius = _radius
      SQF.setWaypointCompletionRadius @this, _radius
    end

    # sets a description text shown in the HUD
    __alias :description=,:description
    def setWaypointDescription _text
      @description = _text
      SQF.setWaypointDescription @this, _text
    end

    # sets the formation the group has to use
    # while traveling to the waypoint
    # ==== Arguments
    # * +_form+ - string - Possible values are:
    #   * "NO CHANGE"
    #   * "COLUMN"
    #   * "STAG COLUMN"
    #   * "WEDGE"
    #   * "ECH LEFT"
    #   * "ECH RIGHT"
    #   * "VEE"
    #   * "LINE"
    #   * "FILE"
    #   * "DIAMOND"
    __alias :formation=,:formation
    def setWaypointFormation _form
      @formation = _form
      SQF.setWaypointFormation @this, _form
    end

    # for waypoints attached to a house, this defines
    # the target house position
    __alias :house_position=,:house_position
    def setWaypointHousePosition _pos
      @house_position = _pos
      SQF.setWaypointHousePosition @this, _pos
    end

    # sets the waypoint position
    __alias :position=,:position
    def setWPPos _pos
      @pos = _pos
      SQF.setWPPos @this, _pos
    end

    # sets the waypoint position randomly
    # in a given radius around a given center position
    # ==== Arguments
    # * +_center+ - center position
    # * +_radius+ - integer radius
    def setWaypointPosition _center, _radius
      @center = _center
      @radius = _radius
      _wpos = SQF.setWaypointPosition @this, _center, _radius
      @pos = _wpos
    end

    # Attaches a script to a scripted waypoint. Command consist
    # of a script name and additional script arguments.
    #
    # The Script has to use SQS-Syntax.
    __alias :script=,:script
    def setWaypointScript _script
      @script = script
      SQF.setWaypointScript @this, _script
    end

    #  Switches the group speed mode when the
    #  waypoint becomes active.
    __alias :speed=,:speed
    def setWaypointSpeed _speed
      @speed = _speed
      SQF.setWaypointSpeed @this, _speed
    end

    def setWaypointStatements _condition, _statement
      @condition = _condition
      @statement = _statement
      SQF.setWaypointStatements @this, _condition, _statement
    end

    __alias :timeout=,:timeout
    def setWaypointTimeout _min, _mid, _max
      @min = _min
      @mid = _mid
      @max = _max
      @timeout = [_min, _mid, _max]
      SQF.setWaypointTimeout @this, _min, _mid, _max
    end
end
