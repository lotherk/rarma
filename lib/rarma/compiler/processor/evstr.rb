module Rarma::Compiler::Processor::Evstr
  # process method call
  def process_evstr exp
    Rarma.logger.debug exp.to_s
    results = []
    while exp.count > 0
      processor = self.class.new
      processor.process exp.shift
      results << processor.result.join("")
    end
    @result << results.join(" + ")
    exp
  end
end
