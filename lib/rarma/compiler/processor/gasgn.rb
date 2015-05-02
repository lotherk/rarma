module Rarma::Compiler::Processor::Gasgn
  # process left assignment
  def process_gasgn exp
    Rarma.logger.debug exp.to_s
    left = exp.shift.to_s.gsub('$', '')
    right = exp.shift

    processor = new_processor
    processor.process right
    @scope.set_global_variable(left, processor.result.first)
    @result << "%s = %s" % [@scope.get_global_variable(left), processor.result.first]
    exp
  end
end
