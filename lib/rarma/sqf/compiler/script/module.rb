class Rarma::SQF::Compiler::Script::Module
  attr_reader :meths, :name
  def initialize name=nil
    @meths = []
    @name = name
  end

  def to_s
    @name
  end
end
