module Rarma::Compiler::Processor::Gasgn
  # process left assignment
  def process_gasgn exp
    Rarma.logger.debug exp.to_s
    left = exp.shift
    right = exp.shift

    processor = self.class.new
    processor.scope = @scope
    processor.process right

    @result << "%s = %s" % [@scope.get_global_variable(left), processor.result.shift]
    exp
  end
end
