class Rarma::SQF::Compiler::Script::Module
  attr_reader :meths, :name
  attr_reader :header
  def initialize name=nil
    @meths = []
    @name = name
    @header = []
  end

  def to_s
    @name
  end
end
