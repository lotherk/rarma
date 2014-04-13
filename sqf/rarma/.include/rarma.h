#include "oop.h"
#include "debug.h"

#define CONSTRUCTOR_METHOD "initialize"
#define RPARAMS(idx,dflt) if(!isNil "_this") then {\
    if(typeName _this == 'ARRAY') then {\
      if(count _this > idx) then {\
        _this select idx\
      } else {\
        dflt\
      }\
    } else {\
      _this\
    }\
  } else {dflt}

#define RPARAM(dft) if(!isNil "_this") then {_this} else {dft}
#define RARMA_REQUIRE(package) call compileFinal preProcessFileLineNumbers format["%1\\__init__.sqf", package]
