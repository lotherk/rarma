class Rarma::Compiler::Scope
  attr_reader :scopes
  def initialize
    @scopes = []
  end
  def add scope
    @scopes << scope
  end
end
