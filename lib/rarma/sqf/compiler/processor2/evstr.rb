module Rarma::SQF::Compiler::Processor::Evstr
  def process_evstr exp
    Rarma.logger.debug "#{self} Processing EVSTR #{exp}"
    results = []
    while exp.count > 0
      a = self.class.new
      a.process exp.shift
      results << '%s' % a.script.join("")
    end

    @script << results.join(" + ")
    Rarma.logger.debug "EVSTR: #{a.script}"

    exp
  end
end
