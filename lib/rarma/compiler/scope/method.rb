class Rarma::Compiler::Scope::Method < Rarma::Compiler::Scope
  attr_accessor :name, :params, :return
  def initialize parent
    super
  end
  def params
    @params ||= {}
  end
end
