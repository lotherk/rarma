# Represents a key value Hash
class Rarma::Hash < Rarma::Rarma
  __classname :Hash

  attr_reader :set

  def initialize #:nodoc:
    @set = []
  end

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
  def set _key, _value
    @set.each_with_index do |_array, _i|
      if _array[_i] == _key
        @set[_i] = [_key, _value]
      end
    end
  end

  __native :add
  # Alias method for #set
  def add _key, _value, _set=@set
    <<-SQF
    MEMBER("set", [_key, _value]);
    SQF
  end

  __native :each_with_index
  # Iterates each key-value pair with an index and executes _code.
  #
  # ==== Attributes
  #
  # * +_code+ - The code to execute
  #
  # ==== Examples
  #
  #    ["each_with_index", {
  #        _key = DEFAULT_PARAM(0, nil);
  #        _value = DEFAULT_PARAM(1, nil);
  #        _index = DEFAULT_PARAM(2, nil);
  #        hint format["Current index is %1, the key is %2 and it's value is %3", _index, _key, _value];
  #    }] call _hash;
  def each_with_index _code, _set=@set
    <<-SQF
    {
      private "_args";
      _args = _x + _forEeachIndex
      [_args] call _code;
    } forEach _set;
    SQF
  end

  __native :each
  # Iterates each key-value pair and executes _code
  #
  # ==== Attributes
  #
  # * +_code+ - The code to execute
  #
  # ==== Examples
  #
  #    ["each", {
  #        _key = DEFAULT_PARAM(0, nil);
  #        _value = DEFAULT_PARAM(1, nil);
  #        hint format["The key is %1 and it's value is %2", _key, _value];
  #    }] call _hash;
  def each _code, _set=@set
    <<-SQF
    {
      [_x] call _code;
    } count _set;
    SQF
  end

  __native :get
  def get _key, _set=@set
    <<-SQF
    {
      _k = _x select 0;
      _v = _x select 1;
      if (_k == _key) exitWith { _v }; 
    } count _set;
    SQF
  end

  __native :to_a
  # Returns native array
  def to_a
    @set.to_a
  end
end
