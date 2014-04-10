class Rarma::SQF::Compiler::Script::Var
  attr_reader :varname
  attr_accessor :type
  def initialize
    @varname = nil
    @type = :private
  end

  def private?
    true if @type == :private
  end
  def public?
    true if @type == :public
  end
  def protected?
    true if @type == :protected
  end
end
