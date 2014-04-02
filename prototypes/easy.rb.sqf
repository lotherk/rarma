CLASS("TestClass")
    PRIVATE VARIABLE("any", "@testvar");
    PUBLIC FUNCTION("", "testvar") FUNC_GETVAR("@testvar");
    PUBLIC FUNCTION("", "constructor") {
        MEMBER("@testvar", "testvalue");
    };
    PUBLIC FUNCTION("array", "testvar=") {
        private ["_value"];
        _value = DEFAULT_PARAM(0, nil);
        MEMBER("@testvar", _value);
    };
ENDCLASS;
_test = (["new"] call TestClass);
(hint (format["Testvar is %1", (["testvar"] call _test)]));
(["testvar=", ["different now!"]] call _test);
(sleep 5);
(hint (format["Testvar is %1", (["testvar"] call _test)]));
CLASS("FooBar")
    PUBLIC FUNCTION("", "foo") {
        if (true) then {
            (["bla"] call puts);
        };
        f = if (true) then {
            "bla";
        } else {
            "blubb";
        };
        (["bar"] call puts);
    };
ENDCLASS;