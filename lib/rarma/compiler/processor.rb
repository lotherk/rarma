require 'sexp_processor'

module Rarma::Compiler
  class Processor < SexpProcessor
    attr_reader :file, :result, :scope, :parent, :childs
#    def scope= scope
 #     @scope = scope
  #  end
    def initialize
      super
      @result = []
      @childs = []
      self.auto_shift_type = true
    end
    def process exp
      return unless exp
      if exp[0].is_a? Symbol
        raise "Please implement #{exp[0]} processor: #{exp}" unless respond_to? "process_#{exp[0].to_s}".to_sym
      end
      #puts exp.comments
      super
    end
    def file= file
      @file = file
    end
    def parent= parent
      @parent = parent unless @parent
    end
    def scope
      @scope ||= Rarma::Compiler::Scope.new(self)
    end
    def scope= scope
      @scope = scope
    end
    def new_scope type=:script
      Rarma::Compiler::Scope.new self, type
    end
    def new_processor parent=self
      instance =  self.class.new
      instance.parent = parent
      @childs << instance
      instance
    end

    def add_comments comments
      comms = comments.split("\n")
      comms.each do |comm|
        @result << '// %s' % comm.gsub(/^(\s*#)/, '').lstrip
      end
    end

    def debug_dump
      @childs.each { |c| c.debug_dump }
    end

    def inspect
      ""
    end

    Dir["#{Rarma.root}/lib/rarma/compiler/processor/*.rb"].each do |f|
      Rarma.logger.debug "Loading processor #{f}"
      load f
    end
    Rarma::Compiler::Processor.constants.select do |c|
      Rarma::Compiler::Processor.const_get(c).instance_of? ::Module
    end.each do |c|
      str = "Rarma::Compiler::Processor::#{c}"
      include eval(str)
    end
  end

end
