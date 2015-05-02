class Rarma::Compiler::Scope
  attr_reader :scopes, :private_variables, :global_variables
  def initialize
    @scopes = []
    @private_variables = {}
  end
  def add scope
    @scopes << scope
  end

  def get_variable varname
    get_private_variable varname
  end

  def get_private_variable varname
    if @private_variables.has_key?varname.to_sym
      @private_variables[varname.to_sym]
    else
      new_varname = "_#{varname}"
      @private_variables[varname.to_sym] = new_varname
      new_varname # return modified
    end
  end

  def get_global_variable varname
    if @global_variables.has_key?varname.to_sym
      @global_variables[varname.to_sym]
    else
      @global_variables[varname.to_sym] = varname
    end
  end
end
