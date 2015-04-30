class Rarma::Compiler::Scope
  attr_reader :scopes, :variables
  def initialize
    @scopes = []
    @variables = {}
  end
  def add scope
    @scopes << scope
  end

  def get_variable varname
    if @variables.has_key?varname.to_sym
      @variables[varname.to_sym]
    else
      varname # return unmodified
    end
  end
end
