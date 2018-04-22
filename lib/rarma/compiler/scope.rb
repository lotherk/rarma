module Rarma::Compiler
  class Scope
    attr_reader :body, :scopes, :processor, :variables, :namespace, :args
    attr_accessor :file
    def self.namespace
      @scope ||= self.new(Processor.new, :super)
    end
    def initialize processor, type=:script
      @scopes = []
      @file = nil
      @namespace = {}
      @namespace[:type] = type
      @namespace[:variables] = {}
      [:private, :global].each do |var_type|
        @namespace[:variables][var_type] = {}
      end
      @namespace[:name] = processor.file
      @namespace[:args] = {}
      @namespace[:methods] = []
      @namespace[:modules] = []
      @namespace[:classes] = []
      @namespace[:scripts] = []
      @namespace[:body] = {}
      Assembly.namespace[@namespace[:type]] << self
      @processor = processor
      Rarma.logger.debug "new #{type} scope"
    end
    def type
      @namespace[:type]
    end
    def name
      @namespace[:name]
    end
    def name= name
      @namespace[:name] = name
    end

    def body_exp exp
      @namespace[:body][:exp] = exp
    end
    def add_method scope
      @namespace[:methods] << scope
    end
    def add_script scope
      @namespace[:scripts] << scope
    end
    def add_module scope
      @namespace[:modules] << scope
    end

    def add_class scope
      @namespace[:classes] << scope
    end

    def compile_body
      if @namespace[:body][:exp]
        processor = @processor.new_processor
        processor.process @namespace[:body][:exp]
        @namespace[:body][:sqf] = processor.result
      elsif @processor.result # check if result left
        @namespace[:body][:sqf] = @processor.result
      else
        Rarma.logger.warn "empty body for #{@processor.file}"
      end
    end

    def add_arg name, value="nil"
      @namespace[:args][name.to_sym] ||= {}
      @namespace[:args][name.to_sym][:value] = value
      set_private_variable(name.to_sym, value)
    end

    def get_variable varname, scope_context, recurse=true
      Rarma.logger.debug processor.parent
      scope_context = scope_context.to_sym
      if @namespace[:variables][scope_context].has_key?varname.to_sym
        @namespace[:variables][scope_context][varname.to_sym][:name]

      # ask parent
      elsif recurse and processor.parent and processor.parent.scope.get_variable(varname, scope_context)
        processor.parent.scope.get_variable(varname, scope_context)

      # if we're super, we're allowed to ask childs 1 level
      elsif type == :super
        Rarma.logger.debug "Asking my childs"
        processor.childs.each do |childp|
          begin
            retval = childp.get_variable varname, scope_context, false
          rescue
          end
          Rarma.logger.debug retval
          return retval if retval
        end
        raise RuntimeError, "accessing undefined variable '#{varname}'"
      else
        raise RuntimeError, "accessing undefined variable '#{varname}' : #{type} :: #{processor.parent.scope.type}"
      end
    end

    def set_variable varname, value, scope_context
      unless @namespace[:variables][scope_context][varname.to_sym]
        @namespace[:variables][scope_context][varname.to_sym] = {}
        if scope_context == :private
          name = "_#{varname}"
        else
          name = varname
        end
        @namespace[:variables][scope_context][varname.to_sym][:name] = name
      end
      @namespace[:variables][scope_context][varname.to_sym][:value] = value
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
      @namespace[:variables][:private].each do |pv|
        result << pv[1][:name]
      end
      result
    end
    def to_s
      @namespace.to_s
    end
    def debug_dump
      puts "[%s (%s/%s): %s]" % [__id__, @namespace[:name], @namespace[:type], @namespace]
    end

  end
end
