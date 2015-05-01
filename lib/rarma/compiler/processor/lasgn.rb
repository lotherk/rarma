module Rarma::Compiler::Processor::Lasgn
  # process left assignment
  def process_lasgn exp
    Rarma.logger.debug exp.to_s
    left = exp.shift
    right = exp.shift

    right_processor = self.class.new
    right_processor.scope = @scope
    right_processor.process right

    @result << "%s = %s" % [@scope.get_variable(left), right_processor.result.shift]
    exp
  end
end
