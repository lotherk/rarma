CLASS_EXTEND("Array", "Rarma_Object")


PRIVATE VARIABLE("any", "@set")
PUBLIC FUNCTION("", "set") FUNC_GETVAR("@set")

PUBLIC FUNCTION("", "initialize") {


    MEMBER("@set", []);

}

PUBLIC FUNCTION("array", "set") {
private ["_index", "_value", "_set"]
_index = DEFAULT_PARAM(0, nil)
_value = DEFAULT_PARAM(1, nil)
_set = DEFAULT_PARAM(2, FUNC_GETVAR("@set"))

    FUNC_GETVAR("@set") set[_index, _value]

}
PUBLIC FUNCTION("array", "<<") {
private ["_value", "_set"]
_value = DEFAULT_PARAM(0, nil)
_set = DEFAULT_PARAM(1, FUNC_GETVAR("@set"))

([_value] call add)

}

PUBLIC FUNCTION("array", "add") {
private ["_value", "_set"]
_value = DEFAULT_PARAM(0, nil)
_set = DEFAULT_PARAM(1, FUNC_GETVAR("@set"))

    _set = _set + _value;
    MEMBER("@set", _set);

}

PUBLIC FUNCTION("array", "get") {
private ["_index", "_set"]
_index = DEFAULT_PARAM(0, nil)
_set = DEFAULT_PARAM(1, FUNC_GETVAR("@set"))

    _set select _index

}

PUBLIC FUNCTION("array", "each_with_index") {
private ["_code", "_set"]
_code = DEFAULT_PARAM(0, nil)
_set = DEFAULT_PARAM(1, FUNC_GETVAR("@set"))

    {
      _args = _x + _forEachIndex
      [_args] call _code;
    } forEach _set;

}

PUBLIC FUNCTION("array", "each") {
private ["_code", "_set"]
_code = DEFAULT_PARAM(0, nil)
_set = DEFAULT_PARAM(1, FUNC_GETVAR("@set"))

    {
        [_x] call _code;
    } count _set;

}

PUBLIC FUNCTION("", "to_a") {


FUNC_GETVAR("@set")
}
ENDCLASS
