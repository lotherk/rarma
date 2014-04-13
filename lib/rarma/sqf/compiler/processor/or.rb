module Rarma::SQF::Compiler::Processor::Or
  def process_or exp
    Rarma.logger.debug "#{self} Processing or #{exp}"
    results = []
    while exp.count > 0
      a = self.class.new
      a.process exp.shift
      results << a.script.join("")
    end
    @script << results.join(" || ")
    exp
  end
end
