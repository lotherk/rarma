# Represents a key value Hash
class Rarmalib::Util::Hash < Rarma::Util::Array

  attr_reader :dataset
  # Sets a key with a value - Overwrites existing key if any.
  #
  # ==== Attributes
  #
  # * +_key+ - They key to set
  # * +_value+ - The value to set
  #
  # ==== Examples
  #
  #     _hash = ["new"] call Hash;
  #     ["set", "aKey", "this is the value"] call _hash;
  #     hint (["get", "aKey"] call _hash);
  __native
  __alias :update
  def set _key, _value
    <<-SQF
    {
      if (!isNil "_x" && {typeName _x == 'ARRAY'} && {count _x == 2}) then {
          _k = _x select 0;
          _v = _x select 1;
          _i = _forEachIndex;
          if(_key == _k) exitWith {
              MEMBER("__dataset",nil) set [_i, [_key,_value]];
          };
      };
    } forEach MEMBER("__dataset",nil);
    MEMBER("__dataset",nil) set [count(MEMBER("__dataset",nil)), [_key,_value]];
    SQF
  end
  __native :add
  # adds an element to the hash
  def add _key, _value
    <<-SQF
    if(isNil "_key" or isNil "_value") exitWith { throw ["ArgumentError", "Arguments must be key, value"]; };
    ["add", [_key, _value]] call MEMBER("__dataset", nil);
    SQF
  end

  __native :get
  def get _key
    <<-SQF
    _set = MEMBER("__dataset", nil);
    {
      _k = _x select 0;
      _v = _x select 1;
      if (_k == _key) exitWith { _v };
    } count _set;
    SQF
  end
end
