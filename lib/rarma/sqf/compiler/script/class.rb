class Rarma::SQF::Compiler::Script::Class
  attr_reader :meths, :vars, :name
  attr_accessor :inherit
  def initialize name=nil
    @meths = []
    @vars = []
    @name = name
    @inherits = nil
  end

  def to_s
    @name
  end
end
