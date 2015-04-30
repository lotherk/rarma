class Rarma::Compiler::Method < Rarma::Compiler::Scope
  attr_accessor :name, :params, :return
  def initialize
    super
  end
  def params
    @params ||= {}
  end
end
