module Rarma::Compiler::Processor::Dstr
  def process_dstr exp
    Rarma.logger.debug exp.to_s
    results = []
    while exp.count > 0
      e = exp.shift
      if e.is_a?Sexp
        processor = self.class.new
        processor.scope = @scope
        processor.process e
        results << { :sexp => processor.result.shift }
      else
        results << { :str  => e }
      end
    end
    puts results.inspect
    exp
  end
end
