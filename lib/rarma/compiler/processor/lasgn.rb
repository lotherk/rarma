module Rarma::Compiler::Processor::Lasgn
  # process left assignment
  def process_lasgn exp
    Rarma.logger.debug exp.to_s
    left = exp.shift
    right = exp.shift
    Rarma.logger.debug "Processing right #{right}"
    # we need to parse right
    right_processor = self.class.new
    right_processor.process right
    @result << { left => right_processor.result.shift }
    exp
  end
end
