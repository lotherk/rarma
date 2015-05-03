module Rarma::Compiler::Processor::Lasgn
  # process left assignment
  def process_lasgn exp
    Rarma.logger.debug exp.to_s
    left = exp.shift
    right = exp.shift

    processor = new_processor
    processor.process right
    scope.set_private_variable(left, processor.result.first)
    @result << "%s = %s" % [scope.get_private_variable(left), processor.result.first]
    exp
  end
end
