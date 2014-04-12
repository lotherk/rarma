#include "oop.h"
#include "debug.h"

#define CONSTRUCTOR_METHOD "initialize"
#define FINALIZE_CLASS default {\
                           if(CHECK_MEMBER("method_missing")) then { MEMBER("method_missing",[_member, _this]) }; \
}};};};};}]

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
