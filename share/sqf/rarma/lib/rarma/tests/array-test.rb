class ArrayTest
  # prepare test-case
  __native
  def initialize
    <<-SQF

    SQF
  end

  __native
  # start the test
  #
  def start
    <<-SQF
    _array_native = [];
    _array_class = ["new"] call Array;

    LOGGER("TESTING NATIVE ARRAY");

    LOGGER("Populating array with 100.000 values");
    for "_i" from 1 to 100.000 do {
      _array_native = _array_native + ["This is a test string"]
    };
    SQF
  end
end
