module Rarma::SQF::Compiler::Processor::And
  def process_and exp
    Rarma.logger.debug "#{self} Processing and #{exp}"
    results = []
    while exp.count > 0
      a = self.class.new
      a.process exp.shift
      results << a.script.join("")
    end
    @script << results.join(" and ")
    exp
  end
end
