class Rarma::Compiler::Method
  attr_accessor :name, :params, :return
  def initialize
  end
  def params
    @params ||= {}
  end
end
