CLASS("Array")
    PRIVATE VARIABLE("any", "@dataset");
    PUBLIC FUNCTION("", "dataset") FUNC_GETVAR("@dataset");
    PUBLIC FUNCTION("", "initialize") {
        MEMBER("@dataset", []);
    };
    PUBLIC FUNCTION("array", "set") {
        private ["_index", "_value", "_set"];
        _index = DEFAULT_PARAM(0, nil);
        _value = DEFAULT_PARAM(1, nil);
        _set = DEFAULT_PARAM(2, FUNC_GETVAR("@dataset"));
        FUNC_GETVAR("@dataset") set[_index, _value];
    };
    PUBLIC FUNCTION("array", "add") {
        private ["_value", "_set"];
        _value = DEFAULT_PARAM(0, nil);
        _set = DEFAULT_PARAM(1, FUNC_GETVAR("@dataset"));
        _set = _set + _value;
        MEMBER("@dataset", _set);
    };
    PUBLIC FUNCTION("array", "get") {
        private ["_index", "_set"];
        _index = DEFAULT_PARAM(0, nil);
        _set = DEFAULT_PARAM(1, FUNC_GETVAR("@dataset"));
        _set select _index;
    };
    PUBLIC FUNCTION("array", "each_with_index") {
        private ["_code", "_set"];
        _code = DEFAULT_PARAM(0, nil);
        _set = DEFAULT_PARAM(1, FUNC_GETVAR("@dataset"));
        {
            _args = _x + _forEachIndex;
            [_args] call _code;
        } forEach _set;
    };
    PUBLIC FUNCTION("array", "each") {
        private ["_code", "_set"];
        _code = DEFAULT_PARAM(0, nil);
        _set = DEFAULT_PARAM(1, FUNC_GETVAR("@dataset"));
        {
            [_x] call _code;
        } count _set;
    };
    PUBLIC FUNCTION("", "to_a") {
        FUNC_GETVAR("@dataset");
    };
ENDCLASS;
