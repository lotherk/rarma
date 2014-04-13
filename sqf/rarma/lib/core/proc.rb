class Proc
  attr_reader :code
  def initialize _code
    raise "No code" if _code.nil?
    @code = _code
  end

  def call _args = []
    SQF.call _args, @code
  end

  def spawn _args=[]
    SQF.spawn _args, @code
  end
end
