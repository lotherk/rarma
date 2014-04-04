module Rarma::SQF::Compiler::Processor::Class
  class ClassProcessor < Rarma::SQF::Compiler::Processor
    def parse(exp)
      Rarma.logger.debug "Parsing #{exp}"
      name = exp.shift
      noclue = exp.shift

      self
    end
  end
  def process_class exp
    klass = ClassProcessor.new.parse(exp)
    puts klass
    exit
    exp
  end
end
