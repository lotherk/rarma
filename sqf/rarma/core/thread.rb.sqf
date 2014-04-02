CLASS_EXTEND("Thread", "Rarma_Object")


PRIVATE VARIABLE("any", "@ref")
PUBLIC FUNCTION("", "ref") FUNC_GETVAR("@ref")
PRIVATE VARIABLE("any", "@terminate")
PUBLIC FUNCTION("", "terminate") FUNC_GETVAR("@terminate")

PUBLIC FUNCTION("array", "initialize") {
private ["_code"]
_code = DEFAULT_PARAM(0, nil)

    _ref = [_class] spawn _code;
    MEMBER("@ref", _ref);
    MEMBER("@terminate", false);

}

PUBLIC FUNCTION("", "running?") {


    !scriptDone FUNC_GETVAR("@ref")

}
PUBLIC FUNCTION("", "terminate!") {


(terminate FUNC_GETVAR("@ref"))
}
ENDCLASS
