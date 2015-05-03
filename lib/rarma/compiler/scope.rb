module Rarma::Compiler
  class Scope
    attr_reader :body, :scopes, :type, :processor, :variables, :modules, :classes, :methods, :args
    attr_accessor :name, :body_exp
    def initialize processor, type=:script
      @type = type
      @scopes = []
      @variables = {}
      [:private, :global].each do |var_type|
        @variables[var_type] = {}
      end
      @name = nil
      @args = {}
      @methods = []
      @modules = []
      @classes = []
      @body = {}
      Assembly.namespace[type] << self
      @processor = processor
    end
    def body_exp exp
      @body[:exp] = exp.clone
      exp = s()
    end
    def add_method scope
      @methods << scope
    end
    def add_module scope
      @modules << scope
    end

    def add_class scope
      @classes << scope
    end
    def add_arg name, value="nil"
      @args[name.to_sym] ||= {}
      @args[name.to_sym][:value] = value
      set_private_variable(name.to_sym, value)
    end

    def get_variable varname, scope_context
      scope_context = scope_context.to_sym
      if @variables[scope_context].has_key?varname.to_sym
        @variables[scope_context][varname.to_sym][:name]

      # ask parent
      elsif processor.parent and processor.parent.scope.get_variable(varname, scope_context)
        processor.parent.scope.get_variable(varname, scope_context)
      else
        raise RuntimeError, "accessing undefined variable '#{varname}'"
      end
    end

    def set_variable varname, value, scope_context
      unless @variables[scope_context][varname.to_sym]
        @variables[scope_context][varname.to_sym] = {}
        if scope_context == :private
          name = "_#{varname}"
        else
          name = varname
        end
        @variables[scope_context][varname.to_sym][:name] = name
      end
      @variables[scope_context][varname.to_sym][:value] = value
    end

    def get_private_variable varname
      get_variable varname, :private
    end

    def set_private_variable varname, value=nil
      set_variable varname, value, :private
    end

    def get_global_variable varname
      get_variable varname, :global
    end

    def set_global_variable varname, value=nil
      set_variable varname, value, :global
    end

    def private_variables
      result = []
      @variables[:private].each do |pv|
        result << pv[1][:name]
      end
      result
    end

  end
end
require 'rarma/compiler/scope/method'
