CLASS("Array")
    PRIVATE VARIABLE("any", "@dataset");
    PUBLIC FUNCTION("", "dataset") FUNC_GETVAR("@dataset");
    PUBLIC FUNCTION("", "initialize") {
        MEMBER("@dataset", []);
    };
    PUBLIC FUNCTION("array", "set") {
        private ["_index", "_value"];
        _index = DEFAULT_PARAM(0, nil);
        _value = DEFAULT_PARAM(1, nil);
        MEMBER("@dataset") set [_index, _value];
    };
    PUBLIC FUNCTION("array", "add") {
        private ["_value"];
        _value = _this;
        _set = MEMBER("@dataset", nil);
        _set = _set + [_value];
        MEMBER("@dataset", _set);
    };
    PUBLIC FUNCTION("array", "get") {
        private ["_index"];
        _index = _this;
        _set = MEMBER("@dataset", nil);
        _set select _index;
    };
    PUBLIC FUNCTION("array", "each_with_index") {
        private ["_code"];
        _code = _this;
        _set = MEMBER("@dataset", nil);
        {
            _args = [];
            _args = _args + [_x] + [_forEachIndex];
            _args call _code;
        } forEach _set;
    };
    PUBLIC FUNCTION("array", "each") {
        private ["_code"];
        _code = _this;
        _set = MEMBER("@dataset", nil);
        {
            [_x] call _code;
        } count _set;
    };
    PUBLIC FUNCTION("", "to_a") {
        MEMBER("@dataset", nil);
    };
ENDCLASS;
