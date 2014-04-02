class TestClass
  attr_reader :testvar

  def constructor
    @testvar = "testvalue"
  end

  def testvar= _value
    @testvar = _value
  end
end

_test = TestClass.new

hint "Testvar is #{_test.testvar}"

_test.testvar="different now!"
sleep 5

hint "Testvar is #{_test.testvar}"

