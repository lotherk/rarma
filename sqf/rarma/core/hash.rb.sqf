CLASS("Hash")
    PRIVATE VARIABLE("any", "@set");
    PUBLIC FUNCTION("", "set") FUNC_GETVAR("@set");
    PUBLIC FUNCTION("", "initialize") {
        MEMBER("@dataset", ["new", []] call Array);
    };
    PUBLIC FUNCTION("array", "set") {
        private ["_key", "_value"];
        _key = DEFAULT_PARAM(0, nil);
        _value = DEFAULT_PARAM(1, nil);
        (["each_with_index", [{
            _array = DEFAULT_PARAM(0, nil);
            _i = DEFAULT_PARAM(1, nil);
            if (((["get", _i] call _array) == _key)) then {
                (["[]=", [_i]] call MEMBER("@dataset",nil));
            };
        }]] call MEMBER("@dataset",nil));
    };
    PUBLIC FUNCTION("array", "add") {
        private ["_key", "_value", "_set"];
        _key = DEFAULT_PARAM(0, nil);
        _value = DEFAULT_PARAM(1, nil);
        _set = DEFAULT_PARAM(2, MEMBER("@dataset",nil));
        MEMBER("set", [_key, _value]);
    };
    PUBLIC FUNCTION("array", "each_with_index") {
        private ["_code", "_set"];
        _code = DEFAULT_PARAM(0, nil);
        _set = DEFAULT_PARAM(1, MEMBER("@dataset",nil));
        {
            private "_args";
            _args = [];
            _args = _args + [_x] + [_forEeachIndex];
            _args call _code;
        } forEach _set;
    };
    PUBLIC FUNCTION("array", "each") {
        private ["_code", "_set"];
        _code = DEFAULT_PARAM(0, nil);
        _set = DEFAULT_PARAM(1, MEMBER("@dataset",nil));
        {
            [_x] call _code;
        } count _set;
    };
    PUBLIC FUNCTION("array", "get") {
        private ["_key", "_set"];
        _key = DEFAULT_PARAM(0, nil);
        _set = DEFAULT_PARAM(1, MEMBER("@dataset",nil));
        {
            _k = _x select 0;
            _v = _x select 1;
            if (_k == _key) exitWith { _v };
        } count _set;
    };
    PUBLIC FUNCTION("", "to_a") {
        MEMBER("@dataset", nil);
    };
ENDCLASS;
