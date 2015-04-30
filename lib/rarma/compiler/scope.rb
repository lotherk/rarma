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
      new_varname = "_#{varname}"
      @variables[varname.to_sym] = new_varname
      new_varname # return modified
    end
  end
end
