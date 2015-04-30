module Rarma::Compiler::Processor::Lasgn
  # process left assignment
  def process_lasgn exp
    Rarma.logger.debug exp.to_s
    left = exp.shift
    right = exp.shift

    right_processor = self.class.new
    right_processor.process right
    right_processor.scope = @scope

    @result << { left => right_processor.result.shift }
    exp
  end
end
