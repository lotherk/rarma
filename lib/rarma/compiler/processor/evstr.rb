module Rarma::Compiler::Processor::Evstr
  # process method call
  def process_evstr exp
    Rarma.logger.debug exp.to_s
    results = []
    while exp.count > 0
      processor = self.class.new
      processor.process exp.shift
      results << process.results.join("")
    end
    @results << results.joint(" + ")
    exp
  end
end
