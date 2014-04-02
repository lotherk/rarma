class MyClass
  attr_reader :var1, :var2, :var3, :array
  def initialize
    @var1 = "Value 1"
    @var2 = "Value 2"
    @var3 = "Value 3"
    @array = [1, 2, 3, 4]
    @array << 5
  end

  def hint_vars
    hint "Var1: #{@var1}, Var2: #{@var2}, Var3: #{@var3}"
  end

  def iter_array
    hint "Iter array: #{@array}"
  end
end
def _test arg
  hint "Got arg #{arg}"
  sleep 1
  myclass = MyClass.new
  myclass.hint_vars
  sleep 5
  myclass.iter_array
end
_test "foobar"
$forall = true

hint $forall
