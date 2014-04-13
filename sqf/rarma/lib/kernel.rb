#
# Rarma SQF Kernel Functions
#
#

SQF.createCenter SQF.WEST
SQF.createCenter SQF.EAST
SQF.createCenter SQF.RESISTANCE
SQF.createCenter SQF.CIVILIAN

module Rarma::Kernel
  __native
  def init
    <<-SQF
    _succ = ("Arma2Net.Unmanaged" callExtension "PY import rarma");
    if(_succ == "") then {
        LOGGER("Loaded Ruby from Python successfully")
    } else {
        LOGGER_FATAL("Couldn't load Ruby from Python."); 
        LOGGER_FATAL("Output:\\n" + _succ);
        LOGGER_FATAL("End of output.");
    };
    SQF
  end
  __native
  def self.param
    <<-SQF
    private["__this", "_default"];
    __this = _this select 0;
    _default = _this select 1;
    if(isNil "__this") exitWith { _default };
    __this
    SQF
  end
  __native
  def self.params
    <<-SQF
     private ["__this", "_index", "_default"];
     __this = _RPARAMS(0, nil);
     _default = RPARAMS(1, nil);
     _index = RPARAMS(2, nil);
     if(!isNil "__this") then {
       if(typeName __this == 'ARRAY') then {
         if(count __this > _index) then {
           __this select _index
         } else {
           _default
         }
       } else {
         __this
       }
     } else {
       _default
     }
    SQF
  end
end
class Rarma::Object
  __native :respond_to?
  def respond_to? _m
    <<-SQF
    if (! isNil format["%1", _m]) then {
      true
    } else {
      false
    };
    SQF
  end

  __native :to_s
  def to_s
    <<-SQF
    format["%1", _className];
    SQF
  end
end
