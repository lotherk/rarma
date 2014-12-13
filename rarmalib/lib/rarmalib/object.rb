class Rarmalib::Object
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

