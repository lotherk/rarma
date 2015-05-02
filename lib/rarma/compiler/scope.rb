class Rarma::Compiler::Scope
  attr_reader :scopes, :variables
  def initialize
    @scopes = []
    @variables = {}
    [:private, :global].each do |var_type|
      @variables[var_type] = {}
    end
  end
  def add scope
    @scopes << scope
  end

  def get_variable varname, context
    context = context.to_sym
    if @variables[context].has_key?varname.to_sym
      @variables[context][varname.to_sym][:name]
    else
      raise RuntimeError, "accessing undefined variable '#{varname}'"
#      new_varname = "_#{varname}" if context == :private
#      @variables[context][varname.to_sym] ||= {}]
#      @variables[context][varname.to_sym][:name] = new_varname
    end
  end

  def set_variable varname, value, context
    unless @variables[context.to_sym][varname.to_sym]
      @variables[context.to_sym][varname.to_sym] = {}
      new_varname = "_#{varname}" if context == :private
      @variables[context][varname.to_sym][:name] = new_varname
    end
    @variables[context.to_sym][varname.to_sym][:value] = value
  end

  def get_private_variable varname
    get_variable varname, :private
  end

  def set_private_variable varname, value
    set_variable varname, value, :private
  end

  def get_global_variable varname
    get_variable varname, :global
  end

  def set_global_variable varname, value
    set_variable varname, value, :global
  end
end
