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
  def self.log _message, _lineno, _file, _level="INFO"
    <<-SQF
    private "_scriptName";
    // strip mission path from _file
    _scriptName = if (isnil "_fnc_scriptName") then {
      "-"
    } else {
      _fnc_scriptName
    };

    _format = format["%1: %2|%3|%4 %5:%6 %7 %8", _level, time, diag_frameno, diag_fps, _file, _lineno, _scriptName, _message];
    diag_log (text _format);
    SQF
  end
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
     __this = RPARAMS(0, nil);
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
  attr_accessor :self
  attr_reader :methods
  __native :respond_to?
  def respond_to? _m
    <<-SQF
    _m in MEMBER("__methods",nil)
    SQF
  end
  __native
  def class
    "_class"
  end
  __native :to_s
  def to_s
    <<-SQF
    format["%1", _className];
    SQF
  end
end
