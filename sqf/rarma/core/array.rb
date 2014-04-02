# Represents an array
class Rarma::Array
  __classname :Array

  attr_reader :dataset

  __native :initialize
  def initialize #:nodoc:
    <<-SQF
    MEMBER("@dataset", []);
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
  def set _index, _value, _set=@dataset
    <<-SQF
    FUNC_GETVAR("@dataset") set[_index, _value]
    SQF
  end

  __native :add
  def add _value, _set=@dataset
    <<-SQF
    _set = _set + [_value];
    MEMBER("@dataset", _set);
    SQF
  end

  __native :get
  def get _index, _set=@dataset
    <<-SQF
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
  def each_with_index _code, _set=@dataset
    <<-SQF
    {
      _args = _x + _forEachIndex
      [_args] call _code;
    } forEach _set;
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
  def each _code, _set=@dataset
    <<-SQF
    {
        [_x] call _code;
    } count _set;
    SQF
  end

  __native :to_a
  # Returns native array
  def to_a
    "FUNC_GETVAR(\"@dataset\")"
  end
end
