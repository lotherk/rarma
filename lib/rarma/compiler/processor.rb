require 'sexp_processor'

module Rarma::Compiler
  class Processor < SexpProcessor
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
    attr_reader :result, :scope
    def scope= scope
      @scope = scope
    end
    def initialize
      super
      @result = []
      @scope = Rarma::Compiler::Scope.new
      self.auto_shift_type = true
    end
    def process exp
      if exp[0].is_a? Symbol
        raise "Please implement #{exp[0]} processor: #{exp}" unless respond_to? "process_#{exp[0].to_s}".to_sym
      end
      #puts exp.comments
      super
    end
  end
end
