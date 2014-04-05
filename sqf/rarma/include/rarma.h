#include "oop.h"

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
// not working: #define RCVAR(var) MEMBER(format["@%1",var],nil)
#define RARMA_PY(python) ("Arma2Net.Unmanaged" callExtension format["PY %1", python]) // also not working
