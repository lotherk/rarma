CLASS("Rarma_Object")


PUBLIC FUNCTION("array", "respond_to?") {
private ["_m"]
_m = DEFAULT_PARAM(0, nil)

    if (! isNil format["%1", _m]) then {
      true
    } else {
      false
    };

}

PUBLIC FUNCTION("", "to_s") {


    format["%1", _className];

}
ENDCLASS
