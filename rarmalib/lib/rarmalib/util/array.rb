# Represents an array
class Rarmalib::Util::Array
  attr_reader :dataset

  __native :initialize
  def initialize
     <<-SQF
     private ["_default", "_def"];
     _def = [];
     _default = RPARAM(_def);
     if(typeName _default != 'ARRAY') exitWith { throw ["ArgumentError", "Argument must be an ARRAY"]; };
     MEMBER("__dataset", _default);
     SQF
  end

  __native :set
  # Sets a value at the given index - Overwrites existing value if any.
  #
  # ==== Attributes
  #
  # * +_index+ - They index to set
  # * +_value+ - The value to set
  #
  # ==== Examples
  #
  #     _array = ["new"] call Array;
  #     ["set", 0, "this is the value"] call _array;
  #     hint (["get", 0] call _array);
  def set _index, _value
    <<-SQF
    MEMBER("__dataset", nil) set [_index, _value];
    SQF
  end

  __native :add
  __alias :<<, :"+=", :+, :"[]="
  def add _value
    <<-SQF
    MEMBER("__dataset", nil) set [count MEMBER("__dataset", nil), _value];
    //_set = _set + [_value];
    //MEMBER("__dataset", _set);
    SQF
  end

  __native :get
  __alias :[]
  def get _index
    <<-SQF
    _set = MEMBER("__dataset", nil);
    if(count _set >= _index) exitWith { throw ["OutOfBoundError", "Index out of bound: " + str(_index)]; };
    _set select _index
    SQF
  end

  __native :each_with_index
  # Iterates each value with an index and executes _code.
  #
  # ==== Attributes
  #
  # * +_code+ - The code to execute
  #
  # ==== Examples
  #
  #    ["each_with_index", {
  #        _value = DEFAULT_PARAM(0, nil)
  #        _index = DEFAULT_PARAM(1, nil)
  #        hint format["Current index is %1, the value is %2", _index, _value];
  #    }] call _array;
  def each_with_index _code
    <<-SQF
    {
      private "_args";
      _args = [];
      _args = _args + [_x] + [_forEachIndex];
      _args call _code;
    } forEach MEMBER("__dataset", nil);
    SQF
  end

  __native :each
  # Iterates each value executes _code
  #
  # ==== Attributes
  #
  # * +_code+ - The code to execute
  #
  # ==== Examples
  #
  #    ["each", {
  #        _value = DEFAULT_PARAM(0, nil)
  #        hint format["The value is %1", _value];
  #    }] call _array;
  def each _code
    <<-SQF
    {
        [_x] call _code;
    } count MEMBER("__dataset", nil);
    SQF
  end

  __native :to_a
  # Returns native array
  def to_a
    "MEMBER(\"__dataset\", nil)"
  end
  def to_native
    to_a
  end
  def includes? _m
    SQF.in _m, @dataset
  end

  def count
    SQF.count @dataset
  end

end
