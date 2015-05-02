module Rarma::Compiler::Processor::Lasgn
  # process left assignment
  def process_lasgn exp
    Rarma.logger.debug exp.to_s
    left = exp.shift
    right = exp.shift

    processor = self.class.new
    processor.scope = @scope
    processor.process right

    @result << "%s = %s" % [@scope.set_private_variable(left, processor.result.first), processor.result.first]
    exp
  end
end
