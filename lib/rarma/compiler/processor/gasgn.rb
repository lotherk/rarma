module Rarma::Compiler::Processor::Gasgn
  # process left assignment
  def process_gasgn exp
    Rarma.logger.debug exp.to_s
    left = exp.shift.to_s.gsub('$', '')
    right = exp.shift

    processor = self.class.new
    processor.scope = @scope
    processor.process right

    @result << "%s = %s" % [@scope.set_global_variable(left, processor.result.first), processor.result.first]
    exp
  end
end
