class Parent
  attr_accessor :foo

  def initialize
    @foo = "foo"
  end
end


class Child < Parent
  def initialize
  end
end

class ParentTest
  def initialize
  end

  def start
    _child1 = Child.new
    _child2 = Child.new

    Macro.LOGGER _child1.foo
    Macro.LOGGER _child2.foo

    _child1.foo= "bar"

    Macro.LOGGER _child1.foo
    Macro.LOGGER _child2.foo
  end
end

