require 'sexp_processor'

class Rarma::SQF::Compiler::Processor < SexpProcessor

  attr_reader :script
  attr_accessor :current_class, :current_module

  Dir["#{Rarma.gem_root}/lib/rarma/sqf/compiler/processor2/*.rb"].each do |f|
    Rarma.logger.debug "Loading processor #{f}"
    load f
  end

  Rarma::SQF::Compiler::Processor.constants.select do |c|
    Rarma::SQF::Compiler::Processor.const_get(c).instance_of? Module
  end.each do |c|
    str = "Rarma::SQF::Compiler::Processor::#{c}"
    include eval(str)
  end

  def self.process p
    a = self.new
    a.process p
    a.script
  end

  def initialize()
    super
    self.auto_shift_type = true
    @script = []
    Rarma.logger.debug "#{self} Processing... "
    @current_class = nil
    @current_module = nil
  end

  def process exp
    if exp[0].is_a? Symbol
      raise "Please implement #{exp[0]} processor: #{exp}" unless respond_to? "process_#{exp[0].to_s}".to_sym
    end
    super
  end
  def script
    @script
  end

end
