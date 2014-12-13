module Rarmalib::Factory
  def get _var, _class
    _class.new.from_object(_var)
  end
end
