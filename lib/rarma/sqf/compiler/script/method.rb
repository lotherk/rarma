class Rarma::SQF::Compiler::Script::Method
  attr_reader :name, :args
  attr_accessor :body

  def initialize
    @name = nil
    @args = []
  end
end
