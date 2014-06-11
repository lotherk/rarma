module CBA
  __native
  def addWaypoint _group, _position, _radius, _waypoint_type, _behaviour, _combat_mode, _speed_mode, _formation, _code_exec_each_waypoint, _timeout_each, _waypoint_radius
    <<-SQF
    [_group, _position, _radius, _waypoint_type, _behaviour, _combat_mode, _speed_mode, _formation, _code_exec_each_waypoint, _timeout_each, _waypoint_radius] call CBA_fnc_addWaypoint
    SQF
  end
end
